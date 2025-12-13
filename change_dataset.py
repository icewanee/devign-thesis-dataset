import argparse
import json
import os
import shutil

def main():
    parser = argparse.ArgumentParser(
        description="Manage dataset processing for Devign."
    )
    parser.add_argument(
        "--raw_path",
        type=str,
        help="Path to the raw data directory, overrides configs.json.",
    )
    parser.add_argument(
        "--raw_file",
        type=str,
        help="Name of the raw data file, overrides configs.json.",
    )
    args = parser.parse_args()

    # Load configuration
    with open("configs.json", "r") as f:
        config = json.load(f)

    # Override config with command-line arguments if provided
    if args.raw_path:
        config["paths"]["raw"] = args.raw_path
        print(f"Overriding 'paths.raw' with: {args.raw_path}")

    if args.raw_file:
        config["files"]["raw"] = args.raw_file
        print(f"Overriding 'files.raw' with: {args.raw_file}")

    # The full path to the raw dataset can be constructed like this:
    raw_dataset_path = os.path.join(config["paths"]["raw"], config["files"]["raw"])
    print(f"\nUsing raw dataset at: {raw_dataset_path}")
    with open("configs.json", "w") as f:
        config = json.dump(config, f)

    for path in ["data/cpg", "data/input", "data/tokens", "data/w2v", "data/model"]:
        if os.path.exists(path):
            shutil.rmtree(path)
        os.mkdir(path)

    print("\nScript finished.")


if __name__ == "__main__":
    main()

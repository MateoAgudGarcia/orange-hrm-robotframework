import subprocess


def main():
    subprocess.run(
        ["robot", "--listener", "RetryFailed:3", "--outputdir", "reports/", "Tests"]
    )


if __name__ == "__main__":
    main()

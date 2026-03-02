import time

TEST_ITERATIONS = 10
ARRAY_SIZE = 6400000


def main():
    print("============ SCALAR RUNTIME ===========")
    for i in range(TEST_ITERATIONS):
        print(f"TEST {i + 1}: {run_test():.3f} s")


def run_test():
    # Create two integer arrays
    a = list(range(ARRAY_SIZE))
    b = list(range(ARRAY_SIZE))

    # Run an experiment
    begin_time = time.time()
    for i in range(ARRAY_SIZE):
        a[i] += b[i]
    end_time = time.time()

    # Return executed time
    return end_time - begin_time


if __name__ == "__main__":
    main()

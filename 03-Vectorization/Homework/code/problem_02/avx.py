import time
import numpy as np

TEST_ITERATIONS = 10
ARRAY_SIZE = 6400000


def main():
    print("============ VECTORIZE RUNTIME ===========")
    for i in range(TEST_ITERATIONS):
        print(f"TEST {i + 1}: {run_test():.3f} s")


def run_test():
    # Create two integer arrays
    a = np.arange(0, ARRAY_SIZE)
    b = np.arange(0, ARRAY_SIZE)

    # Run an experiment
    begin_time = time.time()
    a += b
    end_time = time.time()

    # Return executed time
    return end_time - begin_time


if __name__ == "__main__":
    main()

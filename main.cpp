#include <iostream>
#include <vector>

class FibonacciGenerator {
public:
    FibonacciGenerator(int n) : n_(n) {}

    std::vector<int> generate() {
        std::vector<int> series;
        series.reserve(n_);
        for (int i = 0; i < n_; ++i) {
            if (i <= 1)
                series.push_back(i);
            else
                series.push_back(series[i - 1] + series[i - 2]);
        }
        return series;
    }

private:
    int n_;
};

int main() {
    int n = 10;
    FibonacciGenerator generator(n);
    std::vector<int> series = generator.generate();

    std::cout << "Fibonacci series up to " << n << " terms:" << std::endl;
    for (int num : series) {
        std::cout << num << " ";
    }
    std::cout << std::endl;

    return 0;
}

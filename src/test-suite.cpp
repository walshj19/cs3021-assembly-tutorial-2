#include <iostream>
#include "segment.hpp"
using namespace std;

bool test_p(){
    long i,j;
    long expected, actual;

    i = 8;
    j = 8;
    expected = ((i+j)<<2)-1;
    actual = p(i,j);
    return expected == actual;
}

bool test_q(){
    long g;
    long i;
    long expected;

    i = 8;
    g = 256;
    expected = ((g-i)<<2)-1;
    return expected == q(i);
}

bool test_f(){
    long x;
    long expected;

    expected = 4;
    for(x = expected-1; x > 0; --x){
        expected *= x;
    }
    return expected == f(4);
}

int main(){
    string result;

    result = test_p()?"pass":"fail";
    cout << "p test : " << result << "\n";

    result = test_q()?"pass":"fail";
    cout << "q test : " << result << "\n";

    result = test_f()?"pass":"fail";
    cout << "f test : " << result << "\n";

    return 0;
}

package cb;

import cb.y;

public interface y<T extends y<T>> {
    T A();

    boolean B(T other, float epsilon);

    boolean C();

    boolean D(T other);

    boolean E(T other);

    boolean F(final float margin);

    T G(T v10);

    boolean H(T other);

    T I(float limit);

    boolean J(final float margin);

    T K(T v10);

    float L(T v10);

    T M(T v10, T mulVec);

    boolean a();

    T b(float len);

    boolean c(T other);

    T d(float scalar);

    T e(T v10);

    T f();

    boolean g(T other, float epsilon);

    T h();

    T i(T v10, float scalar);

    boolean j(T other);

    boolean k(T other);

    boolean l(T other, float epsilon);

    T m(T v10);

    T n();

    float o(T v10);

    T p(float min, float max);

    float q(T v10);

    boolean r(T other, float epsilon);

    T s(T target, float alpha);

    T u(float limit2);

    float v();

    boolean w(T other, float epsilon);

    float x();

    T y(float len2);

    T z(T target, float alpha, g interpolator);
}

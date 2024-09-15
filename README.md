# Solutions of Partial Differential Equations by Differential Quadrature Method

This repository contains MATLAB files solving various differential equations using the Differential Quadrature Method (DQM), as demonstrated in my master's thesis, *"Solutions of Partial Differential Equations by Differential Quadrature Method,"* completed at Fatih University, Istanbul, Türkiye, in 2016 under the supervision of Dr. Ali Şahin.

The solutions are based on examples from my thesis and demonstrate the power of DQM for solving both ordinary and partial differential equations (ODEs and PDEs). The thesis provides a comprehensive introduction to the method, followed by several example problems solved using different grid distributions and methods, such as polynomial-based differential quadrature.

## Repository Contents

### MATLAB Files

This repository includes the following projects (examples) solved from my thesis:

1. **Example 2.1**: Solving an initial value problem using uniform and CGL grid distribution for N = 8 and N = 11:
   - y' - 4y = x, y(0) = 1

2. **Example 2.2**: Solving a boundary value problem using PDQ method:
   - y'' + (x + 1)y' - 2y = (1 - x^2)e^{-x}, y(0) = -1, y(1) = 0

3. **Example 2.3**: Solving an initial value problem using PDQ method:
   - y'' - 5y' + 6y = 0, y(0) = 0, y'(0) = -1

4. **Example 2.4**: Solving a fourth-order initial value problem using PDQ method:
   - y^(4) - y = 0, y(0) = 7/2, y'(0) = -4, y''(0) = 5/2, y'''(0) = -2

5. **Example 3.1**: Solving the homogeneous parabolic (heat) equation:
   - u_t = u_xx, u(0,t) = u(1,t) = 0, u(x,0) = -(1/2)sin(3pi*x) + (3/2)sin(pi*x)

6. **Example 3.2**: Solving the non-homogeneous parabolic (heat) equation:
   - u_t = u_xx + 2sin(x), u(0,t) = u(pi,t) = 0, u(x,0) = 3sin(x)

7. **Example 4.1**: Solving the homogeneous advection equation with constant velocity:
   - u_t - v u_x = 0, u(x,0) = x^2

8. **Example 4.2**: Solving the advection-diffusion-reaction equation:
   - u_t + v u_x = D u_xx, u(0,t) = f_0(t), u(1,t) = f_1(t), u(x,0) = u_0(x)

### Full Thesis PDF

The complete thesis PDF is included in this repository for reference and in-depth theoretical explanation.

## About the Thesis

My thesis explores the Differential Quadrature Method (DQM) as a numerical solution method for ordinary and partial differential equations. The DQM expresses the derivative of a function at a grid point as a weighted sum of the function values at all other points, leading to high-accuracy solutions with fewer grid points compared to traditional methods. The thesis focuses on both uniform and Chebyshev-Gauss-Lobatto (CGL) grid distributions and solves a variety of differential equations using Polynomial-based Differential Quadrature (PDQ).

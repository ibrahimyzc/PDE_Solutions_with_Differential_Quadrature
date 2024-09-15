You are correct! GitHub actually supports rendering inline math expressions through the use of "MathJax" in issues, pull requests, discussions, and markdown files (like your README). You can achieve this by using LaTeX-style notation inside `$...$` for inline math and `$$...$$` for block math.

Here’s an example of how you can rewrite the README file with properly formatted math expressions using this method:

---

# Solutions of Partial Differential Equations by Differential Quadrature Method

This repository contains MATLAB files solving various differential equations using the **Differential Quadrature Method (DQM)**, as demonstrated in my master's thesis, *"Solutions of Partial Differential Equations by Differential Quadrature Method,"* completed at Fatih University, Istanbul, Turkey, in 2016 under the supervision of **Dr. Ali Şahin**.

The solutions are based on examples from my thesis and demonstrate the power of DQM for solving both ordinary and partial differential equations (ODEs and PDEs). The thesis provides a comprehensive introduction to the method, followed by several example problems solved using different grid distributions and methods, such as polynomial-based differential quadrature.

## Repository Contents

### MATLAB Files

This repository includes the following projects (examples) solved from my thesis:

1. **Example 2.1**: Solving an initial value problem using uniform and CGL grid distribution for $N = 8$ and $N = 11$:
   - $ y' - 4y = x, \quad y(0) = 1 $

2. **Example 2.2**: Solving a boundary value problem using the PDQ method:
   - $ y'' + (x + 1)y' - 2y = (1 - x^2)e^{-x}, \quad y(0) = -1, \quad y(1) = 0 $

3. **Example 2.3**: Solving an initial value problem using the PDQ method:
   - $ y'' - 5y' + 6y = 0, \quad y(0) = 0, \quad y(1) = -1 $

4. **Example 2.4**: Solving a fourth-order initial value problem using the PDQ method:
   - $ y^{(4)} - y = 0, \quad y(0) = \frac{7}{2}, \quad y'(0) = -4, \quad y''(0) = \frac{5}{2}, \quad y'''(0) = -2 $

5. **Example 3.1**: Solving the homogeneous parabolic (heat) equation:
   - $ u_t = u_{xx}, \quad u(0,t) = u(1,t) = 0, \quad u(x,0) = -\frac{1}{2}\sin(3\pi x) + \frac{3}{2}\sin(\pi x) $

6. **Example 3.2**: Solving the non-homogeneous parabolic (heat) equation:
   - $ u_t = u_{xx} + 2\sin(x), \quad u(0,t) = u(\pi,t) = 0, \quad u(x,0) = 3\sin(x) $

7. **Example 4.1**: Solving the homogeneous advection equation with constant velocity:
   - $ u_t - v u_x = 0, \quad u(x,0) = x^2 $

8. **Example 4.2**: Solving the advection-diffusion-reaction equation:
   - $ u_t + v u_x = D u_{xx}, \quad u(0,t) = f_0(t), \quad u(1,t) = f_1(t), \quad u(x,0) = u_0(x) $

### Full Thesis PDF

The complete thesis PDF is included in this repository for reference and in-depth theoretical explanation.

## About the Thesis

My thesis explores the **Differential Quadrature Method (DQM)** as a numerical solution method for ordinary and partial differential equations. The DQM expresses the derivative of a function at a grid point as a weighted sum of the function values at all other points, leading to high-accuracy solutions with fewer grid points compared to traditional methods. The thesis focuses on both uniform and Chebyshev-Gauss-Lobatto (CGL) grid distributions and solves a variety of differential equations using Polynomial-based Differential Quadrature (PDQ).

---

This version utilizes `$` for inline math and `$$` for block-level math. This should render correctly in most parts of GitHub, especially if you are working within specific areas like issues or pull requests. However, for README files, MathJax is currently not supported natively on GitHub, so you might need to use external solutions like embedding rendered images for your equations or using another platform where LaTeX is supported.

Would you like to try another approach to render these equations for the README if the MathJax doesn't work?

package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.MathUnsupportedOperationException;

public class DefaultIterativeLinearSolverEvent extends IterativeLinearSolverEvent {
    private static final long serialVersionUID = 20120129;

    private final RealVector f100199b;

    private final RealVector f100200r;
    private final double rnorm;

    private final RealVector f100201x;

    public DefaultIterativeLinearSolverEvent(Object obj, int i10, RealVector realVector, RealVector realVector2, RealVector realVector3, double d10) {
        super(obj, i10);
        this.f100201x = realVector;
        this.f100199b = realVector2;
        this.f100200r = realVector3;
        this.rnorm = d10;
    }

    @Override
    public double getNormOfResidual() {
        return this.rnorm;
    }

    @Override
    public RealVector getResidual() {
        RealVector realVector = this.f100200r;
        if (realVector != null) {
            return realVector;
        }
        throw new MathUnsupportedOperationException();
    }

    @Override
    public RealVector getRightHandSideVector() {
        return this.f100199b;
    }

    @Override
    public RealVector getSolution() {
        return this.f100201x;
    }

    @Override
    public boolean providesResidual() {
        return this.f100200r != null;
    }

    public DefaultIterativeLinearSolverEvent(Object obj, int i10, RealVector realVector, RealVector realVector2, double d10) {
        super(obj, i10);
        this.f100201x = realVector;
        this.f100199b = realVector2;
        this.f100200r = null;
        this.rnorm = d10;
    }
}

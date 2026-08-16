package org.apache.commons.math3.dfp;

import org.apache.commons.math3.analysis.RealFieldUnivariateFunction;
import org.apache.commons.math3.analysis.solvers.AllowedSolution;
import org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathUtils;

@Deprecated
public class BracketingNthOrderBrentSolverDFP extends FieldBracketingNthOrderBrentSolver<Dfp> {
    public BracketingNthOrderBrentSolverDFP(Dfp dfp, Dfp dfp2, Dfp dfp3, int i10) throws NumberIsTooSmallException {
        super(dfp, dfp2, dfp3, i10);
    }

    public Dfp solve(int i10, UnivariateDfpFunction univariateDfpFunction, Dfp dfp, Dfp dfp2, AllowedSolution allowedSolution) throws NullArgumentException, NoBracketingException {
        return solve(i10, univariateDfpFunction, dfp, dfp2, dfp.add(dfp2).divide(2), allowedSolution);
    }

    @Override
    public Dfp getAbsoluteAccuracy() {
        return (Dfp) super.getAbsoluteAccuracy();
    }

    @Override
    public Dfp getFunctionValueAccuracy() {
        return (Dfp) super.getFunctionValueAccuracy();
    }

    @Override
    public Dfp getRelativeAccuracy() {
        return (Dfp) super.getRelativeAccuracy();
    }

    public Dfp solve(int i10, final UnivariateDfpFunction univariateDfpFunction, Dfp dfp, Dfp dfp2, Dfp dfp3, AllowedSolution allowedSolution) throws NullArgumentException, NoBracketingException {
        MathUtils.checkNotNull(univariateDfpFunction);
        return solve(i10, new RealFieldUnivariateFunction<Dfp>() {
            @Override
            public Dfp value(Dfp dfp4) {
                return univariateDfpFunction.value(dfp4);
            }
        }, dfp, dfp2, dfp3, allowedSolution);
    }
}

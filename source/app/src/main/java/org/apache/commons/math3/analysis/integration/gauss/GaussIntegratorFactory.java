package org.apache.commons.math3.analysis.integration.gauss;

import java.math.BigDecimal;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.Pair;

public class GaussIntegratorFactory {
    private final BaseRuleFactory<Double> legendre = new LegendreRuleFactory();
    private final BaseRuleFactory<BigDecimal> legendreHighPrecision = new LegendreHighPrecisionRuleFactory();
    private final BaseRuleFactory<Double> hermite = new HermiteRuleFactory();

    private static Pair<double[], double[]> getRule(BaseRuleFactory<? extends Number> baseRuleFactory, int i10) throws NotStrictlyPositiveException, DimensionMismatchException {
        return baseRuleFactory.getRule(i10);
    }

    private static Pair<double[], double[]> transform(Pair<double[], double[]> pair, double d10, double d11) {
        double[] first = pair.getFirst();
        double[] second = pair.getSecond();
        double d12 = (d11 - d10) / 2.0d;
        double d13 = d10 + d12;
        for (int i10 = 0; i10 < first.length; i10++) {
            first[i10] = (first[i10] * d12) + d13;
            second[i10] = second[i10] * d12;
        }
        return new Pair<>(first, second);
    }

    public SymmetricGaussIntegrator hermite(int i10) {
        return new SymmetricGaussIntegrator(getRule(this.hermite, i10));
    }

    public GaussIntegrator legendre(int i10) {
        return new GaussIntegrator(getRule(this.legendre, i10));
    }

    public GaussIntegrator legendreHighPrecision(int i10) throws NotStrictlyPositiveException {
        return new GaussIntegrator(getRule(this.legendreHighPrecision, i10));
    }

    public GaussIntegrator legendre(int i10, double d10, double d11) throws NotStrictlyPositiveException {
        return new GaussIntegrator(transform(getRule(this.legendre, i10), d10, d11));
    }

    public GaussIntegrator legendreHighPrecision(int i10, double d10, double d11) throws NotStrictlyPositiveException {
        return new GaussIntegrator(transform(getRule(this.legendreHighPrecision, i10), d10, d11));
    }
}

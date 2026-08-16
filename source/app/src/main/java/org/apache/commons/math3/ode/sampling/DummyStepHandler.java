package org.apache.commons.math3.ode.sampling;

public class DummyStepHandler implements StepHandler {

    public static class LazyHolder {
        private static final DummyStepHandler INSTANCE = new DummyStepHandler();

        private LazyHolder() {
        }
    }

    public static DummyStepHandler getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override
    public void handleStep(StepInterpolator stepInterpolator, boolean z10) {
    }

    @Override
    public void init(double d10, double[] dArr, double d11) {
    }

    private DummyStepHandler() {
    }
}

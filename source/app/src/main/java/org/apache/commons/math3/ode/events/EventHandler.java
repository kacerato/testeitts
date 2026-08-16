package org.apache.commons.math3.ode.events;

public interface EventHandler {

    public enum Action {
        STOP,
        RESET_STATE,
        RESET_DERIVATIVES,
        CONTINUE
    }

    Action eventOccurred(double d10, double[] dArr, boolean z10);

    double g(double d10, double[] dArr);

    void init(double d10, double[] dArr, double d11);

    void resetState(double d10, double[] dArr);
}

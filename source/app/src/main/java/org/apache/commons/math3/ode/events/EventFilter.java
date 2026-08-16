package org.apache.commons.math3.ode.events;

import java.util.Arrays;
import org.apache.commons.math3.ode.events.EventHandler;

public class EventFilter implements EventHandler {
    private static final int HISTORY_SIZE = 100;
    private double extremeT;
    private final FilterType filter;
    private boolean forward;
    private final EventHandler rawHandler;
    private final Transformer[] transformers = new Transformer[100];
    private final double[] updates = new double[100];

    public EventFilter(EventHandler eventHandler, FilterType filterType) {
        this.rawHandler = eventHandler;
        this.filter = filterType;
    }

    @Override
    public EventHandler.Action eventOccurred(double d10, double[] dArr, boolean z10) {
        return this.rawHandler.eventOccurred(d10, dArr, this.filter.getTriggeredIncreasing());
    }

    @Override
    public double g(double d10, double[] dArr) {
        double g10 = this.rawHandler.g(d10, dArr);
        boolean z10 = this.forward;
        int i10 = 0;
        if (z10) {
            Transformer[] transformerArr = this.transformers;
            int length = transformerArr.length - 1;
            if (this.extremeT >= d10) {
                while (length > 0) {
                    if (this.updates[length] <= d10) {
                        return this.transformers[length].transformed(g10);
                    }
                    length--;
                }
                return this.transformers[0].transformed(g10);
            }
            Transformer transformer = transformerArr[length];
            Transformer selectTransformer = this.filter.selectTransformer(transformer, g10, z10);
            if (selectTransformer != transformer) {
                double[] dArr2 = this.updates;
                System.arraycopy(dArr2, 1, dArr2, 0, length);
                Transformer[] transformerArr2 = this.transformers;
                System.arraycopy(transformerArr2, 1, transformerArr2, 0, length);
                this.updates[length] = this.extremeT;
                this.transformers[length] = selectTransformer;
            }
            this.extremeT = d10;
            return selectTransformer.transformed(g10);
        }
        if (d10 < this.extremeT) {
            Transformer transformer2 = this.transformers[0];
            Transformer selectTransformer2 = this.filter.selectTransformer(transformer2, g10, z10);
            if (selectTransformer2 != transformer2) {
                double[] dArr3 = this.updates;
                System.arraycopy(dArr3, 0, dArr3, 1, dArr3.length - 1);
                Transformer[] transformerArr3 = this.transformers;
                System.arraycopy(transformerArr3, 0, transformerArr3, 1, transformerArr3.length - 1);
                this.updates[0] = this.extremeT;
                this.transformers[0] = selectTransformer2;
            }
            this.extremeT = d10;
            return selectTransformer2.transformed(g10);
        }
        while (true) {
            double[] dArr4 = this.updates;
            if (i10 >= dArr4.length - 1) {
                return this.transformers[dArr4.length - 1].transformed(g10);
            }
            if (d10 <= dArr4[i10]) {
                return this.transformers[i10].transformed(g10);
            }
            i10++;
        }
    }

    @Override
    public void init(double d10, double[] dArr, double d11) {
        this.rawHandler.init(d10, dArr, d11);
        boolean z10 = d11 >= d10;
        this.forward = z10;
        this.extremeT = z10 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        Arrays.fill(this.transformers, Transformer.UNINITIALIZED);
        Arrays.fill(this.updates, this.extremeT);
    }

    @Override
    public void resetState(double d10, double[] dArr) {
        this.rawHandler.resetState(d10, dArr);
    }
}

package org.apache.commons.math3.geometry.spherical.twod;

import java.io.Serializable;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.spherical.oned.Sphere1D;

public class Sphere2D implements Serializable, Space {
    private static final long serialVersionUID = 20131218;

    public static class LazyHolder {
        private static final Sphere2D INSTANCE = new Sphere2D();

        private LazyHolder() {
        }
    }

    public static Sphere2D getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override
    public int getDimension() {
        return 2;
    }

    private Sphere2D() {
    }

    @Override
    public Sphere1D getSubSpace() {
        return Sphere1D.getInstance();
    }
}

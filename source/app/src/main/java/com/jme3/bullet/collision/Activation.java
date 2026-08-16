package com.jme3.bullet.collision;

import java.util.logging.Logger;

public final class Activation {
    public static final int active = 1;
    public static final int error = 5;
    public static final int exempt = 4;
    public static final int firstValue = 1;
    public static final int lastValue = 5;
    public static final Logger logger = Logger.getLogger(Activation.class.getName());
    public static final int sleeping = 2;
    public static final int wantsDeactivation = 3;

    private Activation() {
    }
}

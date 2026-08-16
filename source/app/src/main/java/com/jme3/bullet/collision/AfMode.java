package com.jme3.bullet.collision;

import java.util.logging.Logger;

public final class AfMode {
    public static final int basic = 1;
    public static final int either = 3;
    public static final Logger logger = Logger.getLogger(AfMode.class.getName());
    public static final int none = 0;
    public static final int rolling = 2;

    private AfMode() {
    }
}

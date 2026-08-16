package com.jme3.bullet.collision;

import java.util.logging.Logger;

public final class PcoType {
    public static final int collider = 64;
    public static final int fluid = 16;
    public static final int generic = 1;
    public static final int ghost = 4;
    public static final Logger logger = Logger.getLogger(PcoType.class.getName());
    public static final int rigid = 2;
    public static final int soft = 8;
    public static final int user = 32;

    private PcoType() {
    }
}

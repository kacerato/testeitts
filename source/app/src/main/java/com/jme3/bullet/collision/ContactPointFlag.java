package com.jme3.bullet.collision;

import java.util.logging.Logger;

public final class ContactPointFlag {
    public static final int CONTACT_STIFFNESS_DAMPING = 8;
    public static final int FRICTION_ANCHOR = 16;
    public static final int HAS_CONTACT_CFM = 2;
    public static final int HAS_CONTACT_ERP = 4;
    public static final int LATERAL_FRICTION = 1;
    public static final int PREDICTIVE = 64;
    public static final int SWAPPED = 32;
    public static final Logger logger = Logger.getLogger(ContactPointFlag.class.getName());

    private ContactPointFlag() {
    }
}

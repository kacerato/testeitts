package com.jme3.system;

import com.jme3.util.res.Resources;
import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class JmeVersion {
    public static final String BRANCH_NAME;
    public static final String BUILD_DATE;
    public static final String FULL_NAME;
    public static final String GIT_HASH;
    public static final String GIT_SHORT_HASH;
    public static final String GIT_TAG;
    public static final String VERSION_FULL;
    public static final String VERSION_NUMBER;
    public static final String VERSION_TAG;
    private static final Logger logger = Logger.getLogger(JmeVersion.class.getName());
    private static final Properties props;

    static {
        Properties properties = new Properties();
        props = properties;
        try {
            properties.load(Resources.getResourceAsStream("version.properties", JmeVersion.class));
        } catch (IOException | NullPointerException e10) {
            logger.log(Level.WARNING, "Unable to read version info!", e10);
        }
        Properties properties2 = props;
        BUILD_DATE = properties2.getProperty("build.date", "1900-01-01");
        BRANCH_NAME = properties2.getProperty("git.branch", "unknown");
        GIT_HASH = properties2.getProperty("git.hash", "");
        GIT_SHORT_HASH = properties2.getProperty("git.hash.short", "");
        GIT_TAG = properties2.getProperty("git.tag", "");
        VERSION_NUMBER = properties2.getProperty("version.number", "");
        VERSION_TAG = properties2.getProperty("version.tag", "");
        VERSION_FULL = properties2.getProperty("version.full", "");
        FULL_NAME = properties2.getProperty("name.full", "jMonkeyEngine (unknown version)");
    }

    private JmeVersion() {
    }
}

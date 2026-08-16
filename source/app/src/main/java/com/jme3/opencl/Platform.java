package com.jme3.opencl;

import java.util.Collection;
import java.util.List;

public interface Platform {
    List<? extends Device> getDevices();

    Collection<? extends String> getExtensions();

    String getName();

    String getProfile();

    String getVendor();

    String getVersion();

    int getVersionMajor();

    int getVersionMinor();

    boolean hasExtension(String str);

    boolean hasOpenGLInterop();

    boolean isEmbeddedProfile();

    boolean isFullProfile();
}

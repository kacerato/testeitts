package com.jme3.opencl;

import java.util.List;

public interface PlatformChooser {
    List<? extends Device> chooseDevices(List<? extends Platform> list);
}

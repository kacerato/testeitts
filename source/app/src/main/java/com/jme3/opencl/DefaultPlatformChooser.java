package com.jme3.opencl;

import com.jme3.opencl.Device;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

public class DefaultPlatformChooser implements PlatformChooser {
    private static final Logger LOG = Logger.getLogger(DefaultPlatformChooser.class.getName());

    @Override
    public List<? extends Device> chooseDevices(List<? extends Platform> list) {
        ArrayList arrayList = new ArrayList();
        for (Platform platform : list) {
            if (platform.hasOpenGLInterop()) {
                for (Device device : platform.getDevices()) {
                    if (device.hasOpenGLInterop() && device.getDeviceType() == Device.DeviceType.GPU) {
                        arrayList.add(device);
                    }
                }
                if (!arrayList.isEmpty()) {
                    return arrayList;
                }
            }
        }
        for (Platform platform2 : list) {
            if (platform2.hasOpenGLInterop()) {
                for (Device device2 : platform2.getDevices()) {
                    if (device2.hasOpenGLInterop()) {
                        arrayList.add(device2);
                    }
                }
                if (!arrayList.isEmpty()) {
                    return arrayList;
                }
            }
        }
        LOG.warning("No device with OpenCL-OpenGL-interop found, try without");
        Iterator<? extends Platform> it = list.iterator();
        while (it.hasNext()) {
            Iterator<? extends Device> it2 = it.next().getDevices().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        return arrayList;
    }
}

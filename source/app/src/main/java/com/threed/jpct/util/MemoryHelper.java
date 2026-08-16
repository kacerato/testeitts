package com.threed.jpct.util;

import com.threed.jpct.Logger;

public class MemoryHelper {
    public static void compact() {
        Logger.log("Memory usage before compacting: " + getMem());
        System.gc();
        System.runFinalization();
        System.gc();
        try {
            Thread.sleep(150L);
        } catch (Exception unused) {
        }
        Logger.log("Memory usage after compacting: " + getMem());
    }

    private static String getMem() {
        return String.valueOf((Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()) / 1024) + " KB used out of " + (Runtime.getRuntime().totalMemory() / 1024) + " KB. Max. memory available to the VM is " + (Runtime.getRuntime().maxMemory() / 1024) + " KB.";
    }

    public static void printMemory() {
        Logger.log("Memory usage: " + getMem());
    }
}

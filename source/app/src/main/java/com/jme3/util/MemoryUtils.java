package com.jme3.util;

import java.lang.management.ManagementFactory;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.management.JMException;
import javax.management.MBeanServer;
import javax.management.MalformedObjectNameException;
import javax.management.ObjectName;

public class MemoryUtils {
    private static ObjectName directPool;
    private static MBeanServer mbeans = ManagementFactory.getPlatformMBeanServer();

    static {
        try {
            directPool = new ObjectName("java.nio:type=BufferPool,name=direct");
        } catch (MalformedObjectNameException e10) {
            Logger.getLogger(MemoryUtils.class.getName()).log(Level.SEVERE, "Error creating direct pool ObjectName", e10);
        }
    }

    private MemoryUtils() {
    }

    public static long getDirectMemoryCount() {
        try {
            Long l10 = (Long) mbeans.getAttribute(directPool, "Count");
            if (l10 == null) {
                return -1L;
            }
            return l10.longValue();
        } catch (JMException e10) {
            Logger.getLogger(MemoryUtils.class.getName()).log(Level.SEVERE, "Error retrieving Count", e10);
            return -1L;
        }
    }

    public static long getDirectMemoryTotalCapacity() {
        try {
            Long l10 = (Long) mbeans.getAttribute(directPool, "TotalCapacity");
            if (l10 == null) {
                return -1L;
            }
            return l10.longValue();
        } catch (JMException e10) {
            Logger.getLogger(MemoryUtils.class.getName()).log(Level.SEVERE, "Error retrieving TotalCapacity", e10);
            return -1L;
        }
    }

    public static long getDirectMemoryUsage() {
        try {
            Long l10 = (Long) mbeans.getAttribute(directPool, "MemoryUsed");
            if (l10 == null) {
                return -1L;
            }
            return l10.longValue();
        } catch (JMException e10) {
            Logger.getLogger(MemoryUtils.class.getName()).log(Level.SEVERE, "Error retrieving MemoryUsed", e10);
            return -1L;
        }
    }
}

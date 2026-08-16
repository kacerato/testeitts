package com.google.common.util.concurrent;

import java.util.concurrent.locks.LockSupport;
import javax.annotation.CheckForNull;

@A
public final class C12616i0 {

    public static final long f67474a = 2147483647999999999L;

    public static void a(@CheckForNull Object obj, long j10) {
        LockSupport.parkNanos(obj, Math.min(j10, f67474a));
    }
}

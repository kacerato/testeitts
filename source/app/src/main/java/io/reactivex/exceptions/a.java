package io.reactivex.exceptions;

import Ce.f;
import io.reactivex.internal.util.ExceptionHelper;

public final class a {
    public a() {
        throw new IllegalStateException("No instances!");
    }

    @f
    public static RuntimeException a(@f Throwable th2) {
        throw ExceptionHelper.f(th2);
    }

    public static void b(@f Throwable th2) {
        if (th2 instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th2);
        }
        if (th2 instanceof ThreadDeath) {
            throw ((ThreadDeath) th2);
        }
        if (th2 instanceof LinkageError) {
            throw ((LinkageError) th2);
        }
    }
}

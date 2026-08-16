package Bf;

import org.jetbrains.annotations.NotNull;

public final class c implements yf.f<Object> {

    @NotNull
    public static final c f1718b = new c();

    @Override
    @NotNull
    public yf.j getContext() {
        throw new IllegalStateException("This continuation is already complete");
    }

    @Override
    public void resumeWith(@NotNull Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }

    @NotNull
    public String toString() {
        return "This continuation is already complete";
    }
}

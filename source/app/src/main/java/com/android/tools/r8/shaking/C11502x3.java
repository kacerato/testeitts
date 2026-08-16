package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.origin.Origin;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;

public final class C11502x3 implements InterfaceC11485w3 {

    public final byte[] f57970a;

    public final Origin f57971b;

    public C11502x3(Origin origin, InputStream inputStream) {
        this.f57970a = AbstractC6706c8.a(inputStream);
        this.f57971b = origin;
    }

    @Override
    public final Path a() {
        return null;
    }

    @Override
    public final String get() {
        return new String(this.f57970a, StandardCharsets.UTF_8);
    }

    @Override
    public final String getName() {
        return this.f57971b.toString();
    }

    @Override
    public final Origin getOrigin() {
        return this.f57971b;
    }
}

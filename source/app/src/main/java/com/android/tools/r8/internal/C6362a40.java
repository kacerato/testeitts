package com.android.tools.r8.internal;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.origin.Origin;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Set;

public final class C6362a40 implements ProgramResource {

    public static final boolean f46407e = true;

    public final Origin f46408a;

    public final ProgramResource.Kind f46409b;

    public byte[] f46410c;

    public final Set f46411d;

    public C6362a40(Origin origin, ProgramResource.Kind kind, byte[] bArr, Set set) {
        if (!f46407e && bArr == null) {
            throw new AssertionError();
        }
        this.f46408a = origin;
        this.f46409b = kind;
        this.f46410c = bArr;
        this.f46411d = set;
    }

    @Override
    public final InputStream getByteStream() {
        return new ByteArrayInputStream(getBytes());
    }

    @Override
    public final byte[] getBytes() {
        if (!f46407e && this.f46410c == null) {
            throw new AssertionError();
        }
        byte[] bArr = this.f46410c;
        this.f46410c = null;
        return bArr;
    }

    @Override
    public final Set getClassDescriptors() {
        return this.f46411d;
    }

    @Override
    public final ProgramResource.Kind getKind() {
        return this.f46409b;
    }

    @Override
    public final Origin getOrigin() {
        return this.f46408a;
    }
}

package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.nio.ByteBuffer;

public class C11710j implements C.j<ByteBuffer, Bitmap> {

    public final q f59395a;

    public C11710j(q qVar) {
        this.f59395a = qVar;
    }

    @Override
    public com.bumptech.glide.load.engine.t<Bitmap> a(@NonNull ByteBuffer byteBuffer, int i10, int i11, @NonNull C.h hVar) throws IOException {
        return this.f59395a.f(Y.a.f(byteBuffer), i10, i11, hVar);
    }

    @Override
    public boolean b(@NonNull ByteBuffer byteBuffer, @NonNull C.h hVar) {
        return this.f59395a.q(byteBuffer);
    }
}

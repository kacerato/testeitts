package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.nio.ByteBuffer;

@RequiresApi(api = 28)
public final class l implements C.j<ByteBuffer, Bitmap> {

    public final C11706f f59396a = new C11706f();

    @Override
    @Nullable
    public com.bumptech.glide.load.engine.t<Bitmap> a(@NonNull ByteBuffer byteBuffer, int i10, int i11, @NonNull C.h hVar) throws IOException {
        ImageDecoder.Source createSource;
        createSource = ImageDecoder.createSource(byteBuffer);
        return this.f59396a.c(createSource, i10, i11, hVar);
    }

    @Override
    public boolean b(@NonNull ByteBuffer byteBuffer, @NonNull C.h hVar) throws IOException {
        return true;
    }
}

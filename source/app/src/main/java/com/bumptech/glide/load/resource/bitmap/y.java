package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.io.InputStream;

@RequiresApi(api = 28)
public final class y implements C.j<InputStream, Bitmap> {

    public final C11706f f59460a = new C11706f();

    @Override
    @Nullable
    public com.bumptech.glide.load.engine.t<Bitmap> a(@NonNull InputStream inputStream, int i10, int i11, @NonNull C.h hVar) throws IOException {
        ImageDecoder.Source createSource;
        createSource = ImageDecoder.createSource(Y.a.b(inputStream));
        return this.f59460a.c(createSource, i10, i11, hVar);
    }

    @Override
    public boolean b(@NonNull InputStream inputStream, @NonNull C.h hVar) throws IOException {
        return true;
    }
}

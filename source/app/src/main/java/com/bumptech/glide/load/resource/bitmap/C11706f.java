package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.util.Log;
import androidx.annotation.RequiresApi;
import java.io.IOException;

@RequiresApi(api = 28)
public final class C11706f extends L.i<Bitmap> {

    public static final String f59391d = "BitmapImageDecoder";

    public final F.e f59392c = new F.f();

    @Override
    public com.bumptech.glide.load.engine.t<Bitmap> d(ImageDecoder.Source source, int i10, int i11, ImageDecoder$OnHeaderDecodedListener imageDecoder$OnHeaderDecodedListener) throws IOException {
        Bitmap decodeBitmap;
        decodeBitmap = ImageDecoder.decodeBitmap(source, imageDecoder$OnHeaderDecodedListener);
        if (Log.isLoggable(f59391d, 2)) {
            Log.v(f59391d, "Decoded [" + decodeBitmap.getWidth() + "x" + decodeBitmap.getHeight() + "] for [" + i10 + "x" + i11 + "]");
        }
        return new C11707g(decodeBitmap, this.f59392c);
    }
}

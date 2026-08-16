package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

@RequiresApi(27)
public final class t implements ImageHeaderParser {
    @Override
    public int a(@NonNull InputStream inputStream, @NonNull F.b bVar) throws IOException {
        int attributeInt = new ExifInterface(inputStream).getAttributeInt("Orientation", 1);
        if (attributeInt == 0) {
            return -1;
        }
        return attributeInt;
    }

    @Override
    @NonNull
    public ImageHeaderParser.ImageType b(@NonNull InputStream inputStream) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override
    @NonNull
    public ImageHeaderParser.ImageType c(@NonNull ByteBuffer byteBuffer) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override
    public int d(@NonNull ByteBuffer byteBuffer, @NonNull F.b bVar) throws IOException {
        return a(Y.a.f(byteBuffer), bVar);
    }
}

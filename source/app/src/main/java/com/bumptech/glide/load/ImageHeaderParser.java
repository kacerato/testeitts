package com.bumptech.glide.load;

import F.b;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public interface ImageHeaderParser {

    public static final int f59077a = -1;

    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);

        private final boolean hasAlpha;

        ImageType(boolean z10) {
            this.hasAlpha = z10;
        }

        public boolean hasAlpha() {
            return this.hasAlpha;
        }
    }

    int a(@NonNull InputStream inputStream, @NonNull b bVar) throws IOException;

    @NonNull
    ImageType b(@NonNull InputStream inputStream) throws IOException;

    @NonNull
    ImageType c(@NonNull ByteBuffer byteBuffer) throws IOException;

    int d(@NonNull ByteBuffer byteBuffer, @NonNull b bVar) throws IOException;
}

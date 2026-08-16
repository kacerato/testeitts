package androidx.core.graphics;

import Mf.q;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.M;
import nf.P0;

public final class ImageDecoderKt {
    public static final Bitmap decodeBitmap(ImageDecoder.Source source, final q<? super ImageDecoder, ? super ImageDecoder.ImageInfo, ? super ImageDecoder.Source, P0> action) {
        Bitmap decodeBitmap;
        M.p(source, "<this>");
        M.p(action, "action");
        decodeBitmap = ImageDecoder.decodeBitmap(source, a.a(new ImageDecoder$OnHeaderDecodedListener() {
            public final void onHeaderDecoded(ImageDecoder decoder, ImageDecoder.ImageInfo info, ImageDecoder.Source source2) {
                M.p(decoder, "decoder");
                M.p(info, "info");
                M.p(source2, "source");
                action.n(decoder, info, source2);
            }
        }));
        M.o(decodeBitmap, "crossinline action: Imag\u2026ction(info, source)\n    }");
        return decodeBitmap;
    }

    public static final Drawable decodeDrawable(ImageDecoder.Source source, final q<? super ImageDecoder, ? super ImageDecoder.ImageInfo, ? super ImageDecoder.Source, P0> action) {
        Drawable decodeDrawable;
        M.p(source, "<this>");
        M.p(action, "action");
        decodeDrawable = ImageDecoder.decodeDrawable(source, a.a(new ImageDecoder$OnHeaderDecodedListener() {
            public final void onHeaderDecoded(ImageDecoder decoder, ImageDecoder.ImageInfo info, ImageDecoder.Source source2) {
                M.p(decoder, "decoder");
                M.p(info, "info");
                M.p(source2, "source");
                action.n(decoder, info, source2);
            }
        }));
        M.o(decodeDrawable, "crossinline action: Imag\u2026ction(info, source)\n    }");
        return decodeDrawable;
    }
}

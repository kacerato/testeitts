package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.net.Uri;
import kotlin.jvm.internal.M;

public final class IconKt {
    public static final Icon toAdaptiveIcon(Bitmap bitmap) {
        M.p(bitmap, "<this>");
        Icon createWithAdaptiveBitmap = Icon.createWithAdaptiveBitmap(bitmap);
        M.o(createWithAdaptiveBitmap, "createWithAdaptiveBitmap(this)");
        return createWithAdaptiveBitmap;
    }

    public static final Icon toIcon(Bitmap bitmap) {
        M.p(bitmap, "<this>");
        Icon createWithBitmap = Icon.createWithBitmap(bitmap);
        M.o(createWithBitmap, "createWithBitmap(this)");
        return createWithBitmap;
    }

    public static final Icon toIcon(Uri uri) {
        M.p(uri, "<this>");
        Icon createWithContentUri = Icon.createWithContentUri(uri);
        M.o(createWithContentUri, "createWithContentUri(this)");
        return createWithContentUri;
    }

    public static final Icon toIcon(byte[] bArr) {
        M.p(bArr, "<this>");
        Icon createWithData = Icon.createWithData(bArr, 0, bArr.length);
        M.o(createWithData, "createWithData(this, 0, size)");
        return createWithData;
    }
}

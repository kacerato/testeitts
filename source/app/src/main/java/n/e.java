package N;

import C.h;
import C.j;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.t;
import java.util.List;

public class e implements j<Uri, Drawable> {

    public static final String f15452b = "android";

    public static final int f15453c = 0;

    public static final int f15454d = 2;

    public static final int f15455e = 0;

    public static final int f15456f = 1;

    public static final int f15457g = 1;

    public static final int f15458h = 0;

    public final Context f15459a;

    public e(Context context) {
        this.f15459a = context.getApplicationContext();
    }

    @Override
    @Nullable
    public t<Drawable> a(@NonNull Uri uri, int i10, int i11, @NonNull h hVar) {
        Context d10 = d(uri, uri.getAuthority());
        return d.c(a.b(this.f15459a, d10, g(d10, uri)));
    }

    @NonNull
    public final Context d(Uri uri, String str) {
        if (str.equals(this.f15459a.getPackageName())) {
            return this.f15459a;
        }
        try {
            return this.f15459a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e10) {
            if (str.contains(this.f15459a.getPackageName())) {
                return this.f15459a;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + ((Object) uri), e10);
        }
    }

    @DrawableRes
    public final int e(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + ((Object) uri), e10);
        }
    }

    @DrawableRes
    public final int f(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        if (identifier == 0) {
            identifier = Resources.getSystem().getIdentifier(str2, str, "android");
        }
        if (identifier != 0) {
            return identifier;
        }
        throw new IllegalArgumentException("Failed to find resource id for: " + ((Object) uri));
    }

    @DrawableRes
    public final int g(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return f(context, uri);
        }
        if (pathSegments.size() == 1) {
            return e(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: " + ((Object) uri));
    }

    @Override
    public boolean b(@NonNull Uri uri, @NonNull h hVar) {
        return uri.getScheme().equals(ContentResolver.SCHEME_ANDROID_RESOURCE);
    }
}

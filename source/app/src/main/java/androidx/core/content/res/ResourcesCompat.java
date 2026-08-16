package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

public final class ResourcesCompat {
    public static final int ID_NULL = 0;
    private static final String TAG = "ResourcesCompat";
    private static final ThreadLocal<TypedValue> sTempTypedValue = new ThreadLocal<>();
    private static final WeakHashMap<ColorStateListCacheKey, SparseArray<ColorStateListCacheEntry>> sColorStateCaches = new WeakHashMap<>(0);
    private static final Object sColorStateCacheLock = new Object();

    public static class Api15Impl {
        private Api15Impl() {
        }

        public static Drawable getDrawableForDensity(Resources resources, int i10, int i11) {
            return resources.getDrawableForDensity(i10, i11);
        }
    }

    public static class Api21Impl {
        private Api21Impl() {
        }

        public static Drawable getDrawable(Resources resources, int i10, Resources.Theme theme) {
            return resources.getDrawable(i10, theme);
        }

        public static Drawable getDrawableForDensity(Resources resources, int i10, int i11, Resources.Theme theme) {
            return resources.getDrawableForDensity(i10, i11, theme);
        }
    }

    public static class Api23Impl {
        private Api23Impl() {
        }

        public static int getColor(Resources resources, int i10, Resources.Theme theme) {
            return resources.getColor(i10, theme);
        }

        public static ColorStateList getColorStateList(Resources resources, int i10, Resources.Theme theme) {
            return resources.getColorStateList(i10, theme);
        }
    }

    public static class Api29Impl {
        private Api29Impl() {
        }

        public static float getFloat(Resources resources, int i10) {
            return resources.getFloat(i10);
        }
    }

    public static class ColorStateListCacheEntry {
        final Configuration mConfiguration;
        final int mThemeHash;
        final ColorStateList mValue;

        public ColorStateListCacheEntry(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            this.mValue = colorStateList;
            this.mConfiguration = configuration;
            this.mThemeHash = theme == null ? 0 : theme.hashCode();
        }
    }

    public static final class ColorStateListCacheKey {
        final Resources mResources;
        final Resources.Theme mTheme;

        public ColorStateListCacheKey(Resources resources, Resources.Theme theme) {
            this.mResources = resources;
            this.mTheme = theme;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ColorStateListCacheKey.class != obj.getClass()) {
                return false;
            }
            ColorStateListCacheKey colorStateListCacheKey = (ColorStateListCacheKey) obj;
            return this.mResources.equals(colorStateListCacheKey.mResources) && ObjectsCompat.equals(this.mTheme, colorStateListCacheKey.mTheme);
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.mResources, this.mTheme);
        }
    }

    public static abstract class FontCallback {
        public static Handler getHandler(Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        public final void callbackFailAsync(final int i10, Handler handler) {
            getHandler(handler).post(new Runnable() {
                @Override
                public final void run() {
                    ResourcesCompat.FontCallback.this.lambda$callbackFailAsync$1(i10);
                }
            });
        }

        public final void callbackSuccessAsync(final Typeface typeface, Handler handler) {
            getHandler(handler).post(new Runnable() {
                @Override
                public final void run() {
                    ResourcesCompat.FontCallback.this.lambda$callbackSuccessAsync$0(typeface);
                }
            });
        }

        public abstract void lambda$callbackFailAsync$1(int i10);

        public abstract void lambda$callbackSuccessAsync$0(Typeface typeface);
    }

    public static final class ThemeCompat {

        public static class Api23Impl {
            private static Method sRebaseMethod;
            private static boolean sRebaseMethodFetched;
            private static final Object sRebaseMethodLock = new Object();

            private Api23Impl() {
            }

            public static void rebase(Resources.Theme theme) {
                synchronized (sRebaseMethodLock) {
                    if (!sRebaseMethodFetched) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", null);
                            sRebaseMethod = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e10) {
                            Log.i(ResourcesCompat.TAG, "Failed to retrieve rebase() method", e10);
                        }
                        sRebaseMethodFetched = true;
                    }
                    Method method = sRebaseMethod;
                    if (method != null) {
                        try {
                            method.invoke(theme, null);
                        } catch (IllegalAccessException | InvocationTargetException e11) {
                            Log.i(ResourcesCompat.TAG, "Failed to invoke rebase() method via reflection", e11);
                            sRebaseMethod = null;
                        }
                    }
                }
            }
        }

        public static class Api29Impl {
            private Api29Impl() {
            }

            public static void rebase(Resources.Theme theme) {
                theme.rebase();
            }
        }

        private ThemeCompat() {
        }

        public static void rebase(Resources.Theme theme) {
            if (Build.VERSION.SDK_INT >= 29) {
                Api29Impl.rebase(theme);
            } else {
                Api23Impl.rebase(theme);
            }
        }
    }

    private ResourcesCompat() {
    }

    private static void addColorStateListToCache(ColorStateListCacheKey colorStateListCacheKey, int i10, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (sColorStateCacheLock) {
            try {
                WeakHashMap<ColorStateListCacheKey, SparseArray<ColorStateListCacheEntry>> weakHashMap = sColorStateCaches;
                SparseArray<ColorStateListCacheEntry> sparseArray = weakHashMap.get(colorStateListCacheKey);
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                    weakHashMap.put(colorStateListCacheKey, sparseArray);
                }
                sparseArray.append(i10, new ColorStateListCacheEntry(colorStateList, colorStateListCacheKey.mResources.getConfiguration(), theme));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void clearCachesForTheme(Resources.Theme theme) {
        synchronized (sColorStateCacheLock) {
            try {
                Iterator<ColorStateListCacheKey> it = sColorStateCaches.o().iterator();
                while (it.hasNext()) {
                    ColorStateListCacheKey next = it.next();
                    if (next != null && theme.equals(next.mTheme)) {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x003c, code lost:
    
        if (r2.mThemeHash == r5.hashCode()) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ColorStateList getCachedColorStateList(ColorStateListCacheKey colorStateListCacheKey, int i10) {
        ColorStateListCacheEntry colorStateListCacheEntry;
        synchronized (sColorStateCacheLock) {
            try {
                SparseArray<ColorStateListCacheEntry> sparseArray = sColorStateCaches.get(colorStateListCacheKey);
                if (sparseArray != null && sparseArray.size() > 0 && (colorStateListCacheEntry = sparseArray.get(i10)) != null) {
                    if (colorStateListCacheEntry.mConfiguration.equals(colorStateListCacheKey.mResources.getConfiguration())) {
                        Resources.Theme theme = colorStateListCacheKey.mTheme;
                        if (theme == null) {
                            if (colorStateListCacheEntry.mThemeHash != 0) {
                            }
                            return colorStateListCacheEntry.mValue;
                        }
                        if (theme != null) {
                        }
                    }
                    sparseArray.remove(i10);
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Typeface getCachedFont(Context context, int i10) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i10, new TypedValue(), 0, null, null, false, true);
    }

    public static int getColor(Resources resources, int i10, Resources.Theme theme) throws Resources.NotFoundException {
        return Api23Impl.getColor(resources, i10, theme);
    }

    public static ColorStateList getColorStateList(Resources resources, int i10, Resources.Theme theme) throws Resources.NotFoundException {
        ColorStateListCacheKey colorStateListCacheKey = new ColorStateListCacheKey(resources, theme);
        ColorStateList cachedColorStateList = getCachedColorStateList(colorStateListCacheKey, i10);
        if (cachedColorStateList != null) {
            return cachedColorStateList;
        }
        ColorStateList inflateColorStateList = inflateColorStateList(resources, i10, theme);
        if (inflateColorStateList == null) {
            return Api23Impl.getColorStateList(resources, i10, theme);
        }
        addColorStateListToCache(colorStateListCacheKey, i10, inflateColorStateList, theme);
        return inflateColorStateList;
    }

    public static Drawable getDrawable(Resources resources, int i10, Resources.Theme theme) throws Resources.NotFoundException {
        return Api21Impl.getDrawable(resources, i10, theme);
    }

    public static Drawable getDrawableForDensity(Resources resources, int i10, int i11, Resources.Theme theme) throws Resources.NotFoundException {
        return Api21Impl.getDrawableForDensity(resources, i10, i11, theme);
    }

    public static float getFloat(Resources resources, int i10) {
        if (Build.VERSION.SDK_INT >= 29) {
            return Api29Impl.getFloat(resources, i10);
        }
        TypedValue typedValue = getTypedValue();
        resources.getValue(i10, typedValue, true);
        if (typedValue.type == 4) {
            return typedValue.getFloat();
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i10) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
    }

    public static Typeface getFont(Context context, int i10) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i10, new TypedValue(), 0, null, null, false, false);
    }

    private static TypedValue getTypedValue() {
        ThreadLocal<TypedValue> threadLocal = sTempTypedValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    private static ColorStateList inflateColorStateList(Resources resources, int i10, Resources.Theme theme) {
        if (isColorInt(resources, i10)) {
            return null;
        }
        try {
            return ColorStateListInflaterCompat.createFromXml(resources, resources.getXml(i10), theme);
        } catch (Exception e10) {
            Log.w(TAG, "Failed to inflate ColorStateList, leaving it to the framework", e10);
            return null;
        }
    }

    private static boolean isColorInt(Resources resources, int i10) {
        TypedValue typedValue = getTypedValue();
        resources.getValue(i10, typedValue, true);
        int i11 = typedValue.type;
        return i11 >= 28 && i11 <= 31;
    }

    private static Typeface loadFont(Context context, int i10, TypedValue typedValue, int i11, FontCallback fontCallback, Handler handler, boolean z10, boolean z11) {
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        Typeface loadFont = loadFont(context, resources, typedValue, i10, i11, fontCallback, handler, z10, z11);
        if (loadFont != null || fontCallback != null || z11) {
            return loadFont;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i10) + " could not be retrieved.");
    }

    public static void getFont(Context context, int i10, FontCallback fontCallback, Handler handler) throws Resources.NotFoundException {
        Preconditions.checkNotNull(fontCallback);
        if (context.isRestricted()) {
            fontCallback.callbackFailAsync(-4, handler);
        } else {
            loadFont(context, i10, new TypedValue(), 0, fontCallback, handler, false, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Typeface loadFont(Context context, Resources resources, TypedValue typedValue, int i10, int i11, FontCallback fontCallback, Handler handler, boolean z10, boolean z11) {
        CharSequence charSequence = typedValue.string;
        if (charSequence != null) {
            String charSequence2 = charSequence.toString();
            int i12 = 0;
            if (!charSequence2.startsWith("res/")) {
                if (fontCallback != null) {
                    fontCallback.callbackFailAsync(-3, handler);
                }
                return null;
            }
            Typeface findFromCache = TypefaceCompat.findFromCache(resources, i10, charSequence2, typedValue.assetCookie, i11);
            if (findFromCache != null) {
                if (fontCallback != null) {
                    fontCallback.callbackSuccessAsync(findFromCache, handler);
                }
                return findFromCache;
            }
            if (z11) {
                return null;
            }
            try {
            } catch (IOException e10) {
                e = e10;
                i12 = -3;
            } catch (XmlPullParserException e11) {
                e = e11;
                i12 = -3;
            }
            try {
                if (charSequence2.toLowerCase().endsWith(".xml")) {
                    FontResourcesParserCompat.FamilyResourceEntry parse = FontResourcesParserCompat.parse(resources.getXml(i10), resources);
                    if (parse == null) {
                        Log.e(TAG, "Failed to find font-family tag");
                        if (fontCallback != null) {
                            fontCallback.callbackFailAsync(-3, handler);
                        }
                        return null;
                    }
                    return TypefaceCompat.createFromResourcesFamilyXml(context, parse, resources, i10, charSequence2, typedValue.assetCookie, i11, fontCallback, handler, z10);
                }
                Typeface createFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, i10, charSequence2, typedValue.assetCookie, i11);
                if (fontCallback != null) {
                    if (createFromResourcesFontFile != null) {
                        fontCallback.callbackSuccessAsync(createFromResourcesFontFile, handler);
                    } else {
                        fontCallback.callbackFailAsync(-3, handler);
                    }
                }
                return createFromResourcesFontFile;
            } catch (IOException e12) {
                e = e12;
                Log.e(TAG, "Failed to read xml resource " + charSequence2, e);
                if (fontCallback != null) {
                    return null;
                }
                fontCallback.callbackFailAsync(i12, handler);
                return null;
            } catch (XmlPullParserException e13) {
                e = e13;
                Log.e(TAG, "Failed to parse xml resource " + charSequence2, e);
                if (fontCallback != null) {
                }
            }
        } else {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i10) + "\" (" + Integer.toHexString(i10) + ") is not a Font: " + ((Object) typedValue));
        }
    }

    public static Typeface getFont(Context context, int i10, TypedValue typedValue, int i11, FontCallback fontCallback) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i10, typedValue, i11, fontCallback, null, true, false);
    }
}

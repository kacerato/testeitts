package com.bumptech.glide;

import D.k;
import D.m;
import I.d;
import J.a;
import J.b;
import J.d;
import J.e;
import J.f;
import J.k;
import J.s;
import J.u;
import J.v;
import J.w;
import J.x;
import K.b;
import K.c;
import K.d;
import K.e;
import K.f;
import K.i;
import M.a;
import V.p;
import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.A;
import com.bumptech.glide.load.resource.bitmap.B;
import com.bumptech.glide.load.resource.bitmap.C11701a;
import com.bumptech.glide.load.resource.bitmap.C11702b;
import com.bumptech.glide.load.resource.bitmap.C11705e;
import com.bumptech.glide.load.resource.bitmap.C11710j;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.E;
import com.bumptech.glide.load.resource.bitmap.G;
import com.bumptech.glide.load.resource.bitmap.J;
import com.bumptech.glide.load.resource.bitmap.q;
import com.bumptech.glide.load.resource.bitmap.t;
import com.bumptech.glide.load.resource.bitmap.y;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class b implements ComponentCallbacks2 {

    public static final String f58816n = "image_manager_disk_cache";

    public static final String f58817o = "Glide";

    public static volatile b f58818p;

    public static volatile boolean f58819q;

    public final com.bumptech.glide.load.engine.j f58820b;

    public final F.e f58821c;

    public final G.j f58822d;

    public final d f58823e;

    public final Registry f58824f;

    public final F.b f58825g;

    public final R.l f58826h;

    public final R.d f58827i;

    public final a f58829k;

    @Nullable
    @GuardedBy("this")
    public I.b f58831m;

    public final List<k> f58828j = new ArrayList();

    public f f58830l = f.NORMAL;

    public interface a {
        @NonNull
        U.h build();
    }

    public b(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.j jVar, @NonNull G.j jVar2, @NonNull F.e eVar, @NonNull F.b bVar, @NonNull R.l lVar, @NonNull R.d dVar, int i10, @NonNull a aVar, @NonNull Map<Class<?>, l<?, ?>> map, @NonNull List<U.g<Object>> list, boolean z10, boolean z11) {
        C.j c11710j;
        C.j e10;
        Registry registry;
        this.f58820b = jVar;
        this.f58821c = eVar;
        this.f58825g = bVar;
        this.f58822d = jVar2;
        this.f58826h = lVar;
        this.f58827i = dVar;
        this.f58829k = aVar;
        Resources resources = context.getResources();
        Registry registry2 = new Registry();
        this.f58824f = registry2;
        registry2.u(new DefaultImageHeaderParser());
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 27) {
            registry2.u(new t());
        }
        List<ImageHeaderParser> g10 = registry2.g();
        P.a aVar2 = new P.a(context, g10, eVar, bVar);
        C.j<ParcelFileDescriptor, Bitmap> h10 = J.h(eVar);
        q qVar = new q(registry2.g(), resources.getDisplayMetrics(), eVar, bVar);
        if (!z11 || i11 < 28) {
            c11710j = new C11710j(qVar);
            e10 = new E(qVar, bVar);
        } else {
            e10 = new y();
            c11710j = new com.bumptech.glide.load.resource.bitmap.l();
        }
        N.e eVar2 = new N.e(context);
        s.c cVar = new s.c(resources);
        s.d dVar2 = new s.d(resources);
        s.b bVar2 = new s.b(resources);
        s.a aVar3 = new s.a(resources);
        C11705e c11705e = new C11705e(bVar);
        Q.a aVar4 = new Q.a();
        Q.d dVar3 = new Q.d();
        ContentResolver contentResolver = context.getContentResolver();
        registry2.a(ByteBuffer.class, new J.c()).a(InputStream.class, new J.t(bVar)).e(Registry.f58802l, ByteBuffer.class, Bitmap.class, c11710j).e(Registry.f58802l, InputStream.class, Bitmap.class, e10);
        if (m.b()) {
            registry2.e(Registry.f58802l, ParcelFileDescriptor.class, Bitmap.class, new A(qVar));
        }
        registry2.e(Registry.f58802l, ParcelFileDescriptor.class, Bitmap.class, h10).e(Registry.f58802l, AssetFileDescriptor.class, Bitmap.class, J.c(eVar)).d(Bitmap.class, Bitmap.class, v.a.b()).e(Registry.f58802l, Bitmap.class, Bitmap.class, new G()).b(Bitmap.class, c11705e).e(Registry.f58803m, ByteBuffer.class, BitmapDrawable.class, new C11701a(resources, c11710j)).e(Registry.f58803m, InputStream.class, BitmapDrawable.class, new C11701a(resources, e10)).e(Registry.f58803m, ParcelFileDescriptor.class, BitmapDrawable.class, new C11701a(resources, h10)).b(BitmapDrawable.class, new C11702b(eVar, c11705e)).e(Registry.f58801k, InputStream.class, P.c.class, new P.j(g10, aVar2, bVar)).e(Registry.f58801k, ByteBuffer.class, P.c.class, aVar2).b(P.c.class, new P.d()).d(B.a.class, B.a.class, v.a.b()).e(Registry.f58802l, B.a.class, Bitmap.class, new P.h(eVar)).c(Uri.class, Drawable.class, eVar2).c(Uri.class, Bitmap.class, new B(eVar2, eVar)).t(new a.C0405a()).d(File.class, ByteBuffer.class, new d.b()).d(File.class, InputStream.class, new f.e()).c(File.class, File.class, new O.a()).d(File.class, ParcelFileDescriptor.class, new f.b()).d(File.class, File.class, v.a.b()).t(new k.a(bVar));
        if (m.b()) {
            registry = registry2;
            registry.t(new m.a());
        } else {
            registry = registry2;
        }
        Class<Integer> cls = Integer.TYPE;
        registry.d(cls, InputStream.class, cVar).d(cls, ParcelFileDescriptor.class, bVar2).d(Integer.class, InputStream.class, cVar).d(Integer.class, ParcelFileDescriptor.class, bVar2).d(Integer.class, Uri.class, dVar2).d(cls, AssetFileDescriptor.class, aVar3).d(Integer.class, AssetFileDescriptor.class, aVar3).d(cls, Uri.class, dVar2).d(String.class, InputStream.class, new e.c()).d(Uri.class, InputStream.class, new e.c()).d(String.class, InputStream.class, new u.c()).d(String.class, ParcelFileDescriptor.class, new u.b()).d(String.class, AssetFileDescriptor.class, new u.a()).d(Uri.class, InputStream.class, new c.a()).d(Uri.class, InputStream.class, new a.c(context.getAssets())).d(Uri.class, ParcelFileDescriptor.class, new a.b(context.getAssets())).d(Uri.class, InputStream.class, new d.a(context)).d(Uri.class, InputStream.class, new e.a(context));
        if (i11 >= 29) {
            registry.d(Uri.class, InputStream.class, new f.c(context));
            registry.d(Uri.class, ParcelFileDescriptor.class, new f.b(context));
        }
        registry.d(Uri.class, InputStream.class, new w.d(contentResolver)).d(Uri.class, ParcelFileDescriptor.class, new w.b(contentResolver)).d(Uri.class, AssetFileDescriptor.class, new w.a(contentResolver)).d(Uri.class, InputStream.class, new x.a()).d(URL.class, InputStream.class, new i.a()).d(Uri.class, File.class, new k.a(context)).d(J.g.class, InputStream.class, new b.a()).d(byte[].class, ByteBuffer.class, new b.a()).d(byte[].class, InputStream.class, new b.d()).d(Uri.class, Uri.class, v.a.b()).d(Drawable.class, Drawable.class, v.a.b()).c(Drawable.class, Drawable.class, new N.f()).x(Bitmap.class, BitmapDrawable.class, new Q.b(resources)).x(Bitmap.class, byte[].class, aVar4).x(Drawable.class, byte[].class, new Q.c(eVar, aVar4, dVar3)).x(P.c.class, byte[].class, dVar3);
        C.j<ByteBuffer, Bitmap> d10 = J.d(eVar);
        registry.c(ByteBuffer.class, Bitmap.class, d10);
        registry.c(ByteBuffer.class, BitmapDrawable.class, new C11701a(resources, d10));
        this.f58823e = new d(context, bVar, registry, new V.k(), aVar, map, list, jVar, z10, i10);
    }

    @NonNull
    public static k B(@NonNull Activity activity) {
        return o(activity).i(activity);
    }

    @NonNull
    @Deprecated
    public static k C(@NonNull Fragment fragment) {
        return o(fragment.getActivity()).j(fragment);
    }

    @NonNull
    public static k D(@NonNull Context context) {
        return o(context).k(context);
    }

    @NonNull
    public static k E(@NonNull View view) {
        return o(view.getContext()).l(view);
    }

    @NonNull
    public static k F(@NonNull androidx.fragment.app.Fragment fragment) {
        return o(fragment.getContext()).m(fragment);
    }

    @NonNull
    public static k G(@NonNull FragmentActivity fragmentActivity) {
        return o(fragmentActivity).n(fragmentActivity);
    }

    @GuardedBy("Glide.class")
    public static void a(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        if (f58819q) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        f58819q = true;
        r(context, generatedAppGlideModule);
        f58819q = false;
    }

    @NonNull
    public static b d(@NonNull Context context) {
        if (f58818p == null) {
            GeneratedAppGlideModule e10 = e(context.getApplicationContext());
            synchronized (b.class) {
                try {
                    if (f58818p == null) {
                        a(context, e10);
                    }
                } finally {
                }
            }
        }
        return f58818p;
    }

    @Nullable
    public static GeneratedAppGlideModule e(Context context) {
        try {
            return (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext());
        } catch (ClassNotFoundException unused) {
            if (Log.isLoggable("Glide", 5)) {
                Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            return null;
        } catch (IllegalAccessException e10) {
            y(e10);
            return null;
        } catch (InstantiationException e11) {
            y(e11);
            return null;
        } catch (NoSuchMethodException e12) {
            y(e12);
            return null;
        } catch (InvocationTargetException e13) {
            y(e13);
            return null;
        }
    }

    @Nullable
    public static File k(@NonNull Context context) {
        return l(context, "image_manager_disk_cache");
    }

    @Nullable
    public static File l(@NonNull Context context, @NonNull String str) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            if (Log.isLoggable("Glide", 6)) {
                Log.e("Glide", "default disk cache dir is null");
            }
            return null;
        }
        File file = new File(cacheDir, str);
        if (file.mkdirs() || (file.exists() && file.isDirectory())) {
            return file;
        }
        return null;
    }

    @NonNull
    public static R.l o(@Nullable Context context) {
        Y.k.e(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return d(context).n();
    }

    @VisibleForTesting
    public static void p(@NonNull Context context, @NonNull c cVar) {
        GeneratedAppGlideModule e10 = e(context);
        synchronized (b.class) {
            try {
                if (f58818p != null) {
                    x();
                }
                s(context, cVar, e10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @VisibleForTesting
    @Deprecated
    public static synchronized void q(b bVar) {
        synchronized (b.class) {
            try {
                if (f58818p != null) {
                    x();
                }
                f58818p = bVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @GuardedBy("Glide.class")
    public static void r(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        s(context, new c(), generatedAppGlideModule);
    }

    @GuardedBy("Glide.class")
    public static void s(@NonNull Context context, @NonNull c cVar, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        Context applicationContext = context.getApplicationContext();
        List<S.c> emptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.c()) {
            emptyList = new S.e(applicationContext).a();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.d().isEmpty()) {
            Set<Class<?>> d10 = generatedAppGlideModule.d();
            Iterator<S.c> it = emptyList.iterator();
            while (it.hasNext()) {
                S.c next = it.next();
                if (d10.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + ((Object) next));
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator<S.c> it2 = emptyList.iterator();
            while (it2.hasNext()) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + ((Object) it2.next().getClass()));
            }
        }
        cVar.t(generatedAppGlideModule != null ? generatedAppGlideModule.e() : null);
        Iterator<S.c> it3 = emptyList.iterator();
        while (it3.hasNext()) {
            it3.next().a(applicationContext, cVar);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.a(applicationContext, cVar);
        }
        b b10 = cVar.b(applicationContext);
        for (S.c cVar2 : emptyList) {
            try {
                cVar2.b(applicationContext, b10, b10.f58824f);
            } catch (AbstractMethodError e10) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + cVar2.getClass().getName(), e10);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.b(applicationContext, b10, b10.f58824f);
        }
        applicationContext.registerComponentCallbacks(b10);
        f58818p = b10;
    }

    @VisibleForTesting
    public static synchronized void x() {
        synchronized (b.class) {
            try {
                if (f58818p != null) {
                    f58818p.i().getApplicationContext().unregisterComponentCallbacks(f58818p);
                    f58818p.f58820b.m();
                }
                f58818p = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void y(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    public void A(k kVar) {
        synchronized (this.f58828j) {
            try {
                if (!this.f58828j.contains(kVar)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                this.f58828j.remove(kVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b() {
        Y.m.a();
        this.f58820b.e();
    }

    public void c() {
        Y.m.b();
        this.f58822d.b();
        this.f58821c.b();
        this.f58825g.b();
    }

    @NonNull
    public F.b f() {
        return this.f58825g;
    }

    @NonNull
    public F.e g() {
        return this.f58821c;
    }

    public R.d h() {
        return this.f58827i;
    }

    @NonNull
    public Context i() {
        return this.f58823e.getBaseContext();
    }

    @NonNull
    public d j() {
        return this.f58823e;
    }

    @NonNull
    public Registry m() {
        return this.f58824f;
    }

    @NonNull
    public R.l n() {
        return this.f58826h;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override
    public void onLowMemory() {
        c();
    }

    @Override
    public void onTrimMemory(int i10) {
        z(i10);
    }

    public synchronized void t(@NonNull d.a... aVarArr) {
        try {
            if (this.f58831m == null) {
                this.f58831m = new I.b(this.f58822d, this.f58821c, (C.b) this.f58829k.build().H().a(q.f59414g));
            }
            this.f58831m.c(aVarArr);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void u(k kVar) {
        synchronized (this.f58828j) {
            try {
                if (this.f58828j.contains(kVar)) {
                    throw new IllegalStateException("Cannot register already registered manager");
                }
                this.f58828j.add(kVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean v(@NonNull p<?> pVar) {
        synchronized (this.f58828j) {
            try {
                Iterator<k> it = this.f58828j.iterator();
                while (it.hasNext()) {
                    if (it.next().X(pVar)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NonNull
    public f w(@NonNull f fVar) {
        Y.m.b();
        this.f58822d.c(fVar.a());
        this.f58821c.c(fVar.a());
        f fVar2 = this.f58830l;
        this.f58830l = fVar;
        return fVar2;
    }

    public void z(int i10) {
        Y.m.b();
        Iterator<k> it = this.f58828j.iterator();
        while (it.hasNext()) {
            it.next().onTrimMemory(i10);
        }
        this.f58822d.a(i10);
        this.f58821c.a(i10);
        this.f58825g.a(i10);
    }
}

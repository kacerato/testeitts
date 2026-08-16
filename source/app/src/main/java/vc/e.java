package Vc;

import JAVARuntime.Runnable;
import Rd.q;
import V.p;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.bitmap.AbstractC11708h;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine2.R;
import com.jsibbold.zoomage.ZoomageView;
import eightbitlab.com.blurview.BlurView;
import f7.C13194d;
import f7.C13195e;
import java.io.File;
import org.jetbrains.annotations.NotNull;

public class e {

    public static C13195e f26816a = new C13195e("Importing Texture", "ITsMagic", R.drawable.wo_uimage, R.color.snackbar_yellow, C13195e.a.SHORT);

    public class a implements U.g<Drawable> {

        public final com.bumptech.glide.load.engine.i f26817b;

        public final Context f26818c;

        public final String f26819d;

        public final U.h f26820e;

        public final ImageView f26821f;

        public final k f26822g;

        public class RunnableC0739a implements Runnable {
            public RunnableC0739a() {
            }

            @Override
            public void run() {
                com.bumptech.glide.b.D(a.this.f26818c).o(a.this.f26819d).z(C.b.PREFER_RGB_565).m(com.bumptech.glide.load.engine.i.f59186b).a(a.this.f26820e).h1(a.this.f26821f);
            }
        }

        public a(final com.bumptech.glide.load.engine.i val$strategy, final Context val$context, final String val$url, final U.h val$options, final ImageView val$imageView, final k val$listener) {
            this.f26817b = val$strategy;
            this.f26818c = val$context;
            this.f26819d = val$url;
            this.f26820e = val$options;
            this.f26821f = val$imageView;
            this.f26822g = val$listener;
        }

        @Override
        public boolean e(Drawable resource, Object model, p<Drawable> target, C.a dataSource, boolean isFirstResource) {
            this.f26822g.a(resource);
            return false;
        }

        @Override
        public boolean d(GlideException e10, Object model, p<Drawable> target, boolean isFirstResource) {
            if (this.f26817b == com.bumptech.glide.load.engine.i.f59186b) {
                return false;
            }
            N7.c.c0(new RunnableC0739a());
            return true;
        }
    }

    public class b implements Runnable {
        @Override
        public void run() {
            com.bumptech.glide.b.d(N7.c.t()).c();
        }
    }

    public class c implements Runnable {

        public final String f26824b;

        public final Context f26825c;

        public c(final String val$file, final Context val$context) {
            this.f26824b = val$file;
            this.f26825c = val$context;
        }

        @Override
        public void run() {
            try {
                Bitmap m10 = com.itsmagic.engine.Engines.Engine.Texture.Utils.b.m(this.f26824b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f26825c) + "/", ""));
                if (m10 != null) {
                    m10.recycle();
                }
            } catch (Error | Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class d implements Runnable {

        public final String f26826b;

        public final Context f26827c;

        public d(final String val$file, final Context val$context) {
            this.f26826b = val$file;
            this.f26827c = val$context;
        }

        @Override
        public void run() {
            try {
                Bitmap m10 = com.itsmagic.engine.Engines.Engine.Texture.Utils.b.m(this.f26826b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f26827c) + "/", ""));
                if (m10 != null) {
                    m10.recycle();
                }
            } catch (Error | Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class C0740e implements k {

        public final ImageView f26828a;

        public C0740e(final ImageView val$view) {
            this.f26828a = val$view;
        }

        @Override
        public void a(Drawable drawable) {
            drawable.setFilterBitmap(false);
            this.f26828a.setImageDrawable(drawable);
        }
    }

    public class f extends V.e<Drawable> {

        public final k f26829e;

        public final Context f26830f;

        public f(final k val$listener, final Context val$context) {
            this.f26829e = val$listener;
            this.f26830f = val$context;
        }

        @Override
        public void h(@NonNull Drawable drawable, @Nullable W.f<? super Drawable> transition) {
            this.f26829e.a(e.h(drawable, this.f26830f));
        }

        @Override
        public void f(@Nullable Drawable drawable) {
        }
    }

    public class g implements U.g<Drawable> {

        public final Context f26831b;

        public final String f26832c;

        public final U.h f26833d;

        public final ImageView f26834e;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                com.bumptech.glide.b.D(g.this.f26831b).o(g.this.f26832c).z(C.b.PREFER_RGB_565).m(com.bumptech.glide.load.engine.i.f59186b).a(g.this.f26833d).h1(g.this.f26834e);
            }
        }

        public g(final Context val$context, final String val$url, final U.h val$options, final ImageView val$imageView) {
            this.f26831b = val$context;
            this.f26832c = val$url;
            this.f26833d = val$options;
            this.f26834e = val$imageView;
        }

        @Override
        public boolean e(Drawable resource, Object model, p<Drawable> target, C.a dataSource, boolean isFirstResource) {
            return false;
        }

        @Override
        public boolean d(GlideException e10, Object model, p<Drawable> target, boolean isFirstResource) {
            N7.c.c0(new a());
            return true;
        }
    }

    public class h implements U.g<Drawable> {

        public final Context f26836b;

        public final String f26837c;

        public final U.h f26838d;

        public final ImageView f26839e;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                com.bumptech.glide.b.D(h.this.f26836b).o(h.this.f26837c).z(C.b.PREFER_RGB_565).m(com.bumptech.glide.load.engine.i.f59186b).a(h.this.f26838d).h1(h.this.f26839e);
            }
        }

        public h(final Context val$context, final String val$url, final U.h val$options, final ImageView val$imageView) {
            this.f26836b = val$context;
            this.f26837c = val$url;
            this.f26838d = val$options;
            this.f26839e = val$imageView;
        }

        @Override
        public boolean e(Drawable resource, Object model, p<Drawable> target, C.a dataSource, boolean isFirstResource) {
            return false;
        }

        @Override
        public boolean d(GlideException e10, Object model, p<Drawable> target, boolean isFirstResource) {
            N7.c.c0(new a());
            return true;
        }
    }

    public class i implements U.g<Drawable> {

        public final Context f26841b;

        public final String f26842c;

        public final U.h f26843d;

        public final ImageView f26844e;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                com.bumptech.glide.b.D(i.this.f26841b).o(i.this.f26842c).z(C.b.PREFER_RGB_565).m(com.bumptech.glide.load.engine.i.f59186b).a(i.this.f26843d).h1(i.this.f26844e);
            }
        }

        public i(final Context val$context, final String val$url, final U.h val$options, final ImageView val$imageView) {
            this.f26841b = val$context;
            this.f26842c = val$url;
            this.f26843d = val$options;
            this.f26844e = val$imageView;
        }

        @Override
        public boolean e(Drawable resource, Object model, p<Drawable> target, C.a dataSource, boolean isFirstResource) {
            return false;
        }

        @Override
        public boolean d(GlideException e10, Object model, p<Drawable> target, boolean isFirstResource) {
            N7.c.c0(new a());
            return true;
        }
    }

    public class j implements U.g<Drawable> {

        public final com.bumptech.glide.load.engine.i f26846b;

        public final Context f26847c;

        public final String f26848d;

        public final U.h f26849e;

        public final ImageView f26850f;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                com.bumptech.glide.b.D(j.this.f26847c).o(j.this.f26848d).z(C.b.PREFER_RGB_565).m(com.bumptech.glide.load.engine.i.f59186b).a(j.this.f26849e).h1(j.this.f26850f);
            }
        }

        public j(final com.bumptech.glide.load.engine.i val$strategy, final Context val$context, final String val$url, final U.h val$options, final ImageView val$imageView) {
            this.f26846b = val$strategy;
            this.f26847c = val$context;
            this.f26848d = val$url;
            this.f26849e = val$options;
            this.f26850f = val$imageView;
        }

        @Override
        public boolean e(Drawable resource, Object model, p<Drawable> target, C.a dataSource, boolean isFirstResource) {
            return false;
        }

        @Override
        public boolean d(GlideException e10, Object model, p<Drawable> target, boolean isFirstResource) {
            if (this.f26846b == com.bumptech.glide.load.engine.i.f59186b) {
                return false;
            }
            N7.c.c0(new a());
            return true;
        }
    }

    public interface k {
        void a(Drawable drawable);
    }

    public static void A(LinearLayout linearLayout, Context context, ColorINT color) {
        if (linearLayout == null || context == null) {
            return;
        }
        linearLayout.setBackgroundColor(color.intColor);
    }

    public static void B(RadioButton radioButton, Context context, int color) {
        if (radioButton == null || context == null) {
            return;
        }
        radioButton.setButtonTintList(p(context, color));
    }

    public static void C(LinearLayout linearLayout, Context context, int color) {
        if (linearLayout == null || context == null) {
            return;
        }
        linearLayout.setBackgroundColor(o(context, color));
    }

    public static void D(ImageView view, String path, Context context) {
        try {
            com.bumptech.glide.b.D(context).j(Uri.parse("file:///android_asset/" + path)).z(C.b.PREFER_RGB_565).m(com.bumptech.glide.load.engine.i.f59185a).h1(view);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void E(ImageView view, String path, Context context, AbstractC11708h transformation) {
        try {
            com.bumptech.glide.b.D(context).j(Uri.parse("file:///android_asset/" + path)).z(C.b.PREFER_RGB_565).I0(transformation).m(com.bumptech.glide.load.engine.i.f59185a).h1(view);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void F(ImageView view, File file) {
        G(view, file, N7.c.t());
    }

    public static void G(ImageView view, File file, Context context) {
        L(view, file.getAbsolutePath(), context, new U.h().c().u(R.drawable.package_failedload), com.bumptech.glide.load.engine.i.f59185a);
    }

    public static void H(ImageView view, File file, Context context, U.h options) {
        L(view, file.getAbsolutePath(), context, options, com.bumptech.glide.load.engine.i.f59185a);
    }

    public static void I(ImageView view, File file, Context context, U.h options, com.bumptech.glide.load.engine.i strategy) {
        L(view, file.getAbsolutePath(), context, options, strategy);
    }

    public static void J(ImageView view, File file, Context context, U.h options, AbstractC11708h transformation) {
        M(view, file.getAbsolutePath(), context, options, com.bumptech.glide.load.engine.i.f59185a, transformation);
    }

    public static void K(ImageView view, File file, Context context, AbstractC11708h transformation) {
        M(view, file.getAbsolutePath(), context, new U.h().c().u(R.drawable.package_failedload), com.bumptech.glide.load.engine.i.f59185a, transformation);
    }

    public static void L(ImageView view, String file, Context context, U.h options, com.bumptech.glide.load.engine.i strategy) {
        try {
            com.bumptech.glide.j m10 = com.bumptech.glide.b.D(context).o(file).z(C.b.PREFER_RGB_565).m(strategy);
            if (strategy == com.bumptech.glide.load.engine.i.f59186b) {
                m10 = (com.bumptech.glide.j) m10.F0(true);
            }
            m10.a(options).h1(view);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void M(ImageView view, String file, Context context, U.h options, com.bumptech.glide.load.engine.i strategy, AbstractC11708h transformation) {
        try {
            com.bumptech.glide.j m10 = com.bumptech.glide.b.D(context).o(file).z(C.b.PREFER_RGB_565).m(strategy);
            if (strategy == com.bumptech.glide.load.engine.i.f59186b) {
                m10 = (com.bumptech.glide.j) m10.F0(true);
            }
            m10.a(options).I0(transformation).h1(view);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void N(ZoomageView view, String file, Context context, U.h options, com.bumptech.glide.load.engine.i strategy) {
        try {
            com.bumptech.glide.j m10 = com.bumptech.glide.b.D(context).o(file).z(C.b.PREFER_RGB_565).m(strategy);
            if (strategy == com.bumptech.glide.load.engine.i.f59186b) {
                m10 = (com.bumptech.glide.j) m10.F0(true);
            }
            m10.a(options).h1(view);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void O(ImageView view, String file, Context context) {
        Q(view, file, context, R.drawable.wo_uimage, com.bumptech.glide.load.engine.i.f59185a);
    }

    public static void P(ImageView view, String file, Context context, int onError) {
        Q(view, file, context, onError, com.bumptech.glide.load.engine.i.f59185a);
    }

    public static void Q(ImageView view, String file, Context context, int onError, com.bumptech.glide.load.engine.i diskCacheStrategy) {
        try {
            File file2 = new File(Tc.b.O(file) + ".texture");
            if (file2.exists()) {
                com.bumptech.glide.j m10 = com.bumptech.glide.b.D(context).o(file2.getAbsolutePath()).z(C.b.PREFER_RGB_565).u(onError).m(diskCacheStrategy);
                if (diskCacheStrategy == com.bumptech.glide.load.engine.i.f59186b) {
                    m10 = (com.bumptech.glide.j) m10.F0(true);
                }
                m10.h1(view);
                return;
            }
            if (ub.p.M(file)) {
                C13194d.a(f26816a);
                Thread thread = new Thread(new c(file, context));
                thread.setName("Engine texture convertor");
                thread.setPriority(1);
                thread.start();
            }
            com.bumptech.glide.j u10 = com.bumptech.glide.b.D(context).o(file).z(C.b.PREFER_RGB_565).m(diskCacheStrategy).u(onError);
            if (diskCacheStrategy == com.bumptech.glide.load.engine.i.f59186b) {
                u10 = (com.bumptech.glide.j) u10.F0(true);
            }
            u10.h1(view);
        } catch (RuntimeException e10) {
            System.out.println("Failed to load GlideImage " + file);
            e10.printStackTrace();
        }
    }

    public static void R(ImageView view, String file, Context context, com.bumptech.glide.load.engine.i diskCacheStrategy) {
        Q(view, file, context, R.drawable.wo_uimage, diskCacheStrategy);
    }

    public static void S(ImageView view, String file, Context context, int onError, com.bumptech.glide.load.engine.i diskCacheStrategy) {
        try {
            File file2 = new File(Tc.b.O(file) + ".texture");
            if (file2.exists()) {
                com.bumptech.glide.j m10 = com.bumptech.glide.b.D(context).o(file2.getAbsolutePath()).z(C.b.PREFER_RGB_565).u(onError).c().m(diskCacheStrategy);
                if (diskCacheStrategy == com.bumptech.glide.load.engine.i.f59186b) {
                    m10 = (com.bumptech.glide.j) m10.F0(true);
                }
                m10.h1(view);
                return;
            }
            if (ub.p.M(file)) {
                C13194d.a(f26816a);
                Thread thread = new Thread(new d(file, context));
                thread.setName("Engine texture convertor");
                thread.setPriority(1);
                thread.start();
            }
            com.bumptech.glide.j u10 = com.bumptech.glide.b.D(context).o(file).z(C.b.PREFER_RGB_565).m(diskCacheStrategy).c().u(onError);
            if (diskCacheStrategy == com.bumptech.glide.load.engine.i.f59186b) {
                u10 = (com.bumptech.glide.j) u10.F0(true);
            }
            u10.h1(view);
        } catch (RuntimeException e10) {
            System.out.println("Failed to load GlideImage " + file);
            e10.printStackTrace();
        }
    }

    public static void T(View view, int r10) {
        view.setBackground(ContextCompat.getDrawable(N7.c.t(), r10));
    }

    public static void U(ImageView view, int r10) {
        V(view, r10, N7.c.t());
    }

    public static void V(ImageView view, int r10, Context context) {
        W(view, r10, context, R.drawable.wo_uimage, com.bumptech.glide.load.engine.i.f59186b, 0);
    }

    public static void W(ImageView view, int r10, Context context, int onError, com.bumptech.glide.load.engine.i diskCacheStrategy, int tries) {
        if (view == null || context == null) {
            return;
        }
        try {
            com.bumptech.glide.j<Drawable> n10 = com.bumptech.glide.b.D(context).n(Integer.valueOf(r10));
            C.b bVar = C.b.PREFER_RGB_565;
            com.bumptech.glide.j m10 = n10.z(bVar).m(diskCacheStrategy);
            com.bumptech.glide.load.engine.i iVar = com.bumptech.glide.load.engine.i.f59186b;
            (diskCacheStrategy != iVar ? m10.Z0(com.bumptech.glide.b.D(context).n(Integer.valueOf(r10)).z(bVar).m(iVar).u(onError)) : m10.u(onError)).h1(view);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void X(ImageView view, int r10, Context context, int onError, com.bumptech.glide.load.engine.i diskCacheStrategy, int tries, U.h options) {
        if (view == null || context == null) {
            return;
        }
        try {
            com.bumptech.glide.b.D(context).n(Integer.valueOf(r10)).z(C.b.PREFER_RGB_565).m(diskCacheStrategy).u(onError).a(options).h1(view);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void Y(ImageView view, int r10, Context context) {
        if (view == null || context == null) {
            return;
        }
        try {
            view.setImageDrawable(ResourcesCompat.getDrawable(context.getResources(), r10, null));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void Z(ImageView imageView, String url) {
        e0(imageView, url, N7.c.t());
    }

    public static Drawable a(Bitmap bitmap, Context context) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    public static void a0(ImageView imageView, String url, int placeHolder, int failed, Context context) {
        imageView.getClass();
        url.getClass();
        context.getClass();
        U.h u10 = new U.h().c().v0(placeHolder).u(failed);
        try {
            com.bumptech.glide.b.D(context).o(url).z(C.b.PREFER_RGB_565).m(com.bumptech.glide.load.engine.i.f59185a).j1(new h(context, url, u10, imageView)).a(u10).h1(imageView);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void b(BlurView blurView) {
        c(blurView, 8.0f);
    }

    public static void b0(ImageView imageView, String url, int placeHolder, int failed, Context context, com.bumptech.glide.load.engine.i diskCacheStrategy) {
        imageView.getClass();
        url.getClass();
        context.getClass();
        U.h u10 = new U.h().c().v0(placeHolder).u(failed);
        try {
            com.bumptech.glide.b.D(context).o(url).z(C.b.PREFER_RGB_565).m(diskCacheStrategy).j1(new i(context, url, u10, imageView)).a(u10).h1(imageView);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void c(BlurView blurView, float radius) {
        blurView.getClass();
        Activity o10 = N7.c.o();
        ViewGroup viewGroup = (ViewGroup) N7.c.E();
        if (viewGroup == null) {
            throw new RuntimeException("invalid activity root view");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            blurView.g(viewGroup, new Rd.p()).c(radius);
        } else {
            blurView.g(viewGroup, new q(o10)).c(radius);
        }
    }

    public static void c0(ImageView imageView, String url, int placeHolder, int failed, com.bumptech.glide.load.engine.i strategy, Context context) {
        imageView.getClass();
        url.getClass();
        strategy.getClass();
        context.getClass();
        U.h u10 = new U.h().c().v0(placeHolder).u(failed);
        try {
            com.bumptech.glide.b.D(context).o(url).s(Bitmap.CompressFormat.PNG).p().z(C.b.DEFAULT).m(strategy).j1(new j(strategy, context, url, u10, imageView)).a(u10).h1(imageView);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static int d(int width, int height, int reqWidth, int reqHeight) {
        int i10 = 1;
        if (height > reqHeight || width > reqWidth) {
            int i11 = height / 2;
            int i12 = width / 2;
            while (i11 / i10 >= reqHeight && i12 / i10 >= reqWidth) {
                i10 *= 2;
            }
        }
        return i10;
    }

    public static void d0(ImageView imageView, String url, int placeHolder, int failed, com.bumptech.glide.load.engine.i strategy, Context context, k listener) {
        imageView.getClass();
        url.getClass();
        strategy.getClass();
        context.getClass();
        listener.getClass();
        U.h u10 = new U.h().c().v0(placeHolder).u(failed);
        try {
            com.bumptech.glide.b.D(context).o(url).s(Bitmap.CompressFormat.PNG).p().z(C.b.DEFAULT).m(strategy).j1(new a(strategy, context, url, u10, imageView, listener)).a(u10).h1(imageView);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void e(ImageView imageView) {
        if (imageView != null) {
            try {
                if (imageView.getDrawable() != null) {
                    imageView.getDrawable().setTintList(null);
                }
                imageView.clearColorFilter();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void e0(ImageView imageView, String url, Context context) {
        imageView.getClass();
        url.getClass();
        context.getClass();
        U.h u10 = new U.h().c().u(R.drawable.package_failedload);
        try {
            com.bumptech.glide.b.D(context).o(url).z(C.b.PREFER_RGB_565).m(com.bumptech.glide.load.engine.i.f59185a).j1(new g(context, url, u10, imageView)).a(u10).h1(imageView);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void f() {
        N7.c.j0(new b());
    }

    public static void f0(View view, int left, int top, int right, int bottom) {
        if (!(view.getLayoutParams() instanceof LinearLayout.LayoutParams)) {
            System.out.println("ImageUtils:setMargins: Unknown instance of view;");
        } else {
            ((LinearLayout.LayoutParams) view.getLayoutParams()).setMargins(left, top, right, bottom);
            view.requestLayout();
        }
    }

    public static Bitmap g(Bitmap bitmap, int targetWidth, int targetHeight) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= targetWidth && height <= targetHeight) {
            return bitmap;
        }
        d(width, height, targetWidth, targetHeight);
        if (width >= height) {
            return width > targetWidth ? Bitmap.createScaledBitmap(bitmap, targetWidth, (int) (targetWidth * (height / width)), false) : bitmap;
        }
        return height > targetHeight ? Bitmap.createScaledBitmap(bitmap, (int) (targetHeight * (width / height)), targetHeight, false) : bitmap;
    }

    public static void g0(ImageView view, File file, Context context) {
        j(file.getAbsolutePath(), context, new U.h().c().u(R.drawable.package_failedload), com.bumptech.glide.load.engine.i.f59186b, new C0740e(view));
    }

    public static Drawable h(Drawable drawable, Context context) {
        return a(g(i(drawable), 4096, 4096), context);
    }

    public static void h0(Context context, View view, int height) {
        if (view.getLayoutParams() instanceof LinearLayout.LayoutParams) {
            ((LinearLayout.LayoutParams) view.getLayoutParams()).height = Nc.b.l0(height, context);
            view.requestLayout();
        } else {
            if (view.getLayoutParams() == null) {
                System.out.println("ImageUtils:setSizeHeightDP: Unknown instance of view;");
                return;
            }
            view.getLayoutParams().height = Nc.b.l0(height, context);
            view.requestLayout();
        }
    }

    public static Bitmap i(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        if (drawable instanceof VectorDrawable) {
            BitmapDrawable bitmapDrawable = new BitmapDrawable(Resources.getSystem(), Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888));
            Canvas canvas = new Canvas(bitmapDrawable.getBitmap());
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapDrawable.getBitmap();
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas2.getWidth(), canvas2.getHeight());
        drawable.draw(canvas2);
        return createBitmap;
    }

    public static void i0(Context context, View view, int width) {
        if (view.getLayoutParams() instanceof LinearLayout.LayoutParams) {
            ((LinearLayout.LayoutParams) view.getLayoutParams()).width = Nc.b.l0(width, context);
            view.requestLayout();
        } else {
            if (view.getLayoutParams() == null) {
                System.out.println("ImageUtils:setSizeWidthDP: Unknown instance of view;");
                return;
            }
            view.getLayoutParams().width = Nc.b.l0(width, context);
            view.requestLayout();
        }
    }

    public static void j(String file, Context context, U.h options, com.bumptech.glide.load.engine.i strategy, k listener) {
        try {
            com.bumptech.glide.j m10 = com.bumptech.glide.b.D(context).o(file).z(C.b.PREFER_RGB_565).m(strategy);
            if (strategy == com.bumptech.glide.load.engine.i.f59186b) {
                m10 = (com.bumptech.glide.j) m10.F0(true);
            }
            m10.a(options).e1(new f(listener, context));
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void k(@NotNull ImageView imageView, Context context) {
        Bitmap bitmap;
        if (imageView != null) {
            try {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) imageView.getDrawable();
                if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null && !bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            } catch (Exception unused) {
                return;
            }
        }
        com.bumptech.glide.b.D(context).x(imageView);
    }

    public static void l(View view, Context context) {
        if (view == null || context == null) {
            return;
        }
        view.setBackgroundColor(0);
    }

    public static void m(ImageView imageView) {
        if (imageView != null) {
            imageView.setColorFilter(0);
        }
    }

    public static void n(ImageView view, Context context) {
        view.setImageDrawable(null);
    }

    public static int o(Context context, int color) {
        if (context == null) {
            return color;
        }
        try {
            return ContextCompat.getColor(context, color);
        } catch (Resources.NotFoundException unused) {
            return color;
        }
    }

    public static ColorStateList p(Context context, int color) {
        if (context == null) {
            return ColorStateList.valueOf(color);
        }
        try {
            ColorStateList colorStateList = ContextCompat.getColorStateList(context, color);
            if (colorStateList != null) {
                return colorStateList;
            }
        } catch (Resources.NotFoundException unused) {
        }
        return ColorStateList.valueOf(color);
    }

    public static void q(View view, Context context, ColorINT color) {
        if (view == null || context == null) {
            return;
        }
        int i10 = color.intColor;
        if (i10 == 0) {
            l(view, context);
        } else {
            view.setBackgroundColor(i10);
        }
    }

    public static void r(View view, Context context, int color) {
        if (view == null || context == null) {
            return;
        }
        if (color == 0) {
            l(view, context);
        } else {
            view.setBackgroundColor(color);
        }
    }

    public static void s(View view, Context context, int color) {
        if (view == null || context == null) {
            return;
        }
        if (color == 0) {
            l(view, context);
        } else {
            view.setBackgroundColor(o(context, color));
        }
    }

    public static void t(View view, Context context, int color) {
        if (view == null || context == null) {
            return;
        }
        if (color == 0) {
            l(view, context);
        } else {
            view.setBackgroundTintList(ColorStateList.valueOf(color));
        }
    }

    public static void u(View view, Context context, int color) {
        if (view == null || context == null) {
            return;
        }
        if (color == 0) {
            l(view, context);
        } else {
            view.setBackgroundTintList(p(context, color));
        }
    }

    public static void v(View view, Context context, int color) {
        if (view == null || context == null) {
            return;
        }
        view.setBackgroundColor(o(context, color));
    }

    public static void w(CheckBox checkBox, Context context, int color) {
        if (checkBox == null || context == null) {
            return;
        }
        checkBox.setButtonTintList(p(context, color));
    }

    public static void x(ImageView imageView, Context context, int color) {
        if (imageView == null || context == null) {
            return;
        }
        if (color == 0) {
            imageView.setColorFilter(color);
        } else {
            imageView.setColorFilter(o(context, color));
        }
    }

    public static void y(ImageView imageView, Context context, ColorINT color) {
        if (imageView == null || context == null || color == null) {
            return;
        }
        int i10 = color.intColor;
        if (i10 == 0) {
            l(imageView, context);
        } else {
            imageView.setColorFilter(i10);
        }
    }

    public static void z(LinearLayout linearLayout, Context context, int color) {
        if (linearLayout == null || context == null) {
            return;
        }
        if (color == 0) {
            linearLayout.setBackgroundColor(color);
        } else {
            linearLayout.setBackgroundColor(o(context, color));
        }
    }
}

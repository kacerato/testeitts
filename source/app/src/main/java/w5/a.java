package W5;

import U.g;
import U.h;
import V.e;
import V.p;
import W.f;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.i;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import com.jsibbold.zoomage.ZoomageView;
import java.io.File;
import q7.C15045a;
import r4.C15147a;

public class a extends EditorPanel {

    public static final String f27260Y = "ViewMediaPanel";

    public final Bitmap f27261X;

    public class C0760a extends e<Bitmap> {

        public final C15045a f27262e;

        public final View f27263f;

        public final C15147a.e f27264g;

        public C0760a(final C15045a val$loadingBar, final View val$anchor, final C15147a.e val$anchorSide) {
            this.f27262e = val$loadingBar;
            this.f27263f = val$anchor;
            this.f27264g = val$anchorSide;
        }

        @Override
        public void h(@NonNull Bitmap resource, @Nullable f<? super Bitmap> transition) {
            this.f27262e.p1();
            a.q1(new a(resource), this.f27263f, this.f27264g);
        }

        @Override
        public void f(@Nullable Drawable placeholder) {
        }
    }

    public class b implements g<Bitmap> {

        public final i f27265b;

        public final String f27266c;

        public final h f27267d;

        public final C15045a f27268e;

        public final View f27269f;

        public final C15147a.e f27270g;

        public class RunnableC0761a implements Runnable {

            public class C0762a extends e<Bitmap> {
                public C0762a() {
                }

                @Override
                public void h(@NonNull Bitmap resource, @Nullable f<? super Bitmap> transition) {
                    b.this.f27268e.p1();
                    a aVar = new a(resource);
                    b bVar = b.this;
                    a.q1(aVar, bVar.f27269f, bVar.f27270g);
                }

                @Override
                public void f(@Nullable Drawable placeholder) {
                }
            }

            public class C0763b implements g<Bitmap> {
                public C0763b() {
                }

                @Override
                public boolean e(Bitmap resource, Object model, p<Bitmap> target, C.a dataSource, boolean isFirstResource) {
                    return false;
                }

                @Override
                public boolean d(@Nullable GlideException e10, Object model, p<Bitmap> target, boolean isFirstResource) {
                    b.this.f27268e.p1();
                    return false;
                }
            }

            public RunnableC0761a() {
            }

            @Override
            public void run() {
                try {
                    com.bumptech.glide.b.D(N7.c.t()).s().o(b.this.f27266c).z(C.b.PREFER_RGB_565).m(i.f59186b).a(b.this.f27267d).j1(new C0763b()).e1(new C0762a());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    b.this.f27268e.p1();
                }
            }
        }

        public b(final i val$strategy, final String val$url, final h val$options, final C15045a val$loadingBar, final View val$anchor, final C15147a.e val$anchorSide) {
            this.f27265b = val$strategy;
            this.f27266c = val$url;
            this.f27267d = val$options;
            this.f27268e = val$loadingBar;
            this.f27269f = val$anchor;
            this.f27270g = val$anchorSide;
        }

        @Override
        public boolean e(Bitmap resource, Object model, p<Bitmap> target, C.a dataSource, boolean isFirstResource) {
            return false;
        }

        @Override
        public boolean d(@Nullable GlideException e10, Object model, p<Bitmap> target, boolean isFirstResource) {
            if (this.f27265b != i.f59186b) {
                N7.c.c0(new RunnableC0761a());
                return true;
            }
            N7.c.v0("Ops! something went wrong.");
            this.f27268e.p1();
            return false;
        }
    }

    public class c extends e<Bitmap> {

        public final C15045a f27274e;

        public final View f27275f;

        public final C15147a.e f27276g;

        public c(final C15045a val$loadingBar, final View val$anchor, final C15147a.e val$anchorSide) {
            this.f27274e = val$loadingBar;
            this.f27275f = val$anchor;
            this.f27276g = val$anchorSide;
        }

        @Override
        public void h(@NonNull Bitmap resource, @Nullable f<? super Bitmap> transition) {
            this.f27274e.p1();
            a.q1(new a(resource), this.f27275f, this.f27276g);
        }

        @Override
        public void f(@Nullable Drawable placeholder) {
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View view) {
            a.this.R0();
        }
    }

    public a(Bitmap bitmap) {
        this.f27261X = bitmap;
        super.e1(false);
        bitmap.getClass();
    }

    public static FloatingPanelArea q1(a panel, View anchor, C15147a.e anchorSide) {
        FloatingPanelArea m10 = C15147a.m(panel, 1.0f, 1.0f);
        m10.T();
        m10.f1();
        m10.N1(false);
        m10.M0();
        return m10;
    }

    public static void r1(File file, View anchor, C15147a.e anchorSide) {
        C15045a r12 = C15045a.r1();
        try {
            com.bumptech.glide.b.D(N7.c.t()).s().load(file).z(C.b.PREFER_RGB_565).m(i.f59188d).a(new h().v0(R.drawable.empty_image).u(R.drawable.anchor_remove)).e1(new c(r12, anchor, anchorSide));
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            r12.p1();
        }
    }

    public static void s1(String url, View anchor, C15147a.e anchorSide) {
        C15045a r12 = C15045a.r1();
        h u10 = new h().v0(R.drawable.empty_image).u(R.drawable.anchor_remove);
        i iVar = i.f59188d;
        try {
            com.bumptech.glide.b.D(N7.c.t()).s().o(url).m(iVar).a(u10).j1(new b(iVar, url, u10, r12, anchor, anchorSide)).e1(new C0760a(r12, anchor, anchorSide));
        } catch (Exception e10) {
            e10.printStackTrace();
            r12.p1();
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.marketplace_product_view_midia_panel, (ViewGroup) null);
        new h().v0(R.drawable.download).u(R.drawable.anchor_remove);
        i iVar = i.f59188d;
        N7.c.a(this);
        inflate.findViewById(R.id.closeButton).setOnClickListener(new d());
        ZoomageView zoomageView = (ZoomageView) inflate.findViewById(R.id.myZoomageView);
        zoomageView.setImageBitmap(this.f27261X);
        zoomageView.setZoomable(true);
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.f0(this);
    }
}

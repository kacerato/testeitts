package O6;

import C5.b;
import F5.c;
import N7.c;
import Vc.e;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.Rect;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.SpriteData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.tonyodev.fetch2core.server.FileRequest;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import q7.C15045a;
import r4.C15147a;
import ub.g;
import yb.C16165b;

public class a extends EditorPanel {

    public static final String f16470r0 = "SpriteEditorPanel";

    public final String f16471X;

    public File f16472Y;

    public View f16473Z;

    public LinearLayout f16474a0;

    public View f16475b0;

    public TextView f16476c0;

    public ImageView f16477d0;

    public ImageView f16478e0;

    public TextView f16479f0;

    public View f16480g0;

    public View f16481h0;

    public final AtomicBoolean f16482i0;

    public Bitmap f16483j0;

    public Bitmap f16484k0;

    public Bitmap f16485l0;

    public g f16486m0;

    public TextureConfig f16487n0;

    public final List<Rect> f16488o0;

    public int f16489p0;

    public List<b> f16490q0;

    public class A implements Runnable {

        public class RunnableC0461a implements Runnable {

            public final g f16492b;

            public final TextureConfig f16493c;

            public RunnableC0461a(final g val$texture, final TextureConfig val$config) {
                this.f16492b = val$texture;
                this.f16493c = val$config;
            }

            @Override
            public void run() {
                a.this.f16486m0 = this.f16492b;
                a.this.f16487n0 = this.f16493c;
                a.this.l2().type = TextureConfig.f.Sprite;
                a.this.y2();
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                a.this.f16487n0 = new TextureConfig();
                a.this.f16487n0.type = TextureConfig.f.Sprite;
                a.this.y2();
            }
        }

        public A() {
        }

        @Override
        public void run() {
            try {
                g gVar = new g(a.this.f16471X);
                c.j0(new RunnableC0461a(gVar, gVar.u0()));
            } catch (Exception e10) {
                e10.printStackTrace();
                c.j0(new b());
            }
        }
    }

    public class B implements Runnable {

        public final C15045a f16496b;

        public final boolean f16497c;

        public class RunnableC0462a implements Runnable {

            public final List f16499b;

            public class RunnableC0463a implements Runnable {
                public RunnableC0463a() {
                }

                @Override
                public void run() {
                    try {
                        g u10 = C16165b.u(a.this.f16471X);
                        if (u10 != null) {
                            u10.D0();
                            u10.E0();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public RunnableC0462a(final List val$newSprites) {
                this.f16499b = val$newSprites;
            }

            @Override
            public void run() {
                a.this.f16488o0.clear();
                a.this.f16488o0.addAll(this.f16499b);
                a.this.f16489p0 = 0;
                a.this.B2();
                a.this.Y2();
                a.this.X2();
                K8.a.I(new RunnableC0463a());
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                B.this.f16496b.p1();
                a.this.f16482i0.set(false);
                B b10 = B.this;
                if (b10.f16497c) {
                    a.this.R0();
                }
            }
        }

        public B(final C15045a val$loading, final boolean val$closePanel) {
            this.f16496b = val$loading;
            this.f16497c = val$closePanel;
        }

        @Override
        public void run() {
            b bVar;
            try {
                try {
                    List f22 = a.this.f2();
                    a.this.D2(f22);
                    c.j0(new RunnableC0462a(f22));
                    bVar = new b();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    c.v0("Failed to slice sprites: " + e10.getMessage());
                    bVar = new b();
                }
                c.j0(bVar);
            } catch (Throwable th2) {
                c.j0(new b());
                throw th2;
            }
        }
    }

    public class C implements Runnable {

        public final C15045a f16503b;

        public class RunnableC0464a implements Runnable {

            public class RunnableC0465a implements Runnable {
                public RunnableC0465a() {
                }

                @Override
                public void run() {
                    try {
                        g u10 = C16165b.u(a.this.f16471X);
                        if (u10 != null) {
                            u10.D0();
                            u10.E0();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public RunnableC0464a() {
            }

            @Override
            public void run() {
                K8.a.I(new RunnableC0465a());
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                C.this.f16503b.p1();
                a.this.f16482i0.set(false);
                a.this.R0();
            }
        }

        public C(final C15045a val$loading) {
            this.f16503b = val$loading;
        }

        @Override
        public void run() {
            b bVar;
            try {
                try {
                    a.this.D2(new SteppedArrayList(a.this.f16488o0));
                    c.j0(new RunnableC0464a());
                    bVar = new b();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    c.v0("Failed to save sprite config: " + e10.getMessage());
                    bVar = new b();
                }
                c.j0(bVar);
            } catch (Throwable th2) {
                c.j0(new b());
                throw th2;
            }
        }
    }

    public class D implements F {
        public D() {
        }

        @Override
        public int get() {
            return a.this.n2();
        }
    }

    public class E implements G {
        public E() {
        }

        @Override
        public void b(int value) {
            a.this.G2(Math.max(1, value));
        }
    }

    public interface F {
        int get();
    }

    public interface G {
        void b(int value);
    }

    public class C0466a extends c.n0<Ab.b> {
        public C0466a() {
        }

        @Override
        public void set(Ab.b value) {
            if (value != null) {
                a.this.O2(value);
                a.this.R2();
            }
        }

        @Override
        public String c(Ab.b enumObject) {
            int i10 = x.f16535a[enumObject.ordinal()];
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? super.c(enumObject) : "Automatic" : "Grid by cell count" : "Grid by cell size";
        }
    }

    public class C2853b implements F {
        public C2853b() {
        }

        @Override
        public int get() {
            return a.this.r2();
        }
    }

    public class C2854c implements G {
        public C2854c() {
        }

        @Override
        public void b(int value) {
            a.this.K2(Math.max(1, value));
        }
    }

    public class C2855d implements F {
        public C2855d() {
        }

        @Override
        public int get() {
            return a.this.q2();
        }
    }

    public class C2856e implements G {
        public C2856e() {
        }

        @Override
        public void b(int value) {
            a.this.J2(Math.max(1, value));
        }
    }

    public class C2857f implements F {
        public C2857f() {
        }

        @Override
        public int get() {
            return a.this.s2();
        }
    }

    public class C2858g implements G {
        public C2858g() {
        }

        @Override
        public void b(int value) {
            a.this.L2(Math.max(0, value));
        }
    }

    public class h implements F {
        public h() {
        }

        @Override
        public int get() {
            return a.this.t2();
        }
    }

    public class i implements G {
        public i() {
        }

        @Override
        public void b(int value) {
            a.this.M2(Math.max(0, value));
        }
    }

    public class j implements F {
        public j() {
        }

        @Override
        public int get() {
            return a.this.o2();
        }
    }

    public class k extends AbstractViewOnClickListenerC12733a {
        public k() {
        }

        @Override
        public void click(View view) {
            a.this.A2();
        }
    }

    public class l implements G {
        public l() {
        }

        @Override
        public void b(int value) {
            a.this.H2(Math.max(1, value));
        }
    }

    public class m implements F {
        public m() {
        }

        @Override
        public int get() {
            return a.this.p2();
        }
    }

    public class n implements G {
        public n() {
        }

        @Override
        public void b(int value) {
            a.this.I2(Math.max(1, value));
        }
    }

    public class o implements F {
        public o() {
        }

        @Override
        public int get() {
            return a.this.s2();
        }
    }

    public class p implements G {
        public p() {
        }

        @Override
        public void b(int value) {
            a.this.L2(Math.max(0, value));
        }
    }

    public class q implements F {
        public q() {
        }

        @Override
        public int get() {
            return a.this.t2();
        }
    }

    public class r implements G {
        public r() {
        }

        @Override
        public void b(int value) {
            a.this.M2(Math.max(0, value));
        }
    }

    public class s implements D5.h {
        public s() {
        }

        @Override
        public Variable get() {
            return new Variable("", String.valueOf(a.this.m2()));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                a.this.F2(Math.max(0, variable.int_value));
            }
        }
    }

    public class t implements D5.h {
        public t() {
        }

        @Override
        public Variable get() {
            return new Variable("", String.valueOf(a.this.u2()));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                a.this.N2(Math.max(1, variable.int_value));
            }
        }
    }

    public class u implements F5.b {
        public u() {
        }

        @Override
        public void onClick() {
            a.this.U2(null, false);
        }
    }

    public class v extends AbstractViewOnClickListenerC12733a {
        public v() {
        }

        @Override
        public void click(View view) {
            a.this.z2();
        }
    }

    public class w implements D5.h {

        public final G f16532a;

        public final F f16533b;

        public w(final G val$setter, final F val$getter) {
            this.f16532a = val$setter;
            this.f16533b = val$getter;
        }

        @Override
        public Variable get() {
            return new Variable("", String.valueOf(this.f16533b.get()));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f16532a.b(variable.int_value);
            }
        }
    }

    public static class x {

        public static final int[] f16535a;

        static {
            int[] iArr = new int[Ab.b.values().length];
            f16535a = iArr;
            try {
                iArr[Ab.b.GridByCellSize.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16535a[Ab.b.GridByCellCount.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16535a[Ab.b.Automatic.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class y extends AbstractViewOnClickListenerC12733a {
        public y() {
        }

        @Override
        public void click(View view) {
            a.this.E2(view);
        }
    }

    public class z implements Runnable {

        public class RunnableC0467a implements Runnable {

            public final Bitmap f16538b;

            public RunnableC0467a(final Bitmap val$bitmap) {
                this.f16538b = val$bitmap;
            }

            @Override
            public void run() {
                if (a.this.f16483j0 != null && a.this.f16483j0 != this.f16538b && !a.this.f16483j0.isRecycled()) {
                    a.this.f16483j0.recycle();
                }
                a.this.f16483j0 = this.f16538b;
                a.this.B2();
                a.this.Y2();
                a.this.X2();
            }
        }

        public z() {
        }

        @Override
        public void run() {
            try {
                a.this.i2();
                N7.c.j0(new RunnableC0467a(com.itsmagic.engine.Engines.Engine.Texture.Utils.b.p(a.this.M(), a.this.f16471X)));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public a(String inProjectFile) {
        super(null, "Sprite editor");
        this.f16482i0 = new AtomicBoolean();
        this.f16488o0 = new SteppedArrayList();
        this.f16489p0 = 0;
        this.f16490q0 = null;
        super.e1(false);
        this.f16471X = inProjectFile;
        this.f16472Y = new File(inProjectFile);
    }

    public static FloatingPanelArea P2(String inProjectFile) {
        if (inProjectFile == null || inProjectFile.isEmpty()) {
            throw new NullPointerException("listener can't be null");
        }
        return C15147a.m(new a(inProjectFile), N7.c.g(370), N7.c.f(300));
    }

    public void R2() {
        List<b> e22 = e2();
        this.f16490q0 = e22;
        Q2(e22, this.f16474a0, true, null);
    }

    private void h2() {
        TextView textView = (TextView) this.f16473Z.findViewById(R.id.textureName);
        this.f16476c0 = textView;
        textView.setText(Tc.b.v(this.f16471X));
        this.f16474a0 = (LinearLayout) this.f16473Z.findViewById(R.id.scrollContent);
        this.f16477d0 = (ImageView) this.f16473Z.findViewById(R.id.sourceImage);
        this.f16478e0 = (ImageView) this.f16473Z.findViewById(R.id.spriteImage);
        this.f16479f0 = (TextView) this.f16473Z.findViewById(R.id.spriteIndex);
        this.f16480g0 = this.f16473Z.findViewById(R.id.prevSprite);
        this.f16481h0 = this.f16473Z.findViewById(R.id.nextSprite);
        this.f16475b0 = this.f16473Z.findViewById(R.id.done);
        this.f16480g0.setOnClickListener(new k());
        this.f16481h0.setOnClickListener(new v());
        this.f16475b0.setOnClickListener(new y());
        R2();
        Y2();
        X2();
        C2();
    }

    public final void A2() {
        if (this.f16488o0.isEmpty()) {
            return;
        }
        int i10 = this.f16489p0 - 1;
        this.f16489p0 = i10;
        if (i10 < 0) {
            this.f16489p0 = this.f16488o0.size() - 1;
        }
        X2();
    }

    public final void B2() {
        Bitmap bitmap = this.f16484k0;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f16484k0.recycle();
            this.f16484k0 = null;
        }
        Bitmap bitmap2 = this.f16483j0;
        if (bitmap2 == null || bitmap2.isRecycled() || this.f16488o0.isEmpty()) {
            return;
        }
        Bitmap bitmap3 = this.f16483j0;
        Bitmap copy = bitmap3.copy(bitmap3.getConfig() != null ? this.f16483j0.getConfig() : Bitmap.Config.ARGB_8888, true);
        if (copy == null) {
            return;
        }
        Canvas canvas = new Canvas(copy);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Math.max(1.0f, Math.min(this.f16483j0.getWidth(), this.f16483j0.getHeight()) / 160.0f));
        paint.setColor(Color.argb(220, 255, 64, 64));
        Paint paint2 = new Paint(1);
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        paint2.setColor(Color.argb(32, 255, 64, 64));
        Paint paint3 = new Paint(1);
        paint3.setStyle(style);
        paint3.setColor(Color.argb(220, 255, 200, 64));
        for (Rect rect : this.f16488o0) {
            if (rect != null) {
                int F10 = Nc.b.F(rect.k(), 0, Math.max(0, this.f16483j0.getWidth() - 1));
                int F11 = Nc.b.F(rect.l(), 0, Math.max(0, this.f16483j0.getHeight() - 1));
                float f10 = F10;
                float f11 = F11;
                float F12 = F10 + Nc.b.F(rect.j(), 1, Math.max(1, this.f16483j0.getWidth() - F10));
                float F13 = F11 + Nc.b.F(rect.g(), 1, Math.max(1, this.f16483j0.getHeight() - F11));
                canvas.drawRect(f10, f11, F12, F13, paint2);
                canvas.drawRect(f10, f11, F12, F13, paint);
                canvas.drawCircle(f10 + 2.0f, f11 + 2.0f, Math.max(1.0f, paint.getStrokeWidth() * 1.2f), paint3);
            }
        }
        this.f16484k0 = copy;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.sprite_editor_panel, (ViewGroup) null);
        this.f16473Z = inflate;
        h2();
        x2();
        w2();
        return inflate;
    }

    public final void C2() {
        if (this.f16479f0 == null) {
            return;
        }
        if (this.f16488o0.isEmpty()) {
            this.f16479f0.setText("0/0");
            return;
        }
        this.f16479f0.setText((this.f16489p0 + 1) + "/" + this.f16488o0.size());
    }

    public final void D2(List<Rect> newSprites) {
        try {
            TextureConfig l22 = l2();
            TextureConfig.f fVar = TextureConfig.f.Sprite;
            l22.type = fVar;
            SpriteData k22 = k2();
            V2(k22);
            k22.c();
            k22.b(newSprites);
            l22.type = fVar;
            X7.a.b(this.f16471X + ".config", X7.a.m().toJson(l22), M());
        } catch (Exception e10) {
            e10.printStackTrace();
            N7.c.v0("Failed to save sprite config: " + e10.getMessage());
        }
    }

    public final void E2(View view) {
        if (this.f16482i0.compareAndSet(false, true)) {
            if (view == null) {
                view = this.f16475b0;
            }
            new Thread(new C(C15045a.t1(view, C15147a.e.Left))).start();
        }
    }

    public final void F2(int alphaThreshold) {
        k2().q(alphaThreshold);
    }

    public final void G2(int value) {
        k2().r(value);
    }

    public final void H2(int value) {
        k2().s(value);
    }

    public final void I2(int value) {
        k2().t(value);
    }

    public final void J2(int value) {
        k2().u(value);
    }

    public final void K2(int value) {
        k2().v(value);
    }

    public final void L2(int value) {
        k2().w(value);
    }

    public final void M2(int value) {
        k2().x(value);
    }

    public final void N2(int minIslandSizePixels) {
        k2().y(minIslandSizePixels);
    }

    public final void O2(Ab.b sliceType) {
        k2().z(sliceType);
    }

    public void Q2(List<b> entries, LinearLayout content, boolean clearViews, B5.b entriesListener) {
        if (clearViews) {
            content.removeAllViews();
        }
        for (b bVar : entries) {
            if (bVar.f2079n == b.a.Vector) {
                C5.h.y(content, this.f70908j, bVar, 0, M());
            } else {
                C5.h.x(content, this.f70908j, bVar, 0, true, M());
            }
        }
    }

    public final List<Rect> S2() {
        int i10;
        Bitmap j22 = j2();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (j22 == null) {
            return steppedArrayList;
        }
        int width = j22.getWidth();
        int height = j22.getHeight();
        int max = Math.max(1, o2());
        int max2 = Math.max(1, p2());
        int max3 = Math.max(1, width / max);
        int max4 = Math.max(1, height / max2);
        int i11 = 0;
        while (i11 < max2) {
            int i12 = 0;
            while (i12 < max) {
                int s22 = (i12 * max3) + s2();
                int t22 = (i11 * max4) + t2();
                if (s22 < width && t22 < height) {
                    int i13 = i12 == max + (-1) ? width - s22 : max3;
                    int i14 = i11 == max2 + (-1) ? height - t22 : max4;
                    if (i13 > 0 && i14 > 0) {
                        i10 = i12;
                        steppedArrayList.add(new Rect(s22, t22, i13, i14, width, height));
                        i12 = i10 + 1;
                    }
                }
                i10 = i12;
                i12 = i10 + 1;
            }
            i11++;
        }
        return steppedArrayList;
    }

    public final List<Rect> T2() {
        Bitmap j22 = j2();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (j22 == null) {
            return steppedArrayList;
        }
        int width = j22.getWidth();
        int height = j22.getHeight();
        int max = Math.max(1, r2());
        int max2 = Math.max(1, q2());
        for (int max3 = Math.max(0, t2()); max3 < height; max3 += max2) {
            for (int max4 = Math.max(0, s2()); max4 < width; max4 += max) {
                int min = Math.min(max, width - max4);
                int min2 = Math.min(max2, height - max3);
                if (min > 0 && min2 > 0) {
                    steppedArrayList.add(new Rect(max4, max3, min, min2, width, height));
                }
            }
        }
        return steppedArrayList;
    }

    public final void U2(View view, boolean closePanel) {
        if (this.f16482i0.compareAndSet(false, true)) {
            if (view == null) {
                view = this.f16475b0;
            }
            new Thread(new B(C15045a.t1(view, C15147a.e.Left), closePanel)).start();
        }
    }

    public final void V2(SpriteData spriteData) {
        if (spriteData == null) {
            return;
        }
        spriteData.z(v2());
        spriteData.r(n2());
        spriteData.q(m2());
        spriteData.y(u2());
        spriteData.v(r2());
        spriteData.u(q2());
        spriteData.s(o2());
        spriteData.t(p2());
        spriteData.w(s2());
        spriteData.x(t2());
    }

    public final void W2(SpriteData spriteData) {
        if (spriteData == null) {
            return;
        }
        O2(spriteData.n());
        G2(spriteData.f());
        F2(spriteData.e());
        N2(spriteData.m());
        K2(spriteData.j());
        J2(spriteData.i());
        H2(spriteData.g());
        I2(spriteData.h());
        L2(spriteData.k());
        M2(spriteData.l());
    }

    public final void X2() {
        Bitmap bitmap;
        if (this.f16478e0 == null) {
            return;
        }
        Bitmap bitmap2 = this.f16485l0;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            this.f16485l0.recycle();
            this.f16485l0 = null;
        }
        if (this.f16488o0.isEmpty() || (bitmap = this.f16483j0) == null || bitmap.isRecycled()) {
            this.f16478e0.setImageDrawable(null);
            this.f16479f0.setText("0/0");
            return;
        }
        if (this.f16489p0 < 0) {
            this.f16489p0 = 0;
        }
        if (this.f16489p0 >= this.f16488o0.size()) {
            this.f16489p0 = this.f16488o0.size() - 1;
        }
        Rect rect = this.f16488o0.get(this.f16489p0);
        int F10 = Nc.b.F(rect.k(), 0, Math.max(0, this.f16483j0.getWidth() - 1));
        int F11 = Nc.b.F(rect.l(), 0, Math.max(0, this.f16483j0.getHeight() - 1));
        Bitmap createBitmap = Bitmap.createBitmap(this.f16483j0, F10, F11, Nc.b.F(rect.j(), 1, Math.max(1, this.f16483j0.getWidth() - F10)), Nc.b.F(rect.g(), 1, Math.max(1, this.f16483j0.getHeight() - F11)));
        this.f16485l0 = createBitmap;
        this.f16478e0.setImageBitmap(createBitmap);
        C2();
    }

    public final void Y2() {
        if (this.f16473Z == null || this.f16477d0 == null) {
            return;
        }
        Bitmap bitmap = this.f16484k0;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f16477d0.setImageBitmap(this.f16484k0);
            return;
        }
        Bitmap bitmap2 = this.f16483j0;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            this.f16477d0.setImageBitmap(this.f16483j0);
        } else if (i2().exists()) {
            e.F(this.f16477d0, i2());
        } else {
            this.f16477d0.setImageDrawable(null);
        }
    }

    public final List<b> e2() {
        LinkedList linkedList = new LinkedList();
        linkedList.add(g2("Frames per second", new D(), new E()));
        linkedList.add(F5.c.i(FileRequest.FIELD_TYPE, Ab.b.class, v2(), new C0466a()));
        int i10 = x.f16535a[v2().ordinal()];
        if (i10 == 1) {
            linkedList.add(new b("Grid by cell size", b.a.Header));
            linkedList.add(g2("Cell width", new C2853b(), new C2854c()));
            linkedList.add(g2("Cell height", new C2855d(), new C2856e()));
            linkedList.add(g2("Offset X", new C2857f(), new C2858g()));
            linkedList.add(g2("Offset Y", new h(), new i()));
        } else if (i10 != 2) {
            linkedList.add(new b("Automatic", b.a.Header));
            s sVar = new s();
            b.a aVar = b.a.SLInt;
            linkedList.add(new b(sVar, "Alpha Threshold", aVar));
            linkedList.add(new b(new t(), "Min island size", aVar));
        } else {
            linkedList.add(new b("Grid by cell count", b.a.Header));
            linkedList.add(g2("Columns", new j(), new l()));
            linkedList.add(g2("Rows", new m(), new n()));
            linkedList.add(g2("Offset X", new o(), new p()));
            linkedList.add(g2("Offset Y", new q(), new r()));
        }
        linkedList.add(F5.c.c("Slice", new u()));
        return linkedList;
    }

    public final List<Rect> f2() {
        int i10 = x.f16535a[v2().ordinal()];
        return i10 != 1 ? i10 != 2 ? Ab.a.c(i2(), m2(), u2()) : S2() : T2();
    }

    public final b g2(String title, F getter, G setter) {
        return new b(new w(setter, getter), title, b.a.SLInt);
    }

    public final File i2() {
        File file = this.f16472Y;
        if (file != null && file.exists()) {
            return this.f16472Y;
        }
        File file2 = new File(this.f16471X);
        if (file2.exists()) {
            this.f16472Y = file2;
            return file2;
        }
        File file3 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + this.f16471X);
        this.f16472Y = file3;
        return file3;
    }

    public final Bitmap j2() {
        Bitmap bitmap = this.f16483j0;
        if (bitmap != null && !bitmap.isRecycled()) {
            return this.f16483j0;
        }
        Bitmap p10 = com.itsmagic.engine.Engines.Engine.Texture.Utils.b.p(M(), this.f16471X);
        this.f16483j0 = p10;
        return p10;
    }

    @Override
    public EditorPanel k() {
        return new a(this.f16471X);
    }

    public final SpriteData k2() {
        TextureConfig l22 = l2();
        SpriteData v10 = l22.v();
        if (v10 != null) {
            return v10;
        }
        SpriteData spriteData = new SpriteData();
        l22.G0(spriteData);
        return spriteData;
    }

    public final TextureConfig l2() {
        TextureConfig textureConfig = this.f16487n0;
        if (textureConfig != null) {
            return textureConfig;
        }
        try {
            if (this.f16486m0 == null) {
                this.f16486m0 = new g(this.f16471X);
            }
            this.f16487n0 = this.f16486m0.u0();
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f16487n0 = new TextureConfig();
        }
        return this.f16487n0;
    }

    public final int m2() {
        SpriteData k22 = k2();
        if (k22 != null) {
            return k22.e();
        }
        return 1;
    }

    public final int n2() {
        SpriteData k22 = k2();
        if (k22 != null) {
            return k22.f();
        }
        return 30;
    }

    public final int o2() {
        SpriteData k22 = k2();
        if (k22 != null) {
            return k22.g();
        }
        return 4;
    }

    public final int p2() {
        SpriteData k22 = k2();
        if (k22 != null) {
            return k22.h();
        }
        return 4;
    }

    public final int q2() {
        SpriteData k22 = k2();
        if (k22 != null) {
            return k22.i();
        }
        return 32;
    }

    public final int r2() {
        SpriteData k22 = k2();
        if (k22 != null) {
            return k22.j();
        }
        return 32;
    }

    public final int s2() {
        SpriteData k22 = k2();
        if (k22 != null) {
            return k22.k();
        }
        return 0;
    }

    public final int t2() {
        SpriteData k22 = k2();
        if (k22 != null) {
            return k22.l();
        }
        return 0;
    }

    public final int u2() {
        SpriteData k22 = k2();
        if (k22 != null) {
            return k22.m();
        }
        return 1;
    }

    public final Ab.b v2() {
        SpriteData k22 = k2();
        return k22 != null ? k22.n() : Ab.b.Automatic;
    }

    public final void w2() {
        new Thread(new z()).start();
    }

    public final void x2() {
        new Thread(new A()).start();
    }

    public final void y2() {
        SpriteData k22 = k2();
        W2(k22);
        this.f16488o0.clear();
        if (k22 != null) {
            for (int i10 = 0; i10 < k22.C(); i10++) {
                Rect B10 = k22.B(i10);
                if (B10 != null) {
                    this.f16488o0.add(Rect.a(B10));
                }
            }
        }
        this.f16489p0 = 0;
        B2();
        X2();
        C2();
    }

    public final void z2() {
        if (this.f16488o0.isEmpty()) {
            return;
        }
        int i10 = this.f16489p0 + 1;
        this.f16489p0 = i10;
        if (i10 >= this.f16488o0.size()) {
            this.f16489p0 = 0;
        }
        X2();
    }
}

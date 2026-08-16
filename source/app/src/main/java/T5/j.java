package t5;

import N9.a;
import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Gradient.Entry;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine2.R;
import r4.C15147a;
import t5.f;

public class j extends EditorPanel {

    public static final String f117041h0 = "GradientEditor";

    public static ColorINT f117042i0 = new ColorINT("#10b178");

    public static ColorINT f117043j0 = new ColorINT("#10b178");

    public static ColorINT f117044k0 = new ColorINT(20, 20, 20);

    public static ColorINT f117045l0 = new ColorINT(0, 0, 0);

    public static ColorINT f117046m0 = new ColorINT(30, 30, 30);

    public Gradient f117047X;

    public Bitmap f117048Y;

    public ImageView f117049Z;

    public FrameLayout f117050a0;

    public View f117051b0;

    public ImageView f117052c0;

    public EditText f117053d0;

    public View f117054e0;

    public int f117055f0;

    public a.b f117056g0;

    public class a implements Runnable {

        public class RunnableC2014a implements Runnable {

            public final int f117058b;

            public RunnableC2014a(final int val$w) {
                this.f117058b = val$w;
            }

            @Override
            public void run() {
                int i10 = j.this.f117055f0;
                int i11 = this.f117058b;
                if (i10 != i11) {
                    j.this.f117055f0 = i11;
                    j.this.B1();
                }
            }
        }

        public a() {
        }

        @Override
        public void run() {
            N7.c.c0(new RunnableC2014a(j.this.f117050a0.getWidth()));
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class c implements View.OnTouchListener {

        public float f117061b;

        public float f117062c;

        public float f117063d;

        public boolean f117064e;

        public boolean f117065f;

        public final ImageView f117066g;

        public final int f117067h;

        public final int f117068i;

        public final Entry f117069j;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                j.this.B1();
            }
        }

        public c(final ImageView val$img, final int val$totalSize, final int val$edgeMarginPx, final Entry val$entry) {
            this.f117066g = val$img;
            this.f117067h = val$totalSize;
            this.f117068i = val$edgeMarginPx;
            this.f117069j = val$entry;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
        
            if (r5 > (r6 - r4.f117068i)) goto L21;
         */
        @Override
        @SuppressLint({"ClickableViewAccessibility"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouch(View v10, MotionEvent event) {
            int action = event.getAction();
            if (action == 0) {
                this.f117061b = event.getRawX();
                float f10 = ((FrameLayout.LayoutParams) this.f117066g.getLayoutParams()).leftMargin;
                this.f117062c = f10;
                float f11 = this.f117067h;
                this.f117063d = f11;
                int i10 = this.f117068i;
                this.f117064e = f10 <= ((float) i10);
                this.f117065f = f10 >= f11 - ((float) i10);
                return true;
            }
            if (action != 1) {
                if (action == 2) {
                    float min = Math.min(this.f117062c + (event.getRawX() - this.f117061b), this.f117067h);
                    float f12 = 0.0f;
                    float max = Math.max(0.0f, min);
                    if (!this.f117064e || max >= this.f117068i) {
                        if (this.f117065f) {
                            f12 = this.f117063d;
                        }
                        f12 = max;
                    }
                    float max2 = f12 / Math.max(1.0f, this.f117067h);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f117066g.getLayoutParams();
                    layoutParams.leftMargin = (int) f12;
                    this.f117066g.setLayoutParams(layoutParams);
                    this.f117069j.f(max2);
                    j.this.f117053d0.setText(this.f117069j.d() + "");
                    j.this.f117047X.o();
                    j.this.D1();
                    return true;
                }
                if (action != 3) {
                    return false;
                }
            }
            j.this.C1(this.f117069j);
            N7.c.c0(new a());
            return true;
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {

        public final Entry f117072b;

        public class a implements f.j {
            public a() {
            }

            @Override
            public void a(ColorINT colorINT) {
                d.this.f117072b.e(colorINT);
                j.this.f117052c0.setBackgroundColor(d.this.f117072b.c().intColor);
                j.this.B1();
                j.this.D1();
            }
        }

        public d(final Entry val$entry) {
            this.f117072b = val$entry;
        }

        @Override
        public void click(View view) {
            t5.f.L1(this.f117072b.c(), view, j.this.M(), C15147a.e.Left, new a());
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {

        public final Entry f117075b;

        public e(final Entry val$entry) {
            this.f117075b = val$entry;
        }

        @Override
        public void click(View view) {
            j.this.f117047X.q(this.f117075b);
            j.this.f117047X.o();
            j.this.B1();
            j.this.D1();
        }
    }

    public class f implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                j.this.f117049Z.setImageBitmap(j.this.f117048Y);
                if (j.this.f117056g0 != null) {
                    j.this.f117056g0.a();
                }
            }
        }

        public f() {
        }

        @Override
        public void run() {
            j.this.f117047X.v(j.this.f117048Y);
            j.this.U0(new a());
        }
    }

    public j() {
        super(null, "Gradient Editor");
        Gradient gradient = new Gradient();
        this.f117047X = gradient;
        gradient.n();
        super.e1(false);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void B1() {
        this.f117050a0.removeAllViews();
        int k02 = Nc.b.k0(24.0f);
        int k03 = Nc.b.k0(16.0f);
        if (this.f117055f0 == 0) {
            this.f117055f0 = this.f117050a0.getWidth();
        }
        int i10 = this.f117055f0 - k02;
        if (this.f117047X.j() == 0) {
            this.f117047X.n();
        }
        for (int i11 = 0; i11 < this.f117047X.j(); i11++) {
            Entry i12 = this.f117047X.i(i11);
            ImageView imageView = new ImageView(M());
            this.f117050a0.addView(imageView);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams.leftMargin = (int) (i10 * i12.d());
            layoutParams.width = k02;
            layoutParams.height = k02;
            imageView.setLayoutParams(layoutParams);
            Vc.e.U(imageView, R.drawable.gradient_point_v2);
            Vc.e.y(imageView, M(), i12.c());
            imageView.setOnTouchListener(new c(imageView, i10, k03, i12));
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.gradient_editor_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        if (this.f117047X == null) {
            R0();
            return inflate;
        }
        this.f117049Z = (ImageView) inflate.findViewById(R.id.gradientImg);
        this.f117050a0 = (FrameLayout) inflate.findViewById(R.id.points);
        this.f117052c0 = (ImageView) inflate.findViewById(R.id.selectedColor);
        this.f117053d0 = (EditText) inflate.findViewById(R.id.locationEdit);
        this.f117051b0 = inflate.findViewById(R.id.selectedOptions);
        this.f117054e0 = inflate.findViewById(R.id.trash);
        this.f117051b0.setVisibility(4);
        this.f117048Y = Bitmap.createBitmap(256, 10, Bitmap.Config.ARGB_8888);
        D1();
        B1();
        return inflate;
    }

    public final void C1(Entry entry) {
        this.f117051b0.setVisibility(0);
        this.f117052c0.setBackgroundColor(entry.c().intColor);
        this.f117052c0.setOnClickListener(new d(entry));
        this.f117053d0.setText(entry.d() + "");
        this.f117054e0.setOnClickListener(new e(entry));
    }

    public final void D1() {
        O9.b.d(new f());
    }

    @Override
    public EditorPanel k() {
        return new j(this.f117047X, this.f117056g0);
    }

    @Override
    public void n1() {
        super.n1();
        FrameLayout frameLayout = this.f117050a0;
        if (frameLayout != null) {
            frameLayout.post(new a());
        }
    }

    public j(Gradient gradient, a.b listener) {
        super(null, "Gradient Editor");
        gradient.getClass();
        super.e1(false);
        this.f117047X = gradient;
        this.f117056g0 = listener;
    }
}

package i5;

import JAVARuntime.Runnable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine2.R;
import org.ITsMagic.Atlas.InvalidBufferAllocationException;
import org.ITsMagic.Atlas.e;
import r4.C15147a;
import ub.n;
import ve.j;

public class C13585a extends EditorPanel {

    public static final String f91416l0 = "UVBakeProgressPanel";

    public FloatingPanelArea f91417X;

    public TextView f91418Y;

    public TextView f91419Z;

    public TextView f91420a0;

    public TextView f91421b0;

    public String f91422c0;

    public String f91423d0;

    public String f91424e0;

    public String f91425f0;

    public e f91426g0;

    public e.c f91427h0;

    public LinearLayout f91428i0;

    public boolean f91429j0 = false;

    public boolean f91430k0;

    public class C1751a implements e.c {

        public class RunnableC1752a implements Runnable {

            public final String f91432b;

            public RunnableC1752a(final String val$step) {
                this.f91432b = val$step;
            }

            @Override
            public void run() {
                C13585a.this.f91422c0 = this.f91432b;
                C13585a.this.f91427h0.b(this.f91432b);
            }
        }

        public class b implements Runnable {

            public final int f91434b;

            public final int f91435c;

            public final float f91436d;

            public final String f91437e;

            public b(final int val$executed, final int val$total, final float val$progress, final String val$tda) {
                this.f91434b = val$executed;
                this.f91435c = val$total;
                this.f91436d = val$progress;
                this.f91437e = val$tda;
            }

            @Override
            public void run() {
                C13585a.this.f91423d0 = this.f91434b + " / " + this.f91435c;
                C13585a.this.f91424e0 = Nc.b.v0(this.f91436d, 1) + j.f121589a;
                String str = this.f91437e;
                if (str == null || str.isEmpty()) {
                    C13585a.this.f91425f0 = "";
                } else {
                    C13585a.this.f91425f0 = "Remain: " + this.f91437e;
                }
                C13585a.this.f91427h0.a(this.f91434b, this.f91435c, this.f91436d, this.f91437e);
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                if (C13585a.this.f91417X != null) {
                    C13585a.this.f91417X.u0();
                    C13585a.this.f91417X = null;
                }
            }
        }

        public class d implements Runnable {

            public final Vertex f91440b;

            public final n f91441c;

            public d(final Vertex val$outputVertex, final n val$atlasTexture) {
                this.f91440b = val$outputVertex;
                this.f91441c = val$atlasTexture;
            }

            @Override
            public void run() {
                C13585a.this.f91427h0.c(this.f91440b, this.f91441c);
            }
        }

        public C1751a() {
        }

        @Override
        public void a(int executed, int total, float progress, String tda) {
            N7.c.j0(new b(executed, total, progress, tda));
        }

        @Override
        public void b(String step) {
            N7.c.j0(new RunnableC1752a(step));
        }

        @Override
        public void c(Vertex outputVertex, n atlasTexture) {
            N7.c.j0(new c());
            K8.a.I(new d(outputVertex, atlasTexture));
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View v10) {
            if (C13585a.this.f91417X != null) {
                C13585a.this.f91417X.u0();
                C13585a.this.f91417X = null;
            }
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public static FloatingPanelArea w1(boolean useSimpleWhiteAtlas, e generator, e.c listener) {
        C13585a c13585a = new C13585a();
        FloatingPanelArea m10 = C15147a.m(c13585a, N7.c.g(200), N7.c.f(150));
        c13585a.f91417X = m10;
        c13585a.f91426g0 = generator;
        c13585a.f91427h0 = listener;
        c13585a.f91430k0 = useSimpleWhiteAtlas;
        m10.T();
        m10.F1(false);
        m10.E1(false);
        return m10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.bake_progress_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new c());
        this.f91428i0 = (LinearLayout) inflate.findViewById(R.id.content);
        this.f91418Y = (TextView) inflate.findViewById(R.id.tittle);
        this.f91419Z = (TextView) inflate.findViewById(R.id.content1);
        this.f91420a0 = (TextView) inflate.findViewById(R.id.content2);
        this.f91421b0 = (TextView) inflate.findViewById(R.id.content3);
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
    }

    @Override
    public EditorPanel k() {
        return new C13585a();
    }

    @Override
    public void n1() {
        super.n1();
        this.f91418Y.setText(this.f91422c0);
        this.f91419Z.setText(this.f91423d0);
        this.f91420a0.setText(this.f91424e0);
        this.f91421b0.setText(this.f91425f0);
        if (this.f91429j0) {
            return;
        }
        this.f91429j0 = true;
        try {
            this.f91426g0.l(this.f91430k0, new C1751a());
        } catch (InvalidBufferAllocationException e10) {
            e10.printStackTrace();
            this.f91422c0 = "Ops!";
            this.f91423d0 = "Unable to allocate native memory on your phone.";
            this.f91424e0 = "Some smart phones have this problem in the implementation of C++";
            this.f91425f0 = "We are looking for the solution.";
            Button button = new Button(M());
            button.setText("Close");
            button.setOnClickListener(new b());
            this.f91428i0.addView(button);
        }
    }
}

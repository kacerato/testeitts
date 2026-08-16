package B4;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine2.R;
import org.ITsMagic.Atlas.InvalidBufferAllocationException;
import org.ITsMagic.Atlas.g;
import r4.C15147a;
import ve.j;

public class c extends EditorPanel {

    public static final String f1487k0 = "BakeProgress";

    public FloatingPanelArea f1488X;

    public TextView f1489Y;

    public TextView f1490Z;

    public TextView f1491a0;

    public TextView f1492b0;

    public String f1493c0;

    public String f1494d0;

    public String f1495e0;

    public String f1496f0;

    public g f1497g0;

    public LinearLayout f1498h0;

    public boolean f1499i0;

    public View f1500j0;

    public class a implements g.b {

        public class RunnableC0028a implements Runnable {
            public RunnableC0028a() {
            }

            @Override
            public void run() {
                if (c.this.f1488X != null) {
                    c.this.f1500j0.setVisibility(0);
                    N7.c.f0(c.this);
                    c.this.f1488X.floatingW = N7.c.g(220);
                    c.this.f1488X.floatingH = N7.c.f(160);
                    c.this.f1488X.floatingX = (1.0f - c.this.f1488X.floatingW) - 0.03f;
                    c.this.f1488X.floatingY = (1.0f - c.this.f1488X.floatingH) - 0.05f;
                    c.this.f1488X.f70757x = c.this.f1488X.floatingX;
                    c.this.f1488X.f70758y = c.this.f1488X.floatingY;
                    c.this.f1488X.width = c.this.f1488X.floatingW;
                    c.this.f1488X.height = c.this.f1488X.floatingH;
                    c.this.f1488X.M0();
                }
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                if (c.this.f1488X != null) {
                    c.this.f1488X.u0();
                    c.this.f1488X = null;
                }
            }
        }

        public a() {
        }

        @Override
        public void a(int executed, int total, float progress, String tda) {
            c.this.f1494d0 = executed + " / " + total;
            c.this.f1495e0 = Nc.b.v0(progress, 1) + j.f121589a;
            if (tda == null || tda.isEmpty()) {
                c.this.f1496f0 = "";
                return;
            }
            c.this.f1496f0 = "Remain: " + tda;
        }

        @Override
        public void b(String step) {
            c.this.f1493c0 = step;
        }

        @Override
        public void c(GameObject gameObject) {
            gameObject.Q1();
            N7.c.j0(new b());
        }

        @Override
        public void d() {
            N7.c.j0(new RunnableC0028a());
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View v10) {
            N7.c.f0(c.this);
            if (c.this.f1488X != null) {
                c.this.f1488X.u0();
                c.this.f1488X = null;
            }
        }
    }

    public class ViewOnTouchListenerC0029c implements View.OnTouchListener {
        public ViewOnTouchListenerC0029c() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View view) {
            c.this.f1500j0.setVisibility(8);
            c.this.f1497g0.o();
        }
    }

    public c() {
        super(null, "Bake generator");
        this.f1499i0 = false;
    }

    public static FloatingPanelArea x1(Context context, g generator) {
        c cVar = new c();
        FloatingPanelArea n10 = C15147a.n(cVar, 0.0f, 0.0f, 1.0f, 1.0f);
        cVar.f1488X = n10;
        cVar.f1497g0 = generator;
        n10.T();
        n10.F1(false);
        n10.E1(false);
        n10.N1(false);
        return n10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.bake_progress_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new ViewOnTouchListenerC0029c());
        View findViewById = inflate.findViewById(R.id.finishButton);
        this.f1500j0 = findViewById;
        findViewById.setVisibility(8);
        this.f1500j0.setOnClickListener(new d());
        this.f1498h0 = (LinearLayout) inflate.findViewById(R.id.content);
        this.f1489Y = (TextView) inflate.findViewById(R.id.tittle);
        this.f1490Z = (TextView) inflate.findViewById(R.id.content1);
        this.f1491a0 = (TextView) inflate.findViewById(R.id.content2);
        this.f1492b0 = (TextView) inflate.findViewById(R.id.content3);
        N7.c.a(this);
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.f0(this);
    }

    @Override
    public EditorPanel k() {
        return new c();
    }

    @Override
    public void n1() {
        super.n1();
        this.f1489Y.setText(this.f1493c0);
        this.f1490Z.setText(this.f1494d0);
        this.f1491a0.setText(this.f1495e0);
        this.f1492b0.setText(this.f1496f0);
        if (this.f1499i0) {
            return;
        }
        this.f1499i0 = true;
        try {
            this.f1497g0.p(new a());
        } catch (InvalidBufferAllocationException e10) {
            e10.printStackTrace();
            this.f1493c0 = "Ops!";
            this.f1494d0 = "Unable to allocate native memory on your phone.";
            this.f1495e0 = "Some smart phones have this problem in the implementation of C++";
            this.f1496f0 = "We are looking for the solution.";
            Button button = new Button(M());
            button.setText("Close");
            button.setOnClickListener(new b());
            this.f1498h0.addView(button);
        }
    }
}

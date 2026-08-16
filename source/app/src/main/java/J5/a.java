package J5;

import K5.d;
import K5.e;
import N7.c;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.daimajia.numberprogressbar.NumberProgressBar;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.u;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import r4.C15147a;

public class a extends EditorPanel {

    public static final String f10258f0 = "ITsMagicLoadingSplashScreenPanel";

    public static a f10259g0;

    public static final AtomicBoolean f10260h0 = new AtomicBoolean();

    public FloatingPanelArea f10261X;

    public TextView f10262Y;

    public TextView f10263Z;

    public TextView f10264a0;

    public TextView f10265b0;

    public NumberProgressBar f10266c0;

    public int f10267d0 = 0;

    public List<b> f10268e0 = new SteppedArrayList(Arrays.asList(new e(), new d(), new K5.a(), new K5.b()));

    public class ViewOnTouchListenerC0253a implements View.OnTouchListener {
        public ViewOnTouchListenerC0253a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public static void q1() {
        if (f10260h0.get()) {
            u.j();
            return;
        }
        if (f10259g0 != null) {
            return;
        }
        a aVar = new a();
        f10259g0 = aVar;
        FloatingPanelArea p10 = C15147a.p(aVar, 0.0f, 0.0f, 1.0f, 1.0f);
        p10.F1(false);
        p10.E1(true);
        p10.T();
        p10.N1(false);
        p10.M0();
        aVar.f10261X = p10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.loading_project_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new ViewOnTouchListenerC0253a());
        this.f10262Y = (TextView) inflate.findViewById(R.id.progress_text);
        this.f10266c0 = (NumberProgressBar) inflate.findViewById(R.id.progressBar);
        this.f10263Z = (TextView) inflate.findViewById(R.id.progress_text2);
        this.f10264a0 = (TextView) inflate.findViewById(R.id.version);
        this.f10265b0 = (TextView) inflate.findViewById(R.id.step);
        c.a(this);
        this.f10268e0.get(0).g();
        this.f10263Z.setText(this.f10268e0.get(0).e());
        this.f10262Y.setText(this.f10268e0.get(0).d());
        this.f10266c0.setProgress(0);
        this.f10264a0.setText(W7.b.f27306f.b(M()));
        this.f10265b0.setText("0/" + this.f10268e0.size());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        c.f0(this);
        f10259g0 = null;
    }

    @Override
    public EditorPanel k() {
        return new a();
    }

    @Override
    public void n1() {
        super.n1();
        this.f10268e0.get(this.f10267d0).l();
        if (this.f10268e0.get(this.f10267d0).f()) {
            p1();
        }
        r1();
    }

    public final void p1() {
        if (this.f10267d0 < this.f10268e0.size() - 1) {
            int i10 = this.f10267d0 + 1;
            this.f10267d0 = i10;
            this.f10268e0.get(i10).g();
            r1();
            return;
        }
        FloatingPanelArea floatingPanelArea = this.f10261X;
        if (floatingPanelArea != null) {
            floatingPanelArea.u0();
            this.f10261X = null;
        }
        f10260h0.set(true);
    }

    public final void r1() {
        b bVar = this.f10268e0.get(this.f10267d0);
        this.f10263Z.setText(bVar.e());
        this.f10262Y.setText(bVar.d());
        this.f10266c0.setProgress((int) (bVar.c() * 100.0f));
        this.f10265b0.setText((this.f10267d0 + 1) + "/" + this.f10268e0.size());
    }

    @Override
    public void z(o4.b engineUpdateData) {
        super.z(engineUpdateData);
        this.f10268e0.get(this.f10267d0).a();
    }
}

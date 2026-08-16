package I5;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.daimajia.numberprogressbar.NumberProgressBar;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine2.R;
import java.util.concurrent.atomic.AtomicBoolean;
import org.openjdk.tools.doclint.DocLint;
import r4.C15147a;
import ve.j;

public class d extends EditorPanel {

    public static final String f8865d0 = "LoadingWorld";

    public static AtomicBoolean f8866e0 = new AtomicBoolean();

    public FloatingPanelArea f8867X;

    public TextView f8868Y;

    public TextView f8869Z;

    public NumberProgressBar f8870a0;

    public String f8871b0;

    public String f8872c0;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            if (d.this.f8867X != null) {
                d.this.f8867X.u0();
                d.this.f8867X = null;
            }
        }
    }

    public static boolean r1() {
        return false;
    }

    public static void s1(Context context) {
        if (f8866e0.get()) {
            return;
        }
        float g10 = N7.c.g(250);
        float f10 = N7.c.f(85);
        if (r1()) {
            f10 = N7.c.f(225);
        }
        d dVar = new d();
        FloatingPanelArea n10 = C15147a.n(dVar, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
        n10.F1(false);
        n10.E1(false);
        n10.T();
        n10.N1(false);
        n10.M0();
        dVar.f8867X = n10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.loading_world_panel, (ViewGroup) null);
        this.f8868Y = (TextView) inflate.findViewById(R.id.progress_text);
        this.f8870a0 = (NumberProgressBar) inflate.findViewById(R.id.progressBar);
        this.f8869Z = (TextView) inflate.findViewById(R.id.progress_text2);
        if (com.itsmagic.engine.Engines.Engine.World.a.f80030c == null) {
            N7.c.a(this);
        }
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.f0(this);
    }

    @Override
    public EditorPanel k() {
        return new d();
    }

    @Override
    public void n1() {
        super.n1();
        this.f8869Z.setText(this.f8872c0);
        this.f8868Y.setText(this.f8871b0);
        this.f8870a0.setProgress((int) (com.itsmagic.engine.Engines.Engine.World.a.u() * 100.0f));
        if (this.f8867X == null || !com.itsmagic.engine.Engines.Engine.World.a.z()) {
            return;
        }
        this.f8867X.u0();
        this.f8867X = null;
    }

    @Override
    public void z(o4.b engineUpdateData) {
        super.z(engineUpdateData);
        if (com.itsmagic.engine.Engines.Engine.World.a.z()) {
            this.f8871b0 = "";
            N7.c.j0(new a());
            return;
        }
        String t10 = com.itsmagic.engine.Engines.Engine.World.a.t();
        if (t10 == null || t10.isEmpty()) {
            this.f8872c0 = "";
        } else {
            this.f8872c0 = t10;
            String[] split = t10.split(DocLint.SEPARATOR);
            if (split.length >= 3) {
                String str = split[0];
                str.substring(1, str.length() - 1);
                String str2 = split[1];
                str2.substring(1, str2.length() - 1);
                if (split.length >= 4) {
                    String str3 = split[2];
                    String substring = str3.substring(1, str3.length() - 1);
                    String str4 = split[3];
                    String v10 = Tc.b.v(str4.substring(1, str4.length() - 1));
                    this.f8872c0 = substring + " " + (Tc.b.Y(Tc.b.O(v10), 12) + Tc.b.t(v10)) + " " + ((int) (com.itsmagic.engine.Engines.Engine.World.a.x() * 100.0f)) + j.f121589a;
                } else {
                    String str5 = split[2];
                    this.f8872c0 = str5.substring(1, str5.length() - 1) + " " + ((int) (com.itsmagic.engine.Engines.Engine.World.a.x() * 100.0f)) + j.f121589a;
                }
            } else {
                this.f8872c0 = t10;
            }
        }
        int v11 = com.itsmagic.engine.Engines.Engine.World.a.v();
        int s10 = com.itsmagic.engine.Engines.Engine.World.a.s();
        this.f8871b0 = v11 + "/" + s10 + " - " + ((int) ((v11 / s10) * 100.0f)) + j.f121589a;
    }
}

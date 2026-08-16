package I5;

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

public class c extends EditorPanel {

    public static final String f8855e0 = "LoadingWorld";

    public static AtomicBoolean f8856f0 = new AtomicBoolean();

    public FloatingPanelArea f8857X;

    public TextView f8858Y;

    public TextView f8859Z;

    public NumberProgressBar f8860a0;

    public String f8861b0;

    public String f8862c0;

    public b f8863d0;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            if (c.this.f8857X != null) {
                c.this.f8857X.u0();
                c.this.f8857X = null;
            }
        }
    }

    public interface b {
        float a();

        int b();

        float c();

        int d();

        boolean finished();

        String getMessage();
    }

    public c(b listener) {
        this.f8863d0 = listener;
    }

    public static void r1(b listener) {
        if (f8856f0.get()) {
            return;
        }
        float g10 = N7.c.g(250);
        float f10 = N7.c.f(85);
        c cVar = new c(listener);
        FloatingPanelArea n10 = C15147a.n(cVar, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
        n10.F1(false);
        n10.E1(false);
        n10.T();
        n10.N1(false);
        n10.M0();
        cVar.f8857X = n10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.loading_world_panel, (ViewGroup) null);
        this.f8858Y = (TextView) inflate.findViewById(R.id.progress_text);
        this.f8860a0 = (NumberProgressBar) inflate.findViewById(R.id.progressBar);
        this.f8859Z = (TextView) inflate.findViewById(R.id.progress_text2);
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.f0(this);
    }

    @Override
    public EditorPanel k() {
        return new c(this.f8863d0);
    }

    @Override
    public void n1() {
        super.n1();
        this.f8859Z.setText(this.f8862c0);
        this.f8858Y.setText(this.f8861b0);
        this.f8860a0.setProgress((int) (this.f8863d0.a() * 100.0f));
        if (this.f8857X == null || !this.f8863d0.finished()) {
            return;
        }
        this.f8857X.u0();
        this.f8857X = null;
    }

    @Override
    public void z(o4.b engineUpdateData) {
        super.z(engineUpdateData);
        if (this.f8863d0.finished()) {
            this.f8861b0 = "";
            N7.c.j0(new a());
            return;
        }
        String message = this.f8863d0.getMessage();
        if (message == null || message.isEmpty()) {
            this.f8862c0 = "";
        } else {
            this.f8862c0 = message;
            String[] split = message.split(DocLint.SEPARATOR);
            if (split.length >= 3) {
                String str = split[0];
                str.substring(1, str.length() - 1);
                String str2 = split[1];
                str2.substring(1, str2.length() - 1);
                if (split.length >= 4) {
                    String str3 = split[2];
                    String substring = str3.substring(1, str3.length() - 1);
                    String str4 = split[3];
                    this.f8862c0 = substring + " " + Tc.b.v(str4.substring(1, str4.length() - 1)) + " " + ((int) (this.f8863d0.c() * 100.0f)) + j.f121589a;
                } else {
                    String str5 = split[2];
                    this.f8862c0 = str5.substring(1, str5.length() - 1) + " " + ((int) (this.f8863d0.c() * 100.0f)) + j.f121589a;
                }
            } else {
                this.f8862c0 = message;
            }
        }
        int b10 = this.f8863d0.b();
        int d10 = this.f8863d0.d();
        if (d10 <= 0) {
            this.f8861b0 = "Loaded: " + b10;
            return;
        }
        this.f8861b0 = b10 + "/" + d10 + " - " + ((int) ((b10 / d10) * 100.0f)) + j.f121589a;
    }
}

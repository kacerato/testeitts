package I5;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine2.R;
import java.util.concurrent.atomic.AtomicBoolean;
import org.openjdk.tools.doclint.DocLint;
import r4.C15147a;
import ve.j;

public class b extends EditorPanel {

    public static final String f8846d0 = "LoadingWorld";

    public static AtomicBoolean f8847e0 = new AtomicBoolean();

    public FloatingPanelArea f8848X;

    public TextView f8849Y;

    public TextView f8850Z;

    public String f8851a0;

    public String f8852b0;

    public InterfaceC0224b f8853c0;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            if (b.this.f8848X != null) {
                b.this.f8848X.u0();
                b.this.f8848X = null;
            }
        }
    }

    public interface InterfaceC0224b {
        float a();

        int b();

        float c();

        int d();

        boolean finished();

        String getMessage();
    }

    public b(InterfaceC0224b listener) {
        this.f8853c0 = listener;
    }

    public static void r1(InterfaceC0224b listener) {
        if (f8847e0.get()) {
            return;
        }
        float g10 = N7.c.g(150);
        float f10 = N7.c.f(48);
        b bVar = new b(listener);
        FloatingPanelArea n10 = C15147a.n(bVar, 0.5f - (g10 / 2.0f), 0.75f - (f10 / 2.0f), g10, f10);
        n10.F1(false);
        n10.E1(false);
        n10.T();
        n10.N1(false);
        n10.M0();
        bVar.f8848X = n10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.importing_model_panel, (ViewGroup) null);
        this.f8849Y = (TextView) inflate.findViewById(R.id.progress_text);
        this.f8850Z = (TextView) inflate.findViewById(R.id.progress_text2);
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.f0(this);
    }

    @Override
    public EditorPanel k() {
        return new b(this.f8853c0);
    }

    @Override
    public void n1() {
        super.n1();
        this.f8850Z.setText(this.f8852b0);
        this.f8849Y.setText(this.f8851a0);
        if (this.f8848X == null || !this.f8853c0.finished()) {
            return;
        }
        this.f8848X.u0();
        this.f8848X = null;
    }

    @Override
    public void z(o4.b engineUpdateData) {
        super.z(engineUpdateData);
        if (this.f8853c0.finished()) {
            this.f8851a0 = "";
            N7.c.j0(new a());
            return;
        }
        String message = this.f8853c0.getMessage();
        if (message == null || message.isEmpty()) {
            this.f8852b0 = "";
        } else {
            this.f8852b0 = message;
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
                    this.f8852b0 = substring + " " + Tc.b.v(str4.substring(1, str4.length() - 1)) + " " + ((int) (this.f8853c0.c() * 100.0f)) + j.f121589a;
                } else {
                    String str5 = split[2];
                    this.f8852b0 = str5.substring(1, str5.length() - 1) + " " + ((int) (this.f8853c0.c() * 100.0f)) + j.f121589a;
                }
            } else {
                this.f8852b0 = message;
            }
        }
        int b10 = this.f8853c0.b();
        int d10 = this.f8853c0.d();
        this.f8851a0 = b10 + "/" + d10 + " - " + ((int) ((b10 / d10) * 100.0f)) + j.f121589a;
    }
}

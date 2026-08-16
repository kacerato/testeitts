package d6;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.daimajia.numberprogressbar.NumberProgressBar;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine2.R;
import ob.b;
import r4.C15147a;

@Deprecated
public class C12878c extends EditorPanel {

    public static final String f84174Z = "DownloadProgress";

    public TextView f84175X;

    public NumberProgressBar f84176Y;

    public class a implements b.a {

        public int f84177a = 0;

        public boolean f84178b = false;

        public a() {
        }

        @Override
        public boolean run() {
            if (this.f84178b) {
                if (!com.itsmagic.engine.Engines.Engine.World.a.A()) {
                    int i10 = this.f84177a + 1;
                    this.f84177a = i10;
                    if (i10 >= 5) {
                        C12878c.this.R0();
                        return false;
                    }
                }
            } else if (com.itsmagic.engine.Engines.Engine.World.a.A()) {
                this.f84178b = true;
            }
            return true;
        }
    }

    public C12878c() {
        super(null, "Download progress");
    }

    public static C12878c r1() {
        C12878c c12878c = new C12878c();
        float g10 = N7.c.g(250);
        float f10 = N7.c.f(60);
        FloatingPanelArea n10 = C15147a.n(c12878c, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
        n10.T();
        n10.E1(true);
        n10.N1(false);
        return c12878c;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.download_progress_panel, (ViewGroup) null);
        this.f84176Y = (NumberProgressBar) inflate.findViewById(R.id.progressBar);
        TextView textView = (TextView) inflate.findViewById(R.id.progress_text);
        this.f84175X = textView;
        textView.setText("");
        N7.c.a(this);
        K8.a.J(new ob.b(new a()));
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.f0(this);
    }

    @Override
    public EditorPanel k() {
        return new C12878c();
    }

    public void p1(int progress, String text) {
        this.f84176Y.setProgress(progress);
        this.f84175X.setText(text);
    }

    public void q1(String text) {
        this.f84175X.setText(text);
    }
}

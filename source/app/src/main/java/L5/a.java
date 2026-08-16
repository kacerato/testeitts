package L5;

import M5.d;
import M5.e;
import M5.f;
import M5.g;
import M5.i;
import M5.k;
import N7.c;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.daimajia.numberprogressbar.NumberProgressBar;
import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Core.Components.ProjectController.Utils.ProjectVersion;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;
import r4.C15147a;

public class a extends EditorPanel {

    public static final String f11592h0 = "ProjectLoadingPanel";

    public static a f11593i0;

    public FloatingPanelArea f11594X;

    public TextView f11595Y;

    public TextView f11596Z;

    public TextView f11597a0;

    public TextView f11598b0;

    public NumberProgressBar f11599c0;

    public String f11601e0;

    public I5.a f11600d0 = new I5.a();

    public int f11602f0 = 0;

    public List<b> f11603g0 = new SteppedArrayList();

    public class ViewOnTouchListenerC0378a implements View.OnTouchListener {
        public ViewOnTouchListenerC0378a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public a(String projectName) {
        this.f11601e0 = projectName;
    }

    public static void p1(String productID, String projectName) {
        if (f11593i0 != null) {
            return;
        }
        a aVar = new a(projectName);
        aVar.f11603g0.add(0, new d(productID));
        f11593i0 = aVar;
        FloatingPanelArea p10 = C15147a.p(aVar, 0.0f, 0.0f, 1.0f, 1.0f);
        p10.F1(false);
        p10.E1(true);
        p10.T();
        p10.N1(false);
        p10.M0();
        aVar.f11594X = p10;
    }

    private void q1() {
        if (this.f11602f0 < this.f11603g0.size() - 1) {
            int i10 = this.f11602f0 + 1;
            this.f11602f0 = i10;
            this.f11603g0.get(i10).k();
            s1();
            return;
        }
        FloatingPanelArea floatingPanelArea = this.f11594X;
        if (floatingPanelArea != null) {
            floatingPanelArea.u0();
            this.f11594X = null;
        }
    }

    public static void r1(String projectName) {
        if (f11593i0 != null) {
            return;
        }
        a aVar = new a(projectName);
        f11593i0 = aVar;
        FloatingPanelArea p10 = C15147a.p(aVar, 0.0f, 0.0f, 1.0f, 1.0f);
        p10.F1(false);
        p10.E1(true);
        p10.T();
        p10.N1(false);
        p10.M0();
        aVar.f11594X = p10;
    }

    private void s1() {
        b bVar = this.f11603g0.get(this.f11602f0);
        this.f11596Z.setText(bVar.i());
        this.f11595Y.setText(bVar.h());
        this.f11599c0.setProgress((int) (bVar.e() * 100.0f));
        this.f11598b0.setText((this.f11602f0 + 1) + "/" + this.f11603g0.size());
    }

    @Override
    public View C0() {
        ProjectVersion projectVersion = null;
        View inflate = this.f70908j.inflate(R.layout.loading_project_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new ViewOnTouchListenerC0378a());
        this.f11595Y = (TextView) inflate.findViewById(R.id.progress_text);
        this.f11599c0 = (NumberProgressBar) inflate.findViewById(R.id.progressBar);
        this.f11596Z = (TextView) inflate.findViewById(R.id.progress_text2);
        this.f11597a0 = (TextView) inflate.findViewById(R.id.version);
        this.f11598b0 = (TextView) inflate.findViewById(R.id.step);
        c.a(this);
        this.f11603g0.add(new k());
        if (EditorSettings.a().projectCheckAtStartup) {
            this.f11603g0.add(new M5.a());
        }
        this.f11603g0.add(new M5.c());
        if (EditorSettings.a().projectCheckAtStartup) {
            this.f11603g0.add(new M5.b());
        }
        if (EditorSettings.a().projectCheckAtStartup) {
            this.f11603g0.add(new g());
        }
        if (EditorSettings.a().projectCheckAtStartup) {
            this.f11603g0.add(new f());
        }
        this.f11603g0.add(new i());
        this.f11603g0.add(new e());
        try {
            projectVersion = (ProjectVersion) new Gson().fromJson(X7.a.B(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f11601e0) + "/_EDITOR/", "pv.config", c.t()), ProjectVersion.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (projectVersion == null) {
            projectVersion = new ProjectVersion();
        }
        for (b bVar : this.f11603g0) {
            bVar.f11606b = this.f11601e0;
            bVar.f11605a = projectVersion;
            bVar.f11607c = this.f11600d0;
        }
        this.f11603g0.get(0).k();
        this.f11596Z.setText(this.f11603g0.get(0).i());
        this.f11595Y.setText(this.f11603g0.get(0).h());
        this.f11599c0.setProgress(0);
        this.f11597a0.setText(W7.b.f27306f.b(M()));
        this.f11598b0.setText("0/" + this.f11603g0.size());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        c.f0(this);
        f11593i0 = null;
    }

    @Override
    public EditorPanel k() {
        return new a(this.f11601e0);
    }

    @Override
    public void n1() {
        super.n1();
        this.f11603g0.get(this.f11602f0).p();
        if (this.f11603g0.get(this.f11602f0).j()) {
            q1();
        }
        s1();
    }

    @Override
    public void z(o4.b engineUpdateData) {
        super.z(engineUpdateData);
        this.f11603g0.get(this.f11602f0).a();
    }
}

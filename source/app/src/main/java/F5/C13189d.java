package f5;

import M7.g;
import android.app.Activity;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.util.List;

public class C13189d {

    public static final Ac.b f86106b = Theme.T.SEMI_CARD;

    public static final Ac.b f86107c = Theme.T.PRIMARY_DARK;

    public static final Ac.b f86108d;

    public static final Ac.b f86109e;

    public static final int f86110f = 2;

    public a f86111a;

    public interface a {
        Panel3DView a();

        void b();

        void c();

        void d();
    }

    static {
        Ac.b bVar = Theme.T.BUTTON_OUTLINE;
        f86108d = bVar;
        f86109e = bVar;
    }

    public void A() {
        a aVar = this.f86111a;
        if (aVar != null) {
            aVar.c();
        }
    }

    public boolean B() {
        return true;
    }

    public boolean C() {
        return true;
    }

    public Boolean D() {
        return null;
    }

    public void E() {
        a aVar = this.f86111a;
        if (aVar != null) {
            aVar.b();
        }
    }

    public boolean F() {
        return true;
    }

    public void G() {
    }

    public boolean a(GameObject gameObject) {
        return true;
    }

    public Boolean b() {
        return null;
    }

    public boolean c() {
        return true;
    }

    public boolean d() {
        return true;
    }

    public void e() {
    }

    public boolean f(N4.a axis3DType) {
        return true;
    }

    public MousePicker.i g() {
        return null;
    }

    public Panel3DView h() {
        a aVar = this.f86111a;
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    public String i() {
        throw new RuntimeException("stub! at " + getClass().getName());
    }

    public int j() {
        return Theme.i(f86108d);
    }

    public int k() {
        return Theme.i(f86109e);
    }

    public int l() {
        return Theme.i(Theme.T.HIGH_TEXT_COLOR);
    }

    public int m() {
        return Theme.i(f86106b);
    }

    public void n(List<g> elements, Activity activity, Panel3DView panel3DView) {
    }

    public void o(List<g> elements, Activity activity, Panel3DView panel3DView) {
    }

    public void p(List<g> elements, Activity activity, Panel3DView panel3DView) {
    }

    public void q(List<g> elements, Activity activity, Panel3DView panel3DView) {
    }

    public void r(List<g> elements, Activity activity, Panel3DView panel3DView) {
    }

    public void s(Activity activity, Panel3DView panel3DView) {
    }

    public void t() {
    }

    public void u(Activity activity, Panel3DView panel3DView) {
    }

    public void v() {
    }

    public ColorINT w() {
        return null;
    }

    public ColorINT x() {
        return null;
    }

    public ColorINT y() {
        return null;
    }

    public void z() {
        a aVar = this.f86111a;
        if (aVar != null) {
            aVar.d();
        }
    }
}

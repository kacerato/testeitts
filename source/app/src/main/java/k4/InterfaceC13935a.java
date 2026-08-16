package k4;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.PanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import i4.C13580a;
import i4.InterfaceC13584e;
import j4.EnumC13805a;

public interface InterfaceC13935a {
    void a(c listener);

    boolean b(PanelArea panelArea);

    void c();

    Panel d(Panel editorPanel);

    boolean e(EditorPanel editorPanel);

    boolean f(EditorPanel editorPanel);

    Panel g(EditorPanel editorPanel);

    void h(EnumC13805a closeDirection);

    boolean i(Panel editorPanel);

    boolean j();

    void k(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener);

    boolean l(EditorPanel panel);

    void m();

    boolean n(EditorPanel editorPanel);

    PanelArea o(EditorPanel editorPanel);

    void p(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener);

    boolean q(Panel panel);

    void show();
}

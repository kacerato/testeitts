package p4;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import bd.C3867a;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine2.R;
import i4.C13580a;
import o4.g;

public class C14927b extends Panel {
    public C14927b() {
        super(new g(null, new C3867a("Drop here", "Solte aqui").toString()));
    }

    @Override
    public void p0(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
    }

    @Override
    public void w0(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
    }

    @Override
    public LinearLayout x(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC14928c panelToPanelArea, boolean rightLeft) {
        LinearLayout linearLayout = (LinearLayout) layoutInflater.inflate(rightLeft ? R.layout.editor_panel_tittle_drop_horizontal_left : R.layout.editor_panel_tittle_drop_horizontal_right, (ViewGroup) null);
        this.f70938b = linearLayout;
        parent.addView(linearLayout);
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(this.f70938b, context);
        return this.f70938b;
    }

    @Override
    public View y(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC14928c upperCommunication) {
        View inflate = layoutInflater.inflate(R.layout.editor_panel_tittle_drop, (ViewGroup) null);
        this.f70939c = inflate;
        parent.addView(inflate);
        TextView textView = (TextView) this.f70939c.findViewById(R.id.tittle);
        this.f70941e = textView;
        if (textView != null) {
            textView.setText(S());
        }
        return this.f70939c;
    }
}

package m4;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import bd.C3867a;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine2.R;
import i4.C13580a;
import i4.InterfaceC13584e;

public class b extends FloatingPanelArea {
    public b(float x10, float y10, float width, float height) {
        super(x10, y10, width, height);
        this.floatingX = x10;
        this.floatingY = y10;
        this.floatingW = width;
        this.floatingH = height;
    }

    @Override
    public void R1(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener) {
        super.R1(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener);
        if (panelsControllerListener.v() == null) {
            panelsControllerListener.b(this);
        }
    }

    @Override
    public View U(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        View V10 = super.V(screenArea, activity, context, layoutInflater, editor3DScreen, R.layout.editor_floating_panel_drop, false);
        TextView textView = (TextView) V10.findViewById(R.id.dropText);
        if (textView != null) {
            textView.setText(new C3867a("Split panel", "Repartir painel").toString());
        }
        return V10;
    }
}

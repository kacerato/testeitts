package a6;

import Y5.f;
import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class C3585a extends EditorPanel {

    public static final String f31859X = "UserProfileStore";

    public C3585a() {
        super(null, "Profile");
    }

    public static FloatingPanelArea p1(String name, long userID, View anchor, C15147a.e anchorSide) {
        U5.a aVar = new U5.a();
        aVar.t("@" + name + "@");
        f.U1(aVar, anchor, anchorSide);
        return null;
    }

    @Override
    public View C0() {
        return this.f70908j.inflate(R.layout.marketplace_user_profile_panel, (ViewGroup) null);
    }

    @Override
    public void G0() {
    }

    @Override
    public EditorPanel k() {
        return null;
    }
}

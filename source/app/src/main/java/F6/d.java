package F6;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import jd.C13823b;
import y6.InterfaceC16149b;
import y6.c;

public interface d {
    d duplicate();

    String getOpenFile();

    boolean hasScript();

    void hideView();

    void inflateView(ConstraintLayout modulesContent, AsyncLayoutInflater asyncLayoutInflater, Context context, InterfaceC16149b inflateListener);

    boolean matchState(c.l state);

    void onClose(Context context);

    void onStart(Context context, LayoutInflater layoutInflater, y6.f upperCommunication, EditorPanel panel);

    void openScript(C13823b script, Context context);

    void replaceScript(C13823b newScript, Context context);

    boolean saveScript(Context context);

    void showView();

    boolean supportFile(C13823b file);

    default void updateVisible() {
    }
}

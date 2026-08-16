package z6;

import F6.d;
import Vc.e;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine2.R;
import jd.C13823b;
import y6.InterfaceC16149b;
import y6.c;
import y6.f;

public class C16268a implements d {

    public static String f130709e = "";

    public Context f130710a;

    public View f130711b;

    public ConstraintLayout f130712c;

    public f f130713d;

    public class C2247a implements AsyncLayoutInflater.OnInflateFinishedListener {

        public final Context f130714a;

        public final ConstraintLayout f130715b;

        public final InterfaceC16149b f130716c;

        public C2247a(final Context val$context, final ConstraintLayout val$modulesContent, final InterfaceC16149b val$inflateListener) {
            this.f130714a = val$context;
            this.f130715b = val$modulesContent;
            this.f130716c = val$inflateListener;
        }

        @Override
        public void onInflateFinished(@NonNull View codeViewLayout, int resid, @Nullable @org.jetbrains.annotations.Nullable ViewGroup parent) {
            ((TextView) codeViewLayout.findViewById(R.id.textView22)).setText("Missing editor (" + C16268a.f130709e + ")");
            e.V((ImageView) codeViewLayout.findViewById(R.id.javalogo), R.drawable.unknow_file, this.f130714a);
            this.f130715b.addView(codeViewLayout);
            codeViewLayout.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
            N7.c.t0("scripting_editor_missing_editor", codeViewLayout);
            C16268a.this.f130711b = codeViewLayout;
            this.f130716c.a(codeViewLayout);
        }
    }

    @Override
    public d duplicate() {
        return new C16269b();
    }

    @Override
    public String getOpenFile() {
        return null;
    }

    @Override
    public boolean hasScript() {
        return false;
    }

    @Override
    public void hideView() {
        this.f130711b.setVisibility(8);
    }

    @Override
    public void inflateView(ConstraintLayout modulesContent, AsyncLayoutInflater asyncLayoutInflater, Context context, InterfaceC16149b inflateListener) {
        this.f130712c = modulesContent;
        View m10 = N7.c.m("scripting_editor_missing_editor");
        if (m10 == null) {
            asyncLayoutInflater.inflate(R.layout.codeview_missing_editor, null, new C2247a(context, modulesContent, inflateListener));
            return;
        }
        try {
            modulesContent.addView(m10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        m10.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
        inflateListener.a(m10);
        this.f130711b = m10;
        ((TextView) m10.findViewById(R.id.textView22)).setText("Missing editor (" + f130709e + ")");
    }

    @Override
    public boolean matchState(c.l state) {
        return state == c.l.MissingEditor;
    }

    @Override
    public void onClose(Context context) {
        this.f130712c.removeAllViews();
    }

    @Override
    public void onStart(Context context, LayoutInflater layoutInflater, f upperCommunication, EditorPanel editorPanel) {
        this.f130710a = context;
        this.f130713d = upperCommunication;
    }

    @Override
    public void openScript(C13823b script, Context context) {
    }

    @Override
    public void replaceScript(C13823b newScript, Context context) {
    }

    @Override
    public boolean saveScript(Context context) {
        return false;
    }

    @Override
    public void showView() {
        this.f130711b.setVisibility(0);
    }

    @Override
    public boolean supportFile(C13823b file) {
        return false;
    }
}

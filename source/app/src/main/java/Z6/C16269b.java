package z6;

import F6.d;
import Vc.e;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import d8.j;
import id.C13696a;
import java.io.File;
import jd.C13823b;
import y6.InterfaceC16149b;
import y6.c;
import y6.f;
import z8.C16273a;

public class C16269b implements d {

    public Context f130718a;

    public View f130719b;

    public ConstraintLayout f130720c;

    public f f130721d;

    public class a implements AsyncLayoutInflater.OnInflateFinishedListener {

        public final Context f130722a;

        public final ConstraintLayout f130723b;

        public final InterfaceC16149b f130724c;

        public class C2248a extends AbstractViewOnClickListenerC12733a {

            public class C2249a implements C13696a.d {

                public final SweetAlertDialog f130727a;

                public C2249a(final SweetAlertDialog val$dialog) {
                    this.f130727a = val$dialog;
                }

                @Override
                public void b() {
                    this.f130727a.dismissWithAnimation();
                    j.v0();
                    f fVar = C16269b.this.f130721d;
                    if (fVar != null) {
                        fVar.b();
                    }
                }
            }

            public C2248a() {
            }

            @Override
            public void click(View v10) {
                C16273a.c(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(a.this.f130722a) + "/JAVARuntime/").getAbsolutePath(), null);
                SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(a.this.f130722a, 5);
                sweetAlertDialog.setTitle("Downloading");
                sweetAlertDialog.setCanceledOnTouchOutside(false);
                sweetAlertDialog.show();
                C13696a.n(new C2249a(sweetAlertDialog));
            }
        }

        public a(final Context val$context, final ConstraintLayout val$modulesContent, final InterfaceC16149b val$inflateListener) {
            this.f130722a = val$context;
            this.f130723b = val$modulesContent;
            this.f130724c = val$inflateListener;
        }

        @Override
        public void onInflateFinished(@NonNull View codeViewLayout, int resid, @Nullable @org.jetbrains.annotations.Nullable ViewGroup parent) {
            ((Button) codeViewLayout.findViewById(R.id.button3)).setOnClickListener(new C2248a());
            e.V((ImageView) codeViewLayout.findViewById(R.id.javalogo), R.drawable.java_logo, this.f130722a);
            this.f130723b.addView(codeViewLayout);
            codeViewLayout.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
            N7.c.t0("scripting_editor_missingjava", codeViewLayout);
            C16269b.this.f130719b = codeViewLayout;
            this.f130724c.a(codeViewLayout);
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
        this.f130719b.setVisibility(8);
    }

    @Override
    public void inflateView(ConstraintLayout modulesContent, AsyncLayoutInflater asyncLayoutInflater, Context context, InterfaceC16149b inflateListener) {
        this.f130720c = modulesContent;
        View m10 = N7.c.m("scripting_editor_missingjava");
        if (m10 == null) {
            asyncLayoutInflater.inflate(R.layout.codeview_missingjava, null, new a(context, modulesContent, inflateListener));
            return;
        }
        try {
            modulesContent.addView(m10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        m10.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
        inflateListener.a(m10);
        this.f130719b = m10;
    }

    @Override
    public boolean matchState(c.l state) {
        return state == c.l.MissingJava;
    }

    @Override
    public void onClose(Context context) {
        this.f130720c.removeAllViews();
    }

    @Override
    public void onStart(Context context, LayoutInflater layoutInflater, f upperCommunication, EditorPanel editorPanel) {
        this.f130718a = context;
        this.f130721d = upperCommunication;
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
        this.f130719b.setVisibility(0);
    }

    @Override
    public boolean supportFile(C13823b file) {
        return false;
    }
}

package r5;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import java.io.File;
import q5.C15043a;
import s5.C15233a;
import w3.f;

public class f extends C15043a {

    public class a extends AbstractViewOnClickListenerC12733a {

        public final ImageView f108656b;

        public class C1985a implements f.c {
            public C1985a() {
            }

            @Override
            public void onCancel() {
            }

            @Override
            public void onError(String error) {
                N7.c.v0("failed to import image:" + error);
            }

            @Override
            public void onSuccess(String fileName, File imageFile) {
                C15233a.c(imageFile, com.itsmagic.engine.Core.Components.ProjectController.a.S(f.this.f105918b) + "/_EDITOR/APP/Settings/Icon/512x.png", a.this.f108656b);
            }
        }

        public a(final ImageView val$icon) {
            this.f108656b = val$icon;
        }

        @Override
        public void click(View v10) {
            w3.f.e(new C1985a());
        }
    }

    @Override
    public View b() {
        View inflate = this.f105917a.inflate(R.layout.export_project_stage3, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon);
        C15233a.d(this.f105918b, imageView);
        imageView.setOnClickListener(new a(imageView));
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.text);
        textView.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE3_TITTLE));
        textView2.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE3_TEXT));
        return inflate;
    }
}

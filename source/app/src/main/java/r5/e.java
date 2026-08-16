package r5;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils.BuildConfigs;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import jd.C13823b;
import q5.C15043a;

public class e extends C15043a {

    public class a extends AbstractViewOnClickListenerC12733a {

        public final TextView f108653b;

        public class C1984a implements Yc.g {
            public C1984a() {
            }

            @Override
            public void b(C13823b pfile) {
                if (e.this.f105918b == null || pfile == null) {
                    return;
                }
                String f10 = pfile.f();
                if (f10 == null) {
                    e.this.f105921e.worldZero = "";
                } else if (f10.equals("")) {
                    e.this.f105921e.worldZero = "";
                } else {
                    a.this.f108653b.setText(f10);
                    e.this.f105921e.worldZero = f10;
                }
            }
        }

        public a(final TextView val$worldText) {
            this.f108653b = val$worldText;
        }

        @Override
        public void click(View v10) {
            Yc.c.a(".world", new C1984a());
        }
    }

    @Override
    public View b() {
        View inflate = this.f105917a.inflate(R.layout.export_project_stage2, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.world_text);
        textView.setText(this.f105921e.worldZero);
        inflate.findViewById(R.id.choose_world).setOnClickListener(new a(textView));
        TextView textView2 = (TextView) inflate.findViewById(R.id.tittle);
        TextView textView3 = (TextView) inflate.findViewById(R.id.text);
        TextView textView4 = (TextView) inflate.findViewById(R.id.select_world_text);
        textView2.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE2_TITTLE));
        textView3.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE2_TEXT));
        textView4.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE2_SELECT_WORLD));
        return inflate;
    }

    @Override
    public boolean d() {
        BuildConfigs.d(this.f105921e, this.f105918b);
        String str = this.f105921e.worldZero;
        if (str != null && !str.isEmpty()) {
            return true;
        }
        N7.c.v0(Lang.l(Lang.T.ASSISTANCE_EXPORT_SELECT_WORLD_REQUIRED));
        return false;
    }
}

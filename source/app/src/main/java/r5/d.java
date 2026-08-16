package r5;

import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils.BuildConfigs;
import com.itsmagic.engine2.R;
import q5.C15043a;
import s5.C15233a;

public class d extends C15043a {

    public EditText f108652g;

    @Override
    public View b() {
        View inflate = this.f105917a.inflate(R.layout.export_project_stage1, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.app_name_tittle)).setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE1_APP_NAME_TITTLE));
        EditText editText = (EditText) inflate.findViewById(R.id.app_name);
        this.f108652g = editText;
        editText.setHint(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE1_APP_NAME_HINT));
        this.f108652g.setText(this.f105921e.appName);
        return inflate;
    }

    @Override
    public boolean d() {
        String g10 = C15233a.g(this.f108652g.getText().toString());
        if (!C15233a.i(g10, Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_LAUNCHER_NAME), this.f108652g)) {
            return false;
        }
        this.f105921e.appName = g10;
        this.f108652g.setText(g10);
        BuildConfigs buildConfigs = this.f105921e;
        buildConfigs.appNameP = C15233a.b(buildConfigs.appName);
        String str = this.f105921e.companyName;
        if (str == null || str.trim().isEmpty()) {
            this.f105921e.companyName = "company";
        }
        BuildConfigs.d(this.f105921e, this.f105918b);
        return true;
    }
}

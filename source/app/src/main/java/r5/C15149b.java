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

public class C15149b extends C15043a {

    public EditText f108648g;

    @Override
    public View b() {
        View inflate = this.f105917a.inflate(R.layout.export_project_stage_package_id, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.text);
        TextView textView3 = (TextView) inflate.findViewById(R.id.package_id_label);
        this.f108648g = (EditText) inflate.findViewById(R.id.package_id);
        textView.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_TITTLE));
        textView2.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_TEXT));
        textView3.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_LABEL));
        this.f108648g.setHint(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_HINT));
        String str = this.f105921e.offlinePackageId;
        if (str == null || str.trim().isEmpty() || "com.itsmagic.app".equalsIgnoreCase(str.trim())) {
            str = C15233a.a(com.itsmagic.engine.Core.Components.ProjectController.a.T());
            BuildConfigs buildConfigs = this.f105921e;
            buildConfigs.offlinePackageId = str;
            BuildConfigs.d(buildConfigs, this.f105918b);
        }
        this.f108648g.setText(str);
        return inflate;
    }

    @Override
    public boolean d() {
        String e10 = C15233a.e(this.f108648g.getText().toString());
        if (!C15233a.h(e10, Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_PACKAGE_ID), this.f108648g)) {
            return false;
        }
        this.f105921e.offlinePackageId = e10;
        this.f108648g.setText(e10);
        BuildConfigs.d(this.f105921e, this.f105918b);
        return true;
    }
}

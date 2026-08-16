package r5;

import Ic.C2630i;
import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils.BuildConfigs;
import com.itsmagic.engine2.R;
import java.io.File;
import p5.c;
import q5.C15043a;
import s5.C15233a;
import u8.C15580b;

public class C15150c extends C15043a {

    public final c.f f108649g;

    public class a implements C15580b.v {

        public final boolean f108650a;

        public a(final boolean val$isAab) {
            this.f108650a = val$isAab;
        }

        @Override
        public void b(File outputFile) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.T());
            sb2.append(this.f108650a ? ".aab" : ".apk");
            C2630i.t(outputFile, sb2.toString(), this.f108650a ? "octet-stream" : "vnd.android.package-archive");
        }
    }

    public C15150c() {
        this(c.f.APK);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x007a  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View b() {
        String str;
        View inflate = this.f105917a.inflate(R.layout.export_project_stage4, (ViewGroup) null);
        BuildConfigs buildConfigs = this.f105921e;
        c.f fVar = this.f108649g;
        c.f fVar2 = c.f.AAB;
        buildConfigs.buildType = fVar == fVar2 ? 1 : 0;
        buildConfigs.f71678b = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        try {
            int x12 = Nc.b.x1(this.f105921e.versionCode, 1) + 1;
            this.f105921e.b().e(true);
            this.f105921e.b().f(false);
            this.f105921e.versionCode = String.valueOf(x12);
            this.f105921e.versionName = String.valueOf(x12 / 100.0f);
            str = this.f105921e.offlinePackageId;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (str != null) {
            if (str.trim().isEmpty()) {
            }
            BuildConfigs.d(this.f105921e, this.f105918b);
            boolean z10 = this.f108649g == fVar2;
            File i10 = i();
            BuildConfigs buildConfigs2 = this.f105921e;
            String str2 = buildConfigs2.worldZero;
            String str3 = buildConfigs2.appName;
            String str4 = buildConfigs2.offlinePackageId;
            boolean e11 = buildConfigs2.e();
            BuildConfigs buildConfigs3 = this.f105921e;
            new C15580b(str2, str3, str4, e11, buildConfigs3.buildType, i10, buildConfigs3.keystorePassowrd, buildConfigs3.keystoreAlias, buildConfigs3.keystoreAliasPassword, new a(z10));
            f();
            return inflate;
        }
        this.f105921e.offlinePackageId = C15233a.a(com.itsmagic.engine.Core.Components.ProjectController.a.T());
        BuildConfigs.d(this.f105921e, this.f105918b);
        if (this.f108649g == fVar2) {
        }
        File i102 = i();
        BuildConfigs buildConfigs22 = this.f105921e;
        String str22 = buildConfigs22.worldZero;
        String str32 = buildConfigs22.appName;
        String str42 = buildConfigs22.offlinePackageId;
        boolean e112 = buildConfigs22.e();
        BuildConfigs buildConfigs32 = this.f105921e;
        new C15580b(str22, str32, str42, e112, buildConfigs32.buildType, i102, buildConfigs32.keystorePassowrd, buildConfigs32.keystoreAlias, buildConfigs32.keystoreAliasPassword, new a(z10));
        f();
        return inflate;
    }

    public final File i() {
        String str;
        if (this.f108649g != c.f.AAB || (str = this.f105921e.keyStorePath) == null || str.trim().isEmpty()) {
            return null;
        }
        File file = new File(this.f105921e.keyStorePath.trim());
        return file.isAbsolute() ? file : new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f105918b), this.f105921e.keyStorePath.trim());
    }

    public C15150c(c.f exportType) {
        this.f108649g = exportType == null ? c.f.APK : exportType;
    }
}

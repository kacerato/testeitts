package x8;

import android.content.Context;
import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Utils.C12736d;
import com.itsmagic.engine.Core.Components.ProjectController.Utils.ProjectVersion;

public class c {

    public ProjectVersion f128017a;

    public String f128018b;

    public static ProjectVersion c(String projectName, Context context) {
        try {
            return (ProjectVersion) new Gson().fromJson(X7.a.B(com.itsmagic.engine.Core.Components.ProjectController.a.Y(projectName) + "/_EDITOR", "pv.config", context), ProjectVersion.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void e(String projectName, ProjectVersion projectVersion, Context context) {
        if (projectName == null || projectName.trim().isEmpty()) {
            return;
        }
        if (projectVersion == null) {
            projectVersion = new ProjectVersion();
        }
        C8.a aVar = W7.b.f27306f;
        projectVersion.appVersionCode = aVar.c(context);
        projectVersion.appVersionName = aVar.b(context);
        projectVersion.lastOpen = C12736d.m();
        projectVersion.c();
        X7.a.k(com.itsmagic.engine.Core.Components.ProjectController.a.Y(projectName) + "/_EDITOR", "pv.config", X7.a.m().toJson(projectVersion));
    }

    public ProjectVersion a() {
        if (this.f128017a == null) {
            this.f128017a = new ProjectVersion();
        }
        return this.f128017a;
    }

    public void b(String projectName, Context context) {
        this.f128018b = projectName;
        ProjectVersion c10 = c(projectName, context);
        this.f128017a = c10;
        if (c10 == null) {
            d(context);
        } else {
            d(context);
        }
    }

    public void d(Context context) {
        if (this.f128017a == null) {
            this.f128017a = new ProjectVersion();
        }
        ProjectVersion projectVersion = this.f128017a;
        C8.a aVar = W7.b.f27306f;
        projectVersion.appVersionCode = aVar.c(context);
        this.f128017a.appVersionName = aVar.b(context);
        this.f128017a.lastOpen = C12736d.m();
        this.f128017a.c();
        e(this.f128018b, this.f128017a, context);
    }
}

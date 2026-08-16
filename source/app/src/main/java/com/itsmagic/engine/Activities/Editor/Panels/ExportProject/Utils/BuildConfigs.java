package com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils;

import X7.a;
import android.content.Context;
import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class BuildConfigs implements Serializable {

    public transient String f71678b;

    @Expose
    public String keyStorePath;

    @Expose
    public String keystoreAlias;

    @Expose
    public String keystoreAliasPassword;

    @Expose
    public String keystorePassowrd;

    @Expose
    private Orientations orientations;

    @Expose
    public String worldZero;

    @Expose
    public String domainName = "com";

    @Expose
    public String companyName = "company";

    @Expose
    public String appNameP = "app";

    @Expose
    public String appName = "MyGame";

    @Expose
    public String offlinePackageId = "com.itsmagic.app";

    @Expose
    public Boolean generateVulkanShadersPreCache = Boolean.TRUE;

    @Expose
    public String versionCode = "1";

    @Expose
    public String versionName = "0.1";

    @Expose
    public int buildType = 0;

    public static BuildConfigs c(Context context) {
        return (BuildConfigs) a.m().fromJson(a.u("_EDITOR", "bc.config", context), BuildConfigs.class);
    }

    public static void d(BuildConfigs buildConfigs, Context context) {
        a.e("_EDITOR", "bc.config", a.m().toJson(buildConfigs), context);
    }

    public BuildConfigs a() {
        BuildConfigs buildConfigs = new BuildConfigs();
        buildConfigs.domainName = this.domainName;
        buildConfigs.companyName = this.companyName;
        buildConfigs.appNameP = this.appNameP;
        buildConfigs.appName = this.appName;
        buildConfigs.offlinePackageId = this.offlinePackageId;
        buildConfigs.generateVulkanShadersPreCache = this.generateVulkanShadersPreCache;
        buildConfigs.versionCode = this.versionCode;
        buildConfigs.versionName = this.versionName;
        buildConfigs.worldZero = this.worldZero;
        buildConfigs.orientations = Orientations.b(this.orientations);
        buildConfigs.f71678b = this.f71678b;
        buildConfigs.buildType = this.buildType;
        buildConfigs.keyStorePath = this.keyStorePath;
        buildConfigs.keystorePassowrd = this.keystorePassowrd;
        buildConfigs.keystoreAlias = this.keystoreAlias;
        buildConfigs.keystoreAliasPassword = this.keystoreAliasPassword;
        return buildConfigs;
    }

    public Orientations b() {
        if (this.orientations == null) {
            this.orientations = new Orientations();
        }
        return this.orientations;
    }

    public boolean e() {
        Boolean bool = this.generateVulkanShadersPreCache;
        return bool == null || bool.booleanValue();
    }
}

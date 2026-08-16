package com.itsmagic.engine.Core.Components.ProjectController.Utils;

import N7.c;
import W7.b;
import android.app.Activity;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.ProjectController.a;
import java.io.File;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class ProjectVersion implements Serializable {

    @Expose
    public int appVersionCode;

    @Expose
    public String appVersionName;

    @Expose
    public List<DownloadedPackage> downloadedPackages;

    @Expose
    public String guid;

    @Expose
    public String lastOpen;

    @Expose
    public String storeGitHubRepositoryName;

    @Expose
    public String storeGitHubRepositoryOwner;

    @Expose
    public String storeGitHubRepositoryUrl;

    public ProjectVersion() {
    }

    public List<DownloadedPackage> a() {
        return b(0);
    }

    public List<DownloadedPackage> b(int tries) {
        Activity activity;
        DownloadedPackage downloadedPackage;
        if (this.downloadedPackages == null) {
            this.downloadedPackages = new LinkedList();
        }
        try {
            activity = c.o();
        } catch (Exception e10) {
            e10.printStackTrace();
            activity = null;
        }
        if (activity != null) {
            LinkedList linkedList = new LinkedList();
            for (int i10 = 0; i10 < this.downloadedPackages.size(); i10++) {
                try {
                    downloadedPackage = this.downloadedPackages.get(i10);
                } catch (Exception unused) {
                    if (tries < 3) {
                        return b(tries + 1);
                    }
                    downloadedPackage = null;
                }
                if (downloadedPackage != null && downloadedPackage.packID != null) {
                    a aVar = b.f27302b;
                    String S10 = a.S(activity);
                    Iterator<String> it = downloadedPackage.usefulFiles.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            linkedList.add(downloadedPackage);
                            break;
                        }
                        String str = S10 + "/" + it.next();
                        if (str.contains("//")) {
                            str = str.replace("//", "/");
                        }
                        if (new File(str).exists()) {
                            break;
                        }
                    }
                } else {
                    linkedList.add(downloadedPackage);
                }
            }
            this.downloadedPackages.removeAll(linkedList);
            linkedList.clear();
        }
        return this.downloadedPackages;
    }

    public String c() {
        String str = this.guid;
        if (str == null || str.isEmpty()) {
            this.guid = Tc.b.L();
        }
        return this.guid;
    }

    public boolean d() {
        String str = this.guid;
        return (str == null || str.isEmpty()) ? false : true;
    }

    public boolean e() {
        String str;
        String str2;
        String str3 = this.storeGitHubRepositoryUrl;
        return (str3 == null || str3.trim().isEmpty() || (str = this.storeGitHubRepositoryOwner) == null || str.trim().isEmpty() || (str2 = this.storeGitHubRepositoryName) == null || str2.trim().isEmpty()) ? false : true;
    }

    public void f(int appVersionCode) {
        this.appVersionCode = appVersionCode;
    }

    public void g(String appVersionName) {
        this.appVersionName = appVersionName;
    }

    public ProjectVersion(int appVersionCode, String appVersionName) {
        this.appVersionCode = appVersionCode;
        this.appVersionName = appVersionName;
    }
}

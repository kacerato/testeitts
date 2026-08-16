package Ic;

import android.content.Context;
import java.io.File;

public class F {

    public String f9023a;

    public F() {
    }

    public String a() {
        Context t10 = N7.c.t();
        if (com.itsmagic.engine.Core.Components.ProjectController.a.T().equals("@compiled@")) {
            return b();
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(t10) + "/");
        if (!file.exists()) {
            file.mkdir();
        }
        return com.itsmagic.engine.Core.Components.ProjectController.a.S(t10) + "/" + b();
    }

    public String b() {
        return this.f9023a;
    }

    public void c(String filePath) {
        this.f9023a = filePath;
    }

    public String toString() {
        return b();
    }

    public F(String filePath) {
        this.f9023a = filePath;
    }

    public F(String filePath, boolean isEditor) {
        this.f9023a = filePath;
    }
}

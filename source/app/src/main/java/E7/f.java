package E7;

import com.itsmagic.engine.Activities.Editor.Utils.ThumbBuilder.Core.Manifest;
import java.io.File;

public class f {
    public static void a(String inProjectFile) {
        String x10;
        Manifest manifest;
        String O10 = Tc.b.O(inProjectFile);
        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + (O10 + ".meta/thumb.png")));
        if (file.exists()) {
            File file2 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + (O10 + ".meta/thumb_manifest.json")));
            if (!file2.exists() || (x10 = X7.a.x(file2)) == null || x10.isEmpty() || (manifest = (Manifest) X7.a.m().fromJson(x10, Manifest.class)) == null || manifest.a() != 7) {
                file.delete();
            }
        }
    }

    public static void b(String inProjectFile, Manifest manifest) {
        X7.a.h(new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + (Tc.b.O(inProjectFile) + ".meta/thumb_manifest.json"))), X7.a.m().toJson(manifest));
    }
}

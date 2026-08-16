package K3;

import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import id.C13696a;
import java.io.File;
import java.util.List;

public class b extends c {

    public final List<L3.a> f10789f;

    public b(a callback, String project, List<L3.a> moveList) {
        super(callback, project);
        this.f10789f = moveList;
    }

    public static void h(String project, File originalMeta, File newMeta, File searchFolder, BuildDictionary buildDictionary) {
        File[] listFiles = searchFolder.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    h(project, originalMeta, newMeta, file, buildDictionary);
                } else {
                    buildDictionary.a(new BuildDicFile(file.getAbsolutePath().replace(project, ""), file.getAbsolutePath().replace(originalMeta.getAbsolutePath(), newMeta.getAbsolutePath()).replace(project, "")));
                }
            }
        }
    }

    @Override
    public void e() {
        try {
            try {
                BuildDictionary buildDictionary = new BuildDictionary();
                for (int i10 = 0; i10 < this.f10789f.size(); i10++) {
                    try {
                        L3.a aVar = this.f10789f.get(i10);
                        File file = aVar.f11554a;
                        File file2 = aVar.f11555b;
                        if (file.isDirectory()) {
                            g(file, file2, file, buildDictionary);
                            if (file2.exists()) {
                                file2.delete();
                            }
                            file.renameTo(file2);
                        } else {
                            String replace = file.getAbsolutePath().replace(this.f10794e, "");
                            String replace2 = file2.getAbsolutePath().replace(this.f10794e, "");
                            if (file2.exists()) {
                                file2.delete();
                            }
                            C13696a.a(file, file2);
                            File file3 = new File(file.getParentFile(), Tc.b.O(file.getName()) + ".meta/");
                            if (file3.exists()) {
                                File file4 = new File(file2.getParentFile(), Tc.b.O(file2.getName()) + ".meta/");
                                h(this.f10794e, file3, file4, file3, buildDictionary);
                                file3.renameTo(file4);
                            }
                            file.delete();
                            buildDictionary.a(new BuildDicFile(replace, replace2));
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                a(this.f10794e, buildDictionary, new File(this.f10794e));
                this.f10793d.onSuccess();
            } catch (Exception e11) {
                e11.printStackTrace();
                this.f10793d.a();
            }
            b();
        } catch (Throwable th2) {
            b();
            throw th2;
        }
    }

    public final void g(File originalFolder, File destinationFolder, File folder, BuildDictionary buildDictionary) {
        File[] listFiles = folder.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    g(originalFolder, destinationFolder, file, buildDictionary);
                } else {
                    buildDictionary.a(new BuildDicFile(file.getAbsolutePath().replace(this.f10794e, ""), file.getAbsolutePath().replace(originalFolder.getAbsolutePath(), destinationFolder.getAbsolutePath()).replace(this.f10794e, "")));
                }
            }
        }
    }
}

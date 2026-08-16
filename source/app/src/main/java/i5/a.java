package I5;

import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

public class a {

    public final Map<String, List<File>> f8842a = new HashMap();

    public final Map<String, String> f8843b = new HashMap();

    public final BuildDictionary f8844c = new BuildDictionary();

    public class C0223a implements Function<String, List<File>> {
        public C0223a() {
        }

        @Override
        public List<File> apply(String s10) {
            return new SteppedArrayList();
        }
    }

    public List<File> a(String t10) {
        return this.f8842a.getOrDefault(t10, new SteppedArrayList());
    }

    @Deprecated
    public void b(String oldIPP, String newIPP) {
        this.f8843b.put(oldIPP, newIPP);
        this.f8844c.a(new BuildDicFile(oldIPP, newIPP));
    }

    public void c(String ipp, File file) {
        this.f8842a.computeIfAbsent(Tc.b.t(file.getName()), new C0223a()).add(file);
    }
}

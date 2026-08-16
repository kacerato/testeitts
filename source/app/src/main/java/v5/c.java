package v5;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import n7.AbstractC14360e;

public class c extends AbstractC14360e {
    @Override
    public boolean a(File file) {
        return file.exists();
    }

    @Override
    public String f() {
        return com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/";
    }

    @Override
    public boolean h(File file) {
        return file.isDirectory();
    }

    @Override
    public List<File> j(File parent) {
        File[] listFiles = parent.listFiles();
        return listFiles != null ? new SteppedArrayList(Arrays.asList(listFiles)) : new SteppedArrayList();
    }
}

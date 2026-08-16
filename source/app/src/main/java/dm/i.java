package dm;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

public class i extends h {
    public i(File file) throws FileNotFoundException {
        super(e(file));
    }

    public static List<g> e(File file) throws FileNotFoundException {
        Object nVar;
        if (!file.isDirectory()) {
            throw new IllegalArgumentException("file reference does not refer to directory");
        }
        File[] listFiles = file.listFiles();
        ArrayList arrayList = new ArrayList(listFiles.length);
        for (int i10 = 0; i10 != listFiles.length; i10++) {
            if (!listFiles[i10].isDirectory()) {
                nVar = new n(listFiles[i10]);
            } else if (listFiles[i10].listFiles().length != 0) {
                nVar = new i(listFiles[i10]);
            }
            arrayList.add(nVar);
        }
        return arrayList;
    }

    public List<n> f() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 != this.f84867b.size(); i10++) {
            if (this.f84867b.get(i10) instanceof n) {
                arrayList.add((n) this.f84867b.get(i10));
            }
        }
        return arrayList;
    }

    public List<i> g() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 != this.f84867b.size(); i10++) {
            if (this.f84867b.get(i10) instanceof i) {
                arrayList.add((i) this.f84867b.get(i10));
            }
        }
        return arrayList;
    }
}

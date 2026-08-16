package p000if;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13725u implements Savable {

    public static final char f92162c = '.';

    public static final int f92163d = 1;

    public static final Logger f92164e = Logger.getLogger(C13725u.class.getName());

    public static final boolean f92165f = false;

    public final Map<String, Integer> f92166b = new TreeMap();

    public static String a(String str) {
        int indexOf = str.indexOf(46);
        if (indexOf < 0) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    public static boolean b(String str, String str2) {
        int indexOf = str.indexOf(46);
        if (indexOf == -1 || !str.substring(0, indexOf).equals(str2)) {
            return false;
        }
        return str.substring(indexOf + 1, str.length()).matches("^\\d+$");
    }

    public void c() {
        this.f92166b.clear();
    }

    public String d(String str) {
        if (str.indexOf(46) >= 0) {
            f92164e.log(Level.SEVERE, "prefix={0}", C13724t.s(str));
            throw new IllegalArgumentException(String.format("prefix must not contain the separator '%c'", '.'));
        }
        Integer num = this.f92166b.get(str);
        if (num == null) {
            num = 1;
        }
        this.f92166b.put(str, Integer.valueOf(num.intValue() + 1));
        return str + '.' + String.valueOf(num);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        String[] readStringArray = capsule.readStringArray("keys", null);
        int[] readIntArray = capsule.readIntArray("values", null);
        int length = readStringArray.length;
        c();
        for (int i10 = 0; i10 < length; i10++) {
            this.f92166b.put(readStringArray[i10], Integer.valueOf(readIntArray[i10]));
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(200);
        sb2.append("{ ");
        for (Map.Entry<String, Integer> entry : this.f92166b.entrySet()) {
            sb2.append(String.format("%s:%s ", entry.getKey(), entry.getValue()));
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        int size = this.f92166b.size();
        String[] strArr = new String[size];
        int[] iArr = new int[size];
        int i10 = 0;
        for (Map.Entry<String, Integer> entry : this.f92166b.entrySet()) {
            strArr[i10] = entry.getKey();
            iArr[i10] = entry.getValue().intValue();
            i10++;
        }
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(strArr, "keys", (String[]) null);
        capsule.write(iArr, "values", (int[]) null);
    }
}

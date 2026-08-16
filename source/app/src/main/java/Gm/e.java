package gm;

import em.C13168c;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;

public class e extends BufferedReader {

    public static final String f90124b = "-----BEGIN ";

    public static final String f90125c = "-----END ";

    public e(Reader reader) {
        super(reader);
    }

    public final C13401b b(String str) throws IOException {
        String readLine;
        String str2 = f90125c + str + "-----";
        StringBuffer stringBuffer = new StringBuffer();
        ArrayList arrayList = new ArrayList();
        while (true) {
            readLine = readLine();
            if (readLine == null) {
                break;
            }
            int indexOf = readLine.indexOf(58);
            if (indexOf >= 0) {
                arrayList.add(new C13400a(readLine.substring(0, indexOf), readLine.substring(indexOf + 1).trim()));
            } else {
                if (readLine.indexOf(str2) == 0) {
                    break;
                }
                stringBuffer.append(readLine.trim());
            }
        }
        if (readLine != null) {
            return new C13401b(str, arrayList, C13168c.c(stringBuffer.toString()));
        }
        throw new IOException(str2 + " not found");
    }

    public C13401b c() throws IOException {
        String readLine;
        String trim;
        int indexOf;
        do {
            readLine = readLine();
            if (readLine == null) {
                break;
            }
        } while (!readLine.startsWith(f90124b));
        if (readLine == null || (indexOf = (trim = readLine.substring(11).trim()).indexOf(45)) <= 0 || !trim.endsWith("-----") || trim.length() - indexOf != 5) {
            return null;
        }
        return b(trim.substring(0, indexOf));
    }
}

package Xg;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.StringTokenizer;
import yd.C16179k;
import yd.C16181m;

public class u {
    public static void a(int[] array, int count) {
        if (array == null) {
            return;
        }
        for (int i10 = 0; i10 < array.length; i10++) {
            int i11 = array[i10];
            if (i11 < 0) {
                array[i10] = i11 + count;
            } else {
                array[i10] = i11 - 1;
            }
        }
    }

    public static o b(InputStream inputStream) throws IOException {
        return (o) d(inputStream, z.a());
    }

    public static o c(Reader reader) throws IOException {
        return (o) e(reader, z.a());
    }

    public static <T extends D> T d(InputStream inputStream, T t10) throws IOException {
        return (T) f(new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.US_ASCII)), t10);
    }

    public static <T extends D> T e(Reader reader, T t10) throws IOException {
        return reader instanceof BufferedReader ? (T) f((BufferedReader) reader, t10) : (T) f(new BufferedReader(reader), t10);
    }

    public static <T extends D> T f(BufferedReader reader, T output) throws IOException {
        boolean z10;
        r rVar = new r();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            String readLine = reader.readLine();
            if (readLine == null) {
                break;
            }
            String trim = readLine.trim();
            while (true) {
                if (!trim.endsWith(C16181m.f130232i)) {
                    z10 = false;
                    break;
                }
                trim = trim.substring(0, trim.length() - 2);
                String readLine2 = reader.readLine();
                if (readLine2 == null) {
                    z10 = true;
                    break;
                }
                trim = trim + " " + readLine2;
            }
            if (z10) {
                break;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(trim);
            if (stringTokenizer.hasMoreTokens()) {
                String lowerCase = stringTokenizer.nextToken().toLowerCase();
                if (lowerCase.equals("v")) {
                    output.m(C.h(stringTokenizer));
                    i10++;
                } else if (lowerCase.equals(C16179k.f130219e)) {
                    output.D(C.h(stringTokenizer));
                    i11++;
                } else if (lowerCase.equals(C16179k.f130220f)) {
                    output.q(C.h(stringTokenizer));
                    i12++;
                } else if (lowerCase.equals(C16179k.f130224j)) {
                    output.l(Collections.singleton(trim.substring(6).trim()));
                } else if (lowerCase.equals(C16179k.f130223i)) {
                    output.g(trim.substring(6).trim());
                } else if (lowerCase.equals("g")) {
                    output.z(Arrays.asList(g(trim.substring(1).trim())));
                } else if (lowerCase.equals("f")) {
                    rVar.e(trim);
                    int[] d10 = rVar.d();
                    int[] c10 = rVar.c();
                    int[] b10 = rVar.b();
                    a(d10, i10);
                    a(c10, i11);
                    a(b10, i12);
                    output.A(s.c(d10, c10, b10));
                }
            }
        }
        return output;
    }

    public static String[] g(String input) {
        StringTokenizer stringTokenizer = new StringTokenizer(input);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}

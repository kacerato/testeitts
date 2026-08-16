package K6;

import M6.b;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;

public final class e {

    public class a implements Comparator<M6.b> {
        @Override
        public int compare(M6.b left, M6.b right) {
            String str = left.f14577k;
            if (str == null) {
                str = "";
            }
            String str2 = right.f14577k;
            if (str2 == null) {
                str2 = "";
            }
            int compareToIgnoreCase = str.compareToIgnoreCase(str2);
            if (compareToIgnoreCase != 0) {
                return compareToIgnoreCase;
            }
            String str3 = left.f14567a;
            if (str3 == null) {
                str3 = "";
            }
            String str4 = right.f14567a;
            return str3.compareToIgnoreCase(str4 != null ? str4 : "");
        }
    }

    public static List<M6.b> a(List<f> candidates, String lineText, String lineSuffix, int lineNumber, int cursorPosition, String invocationName) {
        String str;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (f fVar : candidates) {
            if (fVar.f10896k && (str = fVar.f10888c) != null && str.equalsIgnoreCase(invocationName)) {
                steppedArrayList.add(M6.b.a(fVar, lineText, lineSuffix, lineNumber, cursorPosition));
            }
        }
        steppedArrayList.sort(new a());
        return steppedArrayList;
    }

    public static String b(f candidate) {
        return h(candidate.f10886a) + "|" + h(candidate.f10889d) + "|" + h(candidate.f10890e);
    }

    public static int c(f candidate) {
        int i10 = candidate.f10893h ? 1000 : 0;
        if (candidate.f10894i) {
            i10 += 500;
        }
        if (!candidate.f10895j) {
            i10 += 200;
        }
        if (candidate.f10896k) {
            i10 += 50;
        }
        if (candidate.f10898m) {
            i10 += 10;
        }
        String str = candidate.f10900o;
        return (str == null || str.isEmpty()) ? i10 : i10 + 5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<f> d(List<f> candidates) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (f fVar : candidates) {
            String b10 = b(fVar);
            f fVar2 = (f) linkedHashMap.get(b10);
            if (fVar2 == null || c(fVar) > c(fVar2)) {
                linkedHashMap.put(b10, fVar);
            }
        }
        return new SteppedArrayList(linkedHashMap.values());
    }

    public static f e(List<f> candidates, String token) {
        if (token == null) {
            return null;
        }
        for (f fVar : candidates) {
            String str = fVar.f10888c;
            if (str != null && str.equalsIgnoreCase(token)) {
                return fVar;
            }
        }
        return null;
    }

    public static boolean f(List<M6.b> suggestions) {
        M6.b bVar;
        b.a aVar;
        String str;
        if (suggestions == null || suggestions.size() < 2 || (bVar = suggestions.get(0)) == null || (aVar = bVar.f14583q) == null || (str = aVar.f14584a) == null || !str.endsWith("(")) {
            return false;
        }
        String str2 = bVar.f14568b;
        if (str2 == null) {
            str2 = "";
        }
        for (int i10 = 1; i10 < suggestions.size(); i10++) {
            M6.b bVar2 = suggestions.get(i10);
            if (bVar2 == null || !bVar2.f14572f) {
                return false;
            }
            String str3 = bVar2.f14568b;
            if (str3 == null) {
                str3 = "";
            }
            if (!str2.equalsIgnoreCase(str3)) {
                return false;
            }
        }
        return bVar.f14572f;
    }

    public static boolean g(f candidate, String prefix) {
        if (candidate == null || prefix == null || prefix.isEmpty()) {
            return false;
        }
        String str = candidate.f10886a;
        if (str == null) {
            str = candidate.f10888c;
        }
        String str2 = str;
        if (str2 == null || str2.isEmpty()) {
            return false;
        }
        char charAt = prefix.charAt(0);
        char charAt2 = str2.charAt(0);
        if (Character.isLowerCase(charAt) && Character.isUpperCase(charAt2)) {
            return false;
        }
        if (str2.regionMatches(true, 0, prefix, 0, prefix.length())) {
            return true;
        }
        String str3 = candidate.f10888c;
        return str3 != null && str3.regionMatches(true, 0, prefix, 0, prefix.length());
    }

    public static String h(String value) {
        return value == null ? "" : value;
    }
}

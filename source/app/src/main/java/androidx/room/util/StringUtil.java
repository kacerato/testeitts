package androidx.room.util;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.openjdk.tools.doclint.DocLint;

public class StringUtil {
    public static final String[] EMPTY_STRING_ARRAY = new String[0];

    private StringUtil() {
    }

    public static void appendPlaceholders(StringBuilder builder, int count) {
        for (int i10 = 0; i10 < count; i10++) {
            builder.append("?");
            if (i10 < count - 1) {
                builder.append(DocLint.SEPARATOR);
            }
        }
    }

    public static String joinIntoString(List<Integer> input) {
        if (input == null) {
            return null;
        }
        int size = input.size();
        if (size == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append(Integer.toString(input.get(i10).intValue()));
            if (i10 < size - 1) {
                sb2.append(DocLint.SEPARATOR);
            }
        }
        return sb2.toString();
    }

    public static StringBuilder newStringBuilder() {
        return new StringBuilder();
    }

    public static List<Integer> splitToIntList(String input) {
        if (input == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(input, DocLint.SEPARATOR);
        while (stringTokenizer.hasMoreElements()) {
            try {
                arrayList.add(Integer.valueOf(Integer.parseInt(stringTokenizer.nextToken())));
            } catch (NumberFormatException e10) {
                Log.e("ROOM", "Malformed integer list", e10);
            }
        }
        return arrayList;
    }
}

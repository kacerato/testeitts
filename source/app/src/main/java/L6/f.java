package L6;

import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public final class f implements l {

    public final m f11615a = new m();

    @Override
    public void a(List<M6.b> suggestions, j context) {
        String str;
        if (!EditorSettings.a().codeCompletion.e() || suggestions == null || context == null || (str = context.f11617b) == null) {
            return;
        }
        String b10 = b(str);
        if (b10.length() >= 3 && !c(context.f11617b, b10)) {
            List<K6.f> b11 = this.f11615a.b(b10);
            if (b11.isEmpty()) {
                return;
            }
            HashSet hashSet = new HashSet();
            Iterator<M6.b> it = suggestions.iterator();
            while (it.hasNext()) {
                hashSet.add(d(it.next()));
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (K6.f fVar : b11) {
                String str2 = context.f11618c;
                if (str2 == null) {
                    str2 = "";
                }
                M6.b a10 = M6.b.a(fVar, context.f11617b, str2, context.f11620e, context.f11619d);
                a10.f14567a = "myObject." + a10.f14567a;
                a10.f14568b = "myObject." + a10.f14568b;
                if (hashSet.add(d(a10))) {
                    steppedArrayList.add(a10);
                }
            }
            if (steppedArrayList.isEmpty()) {
                return;
            }
            suggestions.addAll(0, steppedArrayList);
        }
    }

    public final String b(String lineText) {
        int b10 = K6.h.b(lineText);
        if (b10 < 0) {
            return "";
        }
        int length = lineText.length();
        while (length > b10 && !Character.isJavaIdentifierPart(lineText.charAt(length - 1))) {
            length--;
        }
        return length <= b10 ? "" : lineText.substring(b10, length).trim();
    }

    public final boolean c(String lineText, String typedPrefix) {
        int b10 = K6.h.b(lineText);
        if (b10 <= 0 || typedPrefix.isEmpty()) {
            return false;
        }
        int i10 = b10 - 1;
        while (i10 >= 0 && Character.isWhitespace(lineText.charAt(i10))) {
            i10--;
        }
        return i10 >= 0 && lineText.charAt(i10) == '.';
    }

    public final String d(M6.b suggestion) {
        if (suggestion == null) {
            return "";
        }
        return e(suggestion.f14567a) + '|' + e(suggestion.f14568b) + '|' + e(suggestion.f14577k) + '|' + e(suggestion.f14578l) + '|' + e(suggestion.f14576j) + '|' + suggestion.f14572f + '|' + suggestion.f14573g + '|' + e(suggestion.f14581o);
    }

    public final String e(String value) {
        return value == null ? "" : value;
    }
}

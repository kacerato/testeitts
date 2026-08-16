package V9;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

public class l {
    public static List<int[]> a(String text) {
        TreeSet treeSet = new TreeSet();
        int i10 = 0;
        while (i10 < text.length()) {
            int codePointAt = Character.codePointAt(text, i10);
            treeSet.add(Integer.valueOf(codePointAt));
            i10 += Character.charCount(codePointAt);
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Iterator<E> it = treeSet.iterator();
        int i11 = -1;
        int i12 = -1;
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            if (i11 != -1) {
                if (intValue == i12 + 1) {
                    i12 = intValue;
                } else {
                    steppedArrayList.add(new int[]{i11, i12});
                }
            }
            i11 = intValue;
            i12 = intValue;
        }
        if (i11 != -1) {
            steppedArrayList.add(new int[]{i11, i12});
        }
        return steppedArrayList;
    }

    public static short[] b() {
        return new short[]{32, 255, 0};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static short[] c(String text) {
        int i10;
        List<int[]> a10 = a(text);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add((short) 32);
        steppedArrayList.add((short) 255);
        Iterator<int[]> it = a10.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            int[] next = it.next();
            int i11 = next[0];
            if (i11 < 32 || next[1] > 255) {
                steppedArrayList.add(Short.valueOf((short) i11));
                steppedArrayList.add(Short.valueOf((short) next[1]));
            }
        }
        if (steppedArrayList.isEmpty() || ((Short) steppedArrayList.get(steppedArrayList.size() - 1)).shortValue() != 0) {
            steppedArrayList.add((short) 0);
        }
        short[] sArr = new short[steppedArrayList.size()];
        for (i10 = 0; i10 < steppedArrayList.size(); i10++) {
            sArr[i10] = ((Short) steppedArrayList.get(i10)).shortValue();
        }
        return sArr;
    }
}

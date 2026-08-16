package Mc;

import java.util.List;

public class e {
    public static <T> T a(int i10, List<T> list) {
        return (T) b(i10, list, 0, 3);
    }

    public static <T> T b(int i10, List<T> list, int i11, int i12) {
        try {
            return list.get(i10);
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            if (i11 < i12) {
                return (T) b(i10, list, i11 + 1, i12);
            }
            return null;
        }
    }
}

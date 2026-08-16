package pf;

import java.util.Arrays;
import java.util.List;

public class B {
    public static <T> List<T> a(T[] tArr) {
        return Arrays.asList(tArr);
    }
}

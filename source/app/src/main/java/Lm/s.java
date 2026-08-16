package Lm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public enum s {
    NULL,
    INT,
    LONG,
    FLOAT,
    DOUBLE,
    BOOLEAN,
    CHAR,
    STRING,
    ALL,
    PRIMITIVE;

    public static List<s> a() {
        ArrayList arrayList = new ArrayList(Arrays.asList(values()));
        arrayList.remove(ALL);
        arrayList.remove(PRIMITIVE);
        return arrayList;
    }

    public static List<s> b() {
        return Arrays.asList(INT, LONG, FLOAT, DOUBLE, BOOLEAN, CHAR);
    }
}

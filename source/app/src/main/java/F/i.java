package F;

public final class i implements a<int[]> {

    public static final String f6077a = "IntegerArrayPool";

    @Override
    public int b() {
        return 4;
    }

    @Override
    public int a(int[] iArr) {
        return iArr.length;
    }

    @Override
    public int[] newArray(int i10) {
        return new int[i10];
    }

    @Override
    public String getTag() {
        return f6077a;
    }
}

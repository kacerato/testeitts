package gf;

public class b {
    public static String a(String str) {
        String[] split = str.split("\n");
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (String str2 : split) {
            i10++;
            sb2.append(i10);
            sb2.append("\t");
            sb2.append(str2);
            sb2.append("\n");
        }
        return sb2.toString();
    }
}

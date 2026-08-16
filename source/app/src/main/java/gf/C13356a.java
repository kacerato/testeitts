package gf;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class C13356a {

    public static final Pattern f89554a = Pattern.compile("([^=]+)=\\s*([0-9]+)\\s*\\.\\.\\s*([0-9]+)\\s*\\((.+)\\)");

    public static final Pattern f89555b = Pattern.compile("(\\w+)(?:\\s+extends\\s+(\\w+(?:,\\s*\\w+)*))?");

    public static InputStream a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                byteArrayOutputStream.close();
                inputStream.close();
                return new ByteArrayInputStream(c(b(byteArrayOutputStream.toString("UTF-8"))).getBytes("UTF-8"));
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static String b(String str) {
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        int i10 = 0;
        String str2 = null;
        StringBuilder sb3 = null;
        for (String str3 : str.split("\n")) {
            if (!z10) {
                String trim = str3.trim();
                if (trim.startsWith("#for")) {
                    if (i10 == 0) {
                        sb3 = new StringBuilder();
                        i10++;
                        str2 = trim;
                    } else {
                        i10++;
                    }
                } else if (trim.startsWith("#endfor") && i10 - 1 == 0) {
                    str2 = str2.substring(5).trim();
                    Matcher matcher = f89554a.matcher(str2);
                    if (matcher.matches()) {
                        String str4 = "$" + matcher.group(1);
                        int parseInt = Integer.parseInt(matcher.group(3));
                        String group = matcher.group(4);
                        if (group.trim().isEmpty()) {
                            group = "$0";
                        }
                        String sb4 = sb3.toString();
                        for (int parseInt2 = Integer.parseInt(matcher.group(2)); parseInt2 < parseInt; parseInt2++) {
                            sb2.append("\n");
                            sb2.append(group.replace("$0", "\n" + sb4).replace(str4, "" + parseInt2));
                            sb2.append("\n");
                        }
                        z10 = true;
                        sb3 = null;
                    }
                }
            }
            if (sb3 != null) {
                sb3.append(str3);
                sb3.append("\n");
            } else {
                sb2.append(str3);
                sb2.append("\n");
            }
        }
        String sb5 = sb2.toString();
        return z10 ? b(sb5) : sb5;
    }

    public static String c(String str) {
        int i10;
        StringBuilder sb2 = new StringBuilder();
        String[] split = str.split("\n");
        int length = split.length;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = false;
        int i13 = 0;
        String str2 = null;
        StringBuilder sb3 = null;
        while (i12 < length) {
            String str3 = split[i12];
            if (!z10) {
                String trim = str3.trim();
                if (trim.startsWith("#struct")) {
                    if (i13 == 0) {
                        sb3 = new StringBuilder();
                        i13++;
                        str2 = trim;
                        i10 = i11;
                    } else {
                        i13++;
                    }
                } else if (trim.startsWith("#endstruct") && i13 - 1 == 0) {
                    str2 = str2.substring(8).trim();
                    Matcher matcher = f89555b.matcher(str2);
                    if (matcher.matches()) {
                        String group = matcher.group(1);
                        if (group == null) {
                            group = "";
                        }
                        String group2 = matcher.group(2);
                        String[] split2 = group2 != null ? group2.split(",\\s*") : new String[i11];
                        String sb4 = sb3.toString();
                        String replaceAll = sb4 == null ? "" : sb4.replaceAll("\\s+$", "");
                        sb2.append("#define STRUCT_");
                        sb2.append(group);
                        sb2.append(" \\\n");
                        int length2 = split2.length;
                        for (int i14 = i11; i14 < length2; i14++) {
                            String str4 = split2[i14];
                            sb2.append("STRUCT_");
                            sb2.append(str4);
                            sb2.append(" \\\n");
                        }
                        String[] split3 = replaceAll.split("\n");
                        for (int i15 = 0; i15 < split3.length; i15++) {
                            String trim2 = split3[i15].trim();
                            if (trim2 != "") {
                                int indexOf = trim2.indexOf("//");
                                if (indexOf >= 0) {
                                    trim2 = trim2.substring(0, indexOf);
                                }
                                sb2.append(trim2);
                                if (i15 < split3.length - 1) {
                                    sb2.append(" \\");
                                }
                                sb2.append("\n");
                            }
                        }
                        i10 = 0;
                        sb2.append("struct ");
                        sb2.append(group);
                        sb2.append(" { \nSTRUCT_");
                        sb2.append(group);
                        sb2.append("\n};\n");
                        z10 = true;
                        sb3 = null;
                    }
                }
                i12++;
                i11 = i10;
            }
            i10 = i11;
            if (sb3 != null) {
                sb3.append(str3);
                sb3.append("\n");
            } else {
                sb2.append(str3);
                sb2.append("\n");
            }
            i12++;
            i11 = i10;
        }
        String sb5 = sb2.toString();
        return z10 ? c(sb5) : sb5;
    }
}

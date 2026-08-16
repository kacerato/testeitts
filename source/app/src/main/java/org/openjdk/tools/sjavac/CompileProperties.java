package org.openjdk.tools.sjavac;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URI;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.sjavac.comp.CompilationService;
import org.openjdk.tools.sjavac.options.Options;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public class CompileProperties implements Transformer {
    private static final String FORMAT = "{0}public final class {1} extends {2} '{'\n    protected final Object[][] getContents() '{'\n        return new Object[][] '{'\n{3}        };\n    }\n}\n";
    private static final char[] hexDigit = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', IIndexConstants.ANNOTATION_TYPE_SUFFIX, 'B', 'C', 'D', IIndexConstants.ENUM_SUFFIX, 'F'};
    String extra;

    public static String escape(String str) {
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(length * 2);
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt == '\t') {
                sb2.append(JavaElement.JEM_ESCAPE);
                sb2.append('t');
            } else if (charAt == '\n') {
                sb2.append(JavaElement.JEM_ESCAPE);
                sb2.append('n');
            } else if (charAt == '\f') {
                sb2.append(JavaElement.JEM_ESCAPE);
                sb2.append('f');
            } else if (charAt == '\r') {
                sb2.append(JavaElement.JEM_ESCAPE);
                sb2.append('r');
            } else if (charAt == '\\') {
                sb2.append(JavaElement.JEM_ESCAPE);
                sb2.append(JavaElement.JEM_ESCAPE);
            } else if (charAt < ' ' || charAt > '~') {
                sb2.append(JavaElement.JEM_ESCAPE);
                sb2.append('u');
                sb2.append(toHex((charAt >> '\f') & 15));
                sb2.append(toHex((charAt >> '\b') & 15));
                sb2.append(toHex((charAt >> 4) & 15));
                sb2.append(toHex(charAt & 15));
            } else {
                if (charAt == '\"') {
                    sb2.append(JavaElement.JEM_ESCAPE);
                }
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }

    private static char toHex(int i10) {
        return hexDigit[i10 & 15];
    }

    public boolean compile(String str, String str2, File file, File file2, int i10, Map<String, Set<URI>> map) {
        String str3 = this.extra;
        if (str3 == null) {
            str3 = "java.util.ListResourceBundle";
        }
        Properties properties = new Properties();
        try {
            properties.load(new FileInputStream(file));
            String substring = file.getName().substring(0, file.getName().lastIndexOf("."));
            ArrayList<String> arrayList = new ArrayList();
            Iterator it = properties.o().iterator();
            while (it.hasNext()) {
                arrayList.add((String) it.next());
            }
            Collections.sort(arrayList);
            StringBuilder sb2 = new StringBuilder();
            for (String str4 : arrayList) {
                sb2.append("            { \"" + escape(str4) + "\", \"" + escape((String) properties.get(str4)) + "\" },\n");
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(file2.getPath());
            String str5 = File.separator;
            sb3.append(str5);
            sb3.append(str2);
            sb3.append(str5);
            sb3.append(substring);
            sb3.append(".java");
            File file3 = new File(sb3.toString());
            if (!file3.getParentFile().isDirectory() && !file3.getParentFile().mkdirs()) {
                Log.error("Could not create the directory " + file3.getParentFile().getPath());
                return false;
            }
            Set<URI> set = map.get(str);
            if (set == null) {
                set = new HashSet<>();
                map.put(str, set);
            }
            set.add(file3.toURI());
            if (file3.exists() && file3.lastModified() > file.lastModified()) {
                return true;
            }
            String str6 = "package " + str2.replace(File.separatorChar, '.') + ";\n\n";
            Log.info("Compiling property file " + str2 + str5 + file.getName());
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file3)));
                try {
                    bufferedWriter.write(new MessageFormat(FORMAT).format(new Object[]{str6, substring, str3, sb2}));
                    bufferedWriter.close();
                    return true;
                } finally {
                }
            } catch (IOException unused) {
                Log.error("Could not write file " + file3.getPath());
                return false;
            }
        } catch (IOException unused2) {
            Log.error("Error reading file " + file.getPath());
            return false;
        }
    }

    @Override
    public void setExtra(Options options) {
    }

    @Override
    public boolean transform(CompilationService compilationService, Map<String, Set<URI>> map, Set<URI> set, Map<String, Set<String>> map2, URI uri, Map<String, Set<URI>> map3, Map<String, Map<String, Set<String>>> map4, Map<String, Map<String, Set<String>>> map5, Map<String, PubApi> map6, Map<String, PubApi> map7, int i10, boolean z10, int i11) {
        boolean z11 = true;
        for (String str : map.o()) {
            String fileSystemPath = Util.toFileSystemPath(str);
            Iterator<URI> it = map.get(str).iterator();
            while (it.hasNext()) {
                if (!compile(str, fileSystemPath, new File(it.next()), new File(uri), i10, map3)) {
                    z11 = false;
                }
            }
        }
        return z11;
    }

    @Override
    public void setExtra(String str) {
        this.extra = str;
    }
}

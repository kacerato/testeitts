package org.openjdk.tools.sjavac;

import b3.s;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.openjdk.tools.sjavac.comp.CompilationService;
import org.openjdk.tools.sjavac.options.Options;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public class CleanProperties implements Transformer {
    public boolean clean(String str, String str2, File file, File file2, int i10, Map<String, Set<URI>> map) {
        Properties properties = new Properties();
        try {
            properties.load(new FileInputStream(file));
            ArrayList<String> arrayList = new ArrayList();
            Iterator it = properties.o().iterator();
            while (it.hasNext()) {
                arrayList.add((String) it.next());
            }
            Collections.sort(arrayList);
            StringBuilder sb2 = new StringBuilder();
            for (String str3 : arrayList) {
                sb2.append(CompileProperties.escape(str3));
                sb2.append(s.f32937c);
                sb2.append(CompileProperties.escape((String) properties.get(str3)));
                sb2.append("\n");
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(file2.getPath());
            String str4 = File.separator;
            sb3.append(str4);
            sb3.append(str2);
            sb3.append(str4);
            sb3.append(file.getName());
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
            Log.info("Cleaning property file " + str2 + str4 + file.getName());
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file3)));
                try {
                    bufferedWriter.write(sb2.toString());
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
    public void setExtra(String str) {
    }

    @Override
    public boolean transform(CompilationService compilationService, Map<String, Set<URI>> map, Set<URI> set, Map<String, Set<String>> map2, URI uri, Map<String, Set<URI>> map3, Map<String, Map<String, Set<String>>> map4, Map<String, Map<String, Set<String>>> map5, Map<String, PubApi> map6, Map<String, PubApi> map7, int i10, boolean z10, int i11) {
        boolean z11 = true;
        for (String str : map.o()) {
            String replace = str.replace('.', File.separatorChar);
            Iterator<URI> it = map.get(str).iterator();
            while (it.hasNext()) {
                if (!clean(str, replace, new File(it.next()), new File(uri), i10, map3)) {
                    z11 = false;
                }
            }
        }
        return z11;
    }

    @Override
    public void setExtra(Options options) {
    }
}

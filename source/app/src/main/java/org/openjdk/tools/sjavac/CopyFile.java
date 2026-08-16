package org.openjdk.tools.sjavac;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.openjdk.tools.sjavac.comp.CompilationService;
import org.openjdk.tools.sjavac.options.Options;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public class CopyFile implements Transformer {
    @Override
    public void setExtra(String str) {
    }

    @Override
    public boolean transform(CompilationService compilationService, Map<String, Set<URI>> map, Set<URI> set, Map<String, Set<String>> map2, URI uri, Map<String, Set<URI>> map3, Map<String, Map<String, Set<String>>> map4, Map<String, Map<String, Set<String>>> map5, Map<String, PubApi> map6, Map<String, PubApi> map7, int i10, boolean z10, int i11) {
        boolean z11 = true;
        loop0: for (String str : map.o()) {
            String fileSystemPath = Util.toFileSystemPath(str);
            Iterator<URI> it = map.get(str).iterator();
            while (it.hasNext()) {
                File file = new File(it.next());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(uri.getPath());
                String str2 = File.separator;
                sb2.append(str2);
                sb2.append(fileSystemPath);
                File file2 = new File(sb2.toString());
                File file3 = new File(uri.getPath() + str2 + fileSystemPath + str2 + file.getName());
                if (!file2.isDirectory() && !file2.mkdirs()) {
                    Log.error("Error: The copier could not create the directory " + file2.getPath());
                    return false;
                }
                Set<URI> set2 = map3.get(str);
                if (set2 == null) {
                    set2 = new HashSet<>();
                    map3.put(str, set2);
                }
                set2.add(file3.toURI());
                if (!file3.exists() || file3.lastModified() <= file.lastModified()) {
                    Log.info("Copying " + fileSystemPath + str2 + file.getName());
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file3);
                            try {
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int read = fileInputStream.read(bArr);
                                    if (read <= 0) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, read);
                                }
                                fileOutputStream.close();
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                try {
                                    throw th2;
                                    break loop0;
                                } finally {
                                    break loop0;
                                }
                            }
                        } finally {
                            try {
                                break loop0;
                            } finally {
                            }
                        }
                    } catch (IOException unused) {
                        Log.error("Could not copy the file " + file.getPath() + " to " + file3.getPath());
                        z11 = false;
                    }
                }
            }
        }
        return z11;
    }

    @Override
    public void setExtra(Options options) {
    }
}

package com.android.dx.cf.direct;

import com.android.dex.util.FileUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class ClassPathOpener {
    public static final FileNameFilter acceptAll = new FileNameFilter() {
        @Override
        public boolean accept(String str) {
            return true;
        }
    };
    private final Consumer consumer;
    private FileNameFilter filter;
    private final String pathname;
    private final boolean sort;

    public interface Consumer {
        void onException(Exception exc);

        void onProcessArchiveStart(File file);

        boolean processFileBytes(String str, long j10, byte[] bArr);
    }

    public interface FileNameFilter {
        boolean accept(String str);
    }

    public ClassPathOpener(String str, boolean z10, Consumer consumer) {
        this(str, z10, acceptAll, consumer);
    }

    public static int compareClassNames(String str, String str2) {
        return str.replace('$', '0').replace("package-info", "").compareTo(str2.replace('$', '0').replace("package-info", ""));
    }

    private boolean processArchive(File file) throws IOException {
        byte[] bArr;
        ZipFile zipFile = new ZipFile(file);
        ArrayList list = Collections.list(zipFile.entries());
        if (this.sort) {
            Collections.sort(list, new Comparator<ZipEntry>() {
                @Override
                public int compare(ZipEntry zipEntry, ZipEntry zipEntry2) {
                    return ClassPathOpener.compareClassNames(zipEntry.getName(), zipEntry2.getName());
                }
            });
        }
        this.consumer.onProcessArchiveStart(file);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(40000);
        byte[] bArr2 = new byte[20000];
        Iterator it = list.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            ZipEntry zipEntry = (ZipEntry) it.next();
            boolean isDirectory = zipEntry.isDirectory();
            String name = zipEntry.getName();
            if (this.filter.accept(name)) {
                if (isDirectory) {
                    bArr = new byte[0];
                } else {
                    InputStream inputStream = zipFile.getInputStream(zipEntry);
                    byteArrayOutputStream.reset();
                    while (true) {
                        int read = inputStream.read(bArr2);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr2, 0, read);
                    }
                    inputStream.close();
                    bArr = byteArrayOutputStream.toByteArray();
                }
                z10 |= this.consumer.processFileBytes(name, zipEntry.getTime(), bArr);
            }
        }
        zipFile.close();
        return z10;
    }

    private boolean processDirectory(File file, boolean z10) {
        if (z10) {
            file = new File(file, ".");
        }
        File[] listFiles = file.listFiles();
        if (this.sort) {
            Arrays.sort(listFiles, new Comparator<File>() {
                @Override
                public int compare(File file2, File file3) {
                    return ClassPathOpener.compareClassNames(file2.getName(), file3.getName());
                }
            });
        }
        boolean z11 = false;
        for (File file2 : listFiles) {
            z11 |= processOne(file2, false);
        }
        return z11;
    }

    private boolean processOne(File file, boolean z10) {
        try {
            if (file.isDirectory()) {
                return processDirectory(file, z10);
            }
            String path = file.getPath();
            if (!path.endsWith(".zip") && !path.endsWith(".jar") && !path.endsWith(".apk")) {
                if (!this.filter.accept(path)) {
                    return false;
                }
                return this.consumer.processFileBytes(path, file.lastModified(), FileUtils.readFile(file));
            }
            return processArchive(file);
        } catch (Exception e10) {
            this.consumer.onException(e10);
            return false;
        }
    }

    public boolean process() {
        return processOne(new File(this.pathname), true);
    }

    public ClassPathOpener(String str, boolean z10, FileNameFilter fileNameFilter, Consumer consumer) {
        this.pathname = str;
        this.sort = z10;
        this.consumer = consumer;
        this.filter = fileNameFilter;
    }
}

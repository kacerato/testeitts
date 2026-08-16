package com.ardor3d.nativeloader;

import com.ardor3d.util.resource.ResourceLocatorTool;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.logging.Logger;

public class NativeLoader {
    private static final String JAVA_IO_TMPDIR = "java.io.tmpdir";
    private static final String JAVA_LIBRARY_PATH = "java.library.path";
    private static final String PATH_SEPARATOR = "path.separator";
    private static final Logger logger = Logger.getLogger(NativeLoader.class.toString());

    private static void addToLibraryPath(File file) {
        String property = System.getProperty(JAVA_LIBRARY_PATH);
        if (property.contains(file.toString())) {
            return;
        }
        System.setProperty(JAVA_LIBRARY_PATH, property + System.getProperty(PATH_SEPARATOR) + file.toString());
    }

    private static File createFileFor(File file, String str) throws IOException {
        File file2 = new File((File) null, getFilePart(str));
        if (file2.exists() && !file2.delete()) {
            throw new IOException("Unable to delete existing file: " + ((Object) file2));
        }
        if (file2.createNewFile()) {
            file2.deleteOnExit();
            return file2;
        }
        throw new IOException("Unable to create file: " + ((Object) file2));
    }

    private static File getA3DNativeDirectory() throws IOException {
        File file = new File(System.getProperty(JAVA_IO_TMPDIR));
        if (!file.exists() || !file.isDirectory()) {
            throw new IllegalStateException("Temporary directory: " + file.toString() + " doesn't exist or isn't a directory");
        }
        File file2 = new File(file, "a3dnatives");
        if (file2.exists() || file2.mkdir()) {
            return file2;
        }
        throw new IOException("Unable to create native directory: " + ((Object) file2));
    }

    private static String getFilePart(String str) {
        return str.split("/")[r1.length - 1];
    }

    public static void makeLibrariesAvailable(String[] strArr) {
        boolean z10 = false;
        for (String str : strArr) {
            try {
                makeLibraryAvailable(str);
            } catch (IOException unused) {
                z10 = true;
            }
        }
        if (z10) {
            throw new RuntimeException("Failed to make libraries available");
        }
    }

    private static void makeLibraryAvailable(String str) throws IOException {
        URL classPathResource = ResourceLocatorTool.getClassPathResource(NativeLoader.class, str);
        if (classPathResource == null) {
            throw new IOException("Unable to locate library resource '" + str + "' in classpath");
        }
        File createFileFor = createFileFor(getA3DNativeDirectory(), str);
        InputStream openStream = classPathResource.openStream();
        FileOutputStream fileOutputStream = new FileOutputStream(createFileFor);
        byte[] bArr = new byte[65536];
        while (true) {
            int read = openStream.read(bArr);
            if (read < 0) {
                openStream.close();
                fileOutputStream.close();
                return;
            }
            fileOutputStream.write(bArr, 0, read);
        }
    }
}

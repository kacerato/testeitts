package com.android.multidex;

import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.eclipse.jdt.internal.core.JavadocConstants;

class Path {
    static final boolean $assertionsDisabled = false;
    private final String definition;
    List<ClassPathElement> elements = new ArrayList();
    private final ByteArrayOutputStream baos = new ByteArrayOutputStream(40960);
    private final byte[] readBuffer = new byte[20480];

    public Path(String str) throws IOException {
        this.definition = str;
        for (String str2 : str.split(Pattern.quote(File.pathSeparator))) {
            try {
                addElement(getClassPathElement(new File(str2)));
            } catch (IOException e10) {
                throw new IOException("Wrong classpath: " + e10.getMessage(), e10);
            }
        }
    }

    private void addElement(ClassPathElement classPathElement) {
        this.elements.add(classPathElement);
    }

    public static ClassPathElement getClassPathElement(File file) throws ZipException, IOException {
        if (file.isDirectory()) {
            return new FolderPathElement(file);
        }
        if (file.isFile()) {
            return new ArchivePathElement(new ZipFile(file));
        }
        if (file.exists()) {
            throw new IOException(JavadocConstants.ANCHOR_PREFIX_END + file.getPath() + "\" is not a directory neither a zip file");
        }
        throw new FileNotFoundException("File \"" + file.getPath() + "\" not found");
    }

    private static byte[] readStream(InputStream inputStream, ByteArrayOutputStream byteArrayOutputStream, byte[] bArr) throws IOException {
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read < 0) {
                    inputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Throwable th2) {
                inputStream.close();
                throw th2;
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0037: MOVE (r1 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:29:0x0037 */
    public synchronized DirectClassFile getClass(String str) throws FileNotFoundException {
        DirectClassFile directClassFile;
        DirectClassFile directClassFile2;
        Throwable th2;
        try {
            Iterator<ClassPathElement> it = this.elements.iterator();
            directClassFile = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                try {
                    try {
                        InputStream open = it.next().open(str);
                        try {
                            byte[] readStream = readStream(open, this.baos, this.readBuffer);
                            this.baos.reset();
                            DirectClassFile directClassFile3 = new DirectClassFile(readStream, str, false);
                            try {
                                directClassFile3.setAttributeFactory(StdAttributeFactory.THE_ONE);
                                open.close();
                                directClassFile = directClassFile3;
                                break;
                            } catch (Throwable th3) {
                                th2 = th3;
                                open.close();
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            th2 = th4;
                        }
                    } catch (IOException unused) {
                        directClassFile = directClassFile2;
                    }
                } catch (IOException unused2) {
                }
            }
            if (directClassFile == null) {
                throw new FileNotFoundException("File \"" + str + "\" not found");
            }
        } finally {
        }
        return directClassFile;
    }

    public Iterable<ClassPathElement> getElements() {
        return this.elements;
    }

    public String toString() {
        return this.definition;
    }
}

package org.eclipse.jdt.internal.compiler.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class ManifestAnalyzer {
    private static final char[] CLASSPATH_HEADER_TOKEN = "Class-Path:".toCharArray();
    private static final int CONTINUING = 5;
    private static final int IN_CLASSPATH_HEADER = 1;
    private static final int PAST_CLASSPATH_HEADER = 2;
    private static final int READING_JAR = 4;
    private static final int SKIPPING_WHITESPACE = 3;
    private static final int SKIP_LINE = 6;
    private static final int START = 0;
    private ArrayList calledFilesNames;
    private int classpathSectionsCount;

    private boolean addCurrentTokenJarWhenNecessary(StringBuffer stringBuffer) {
        if (stringBuffer == null || stringBuffer.length() <= 0) {
            return false;
        }
        if (this.calledFilesNames == null) {
            this.calledFilesNames = new ArrayList();
        }
        this.calledFilesNames.add(stringBuffer.toString());
        stringBuffer.setLength(0);
        return true;
    }

    public boolean analyzeManifestContents(InputStream inputStream) throws IOException {
        return analyzeManifestContents(Util.getInputStreamAsCharArray(inputStream, -1, "UTF-8"));
    }

    public List getCalledFileNames() {
        return this.calledFilesNames;
    }

    public int getClasspathSectionsCount() {
        return this.classpathSectionsCount;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x004e. Please report as an issue. */
    public boolean analyzeManifestContents(char[] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        this.classpathSectionsCount = 0;
        this.calledFilesNames = null;
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = i11;
            while (i10 < length) {
                int i13 = i10 + 1;
                char c10 = cArr[i10];
                if (c10 != '\r' || i13 >= length) {
                    i10 = i13;
                } else {
                    i10 += 2;
                    c10 = cArr[i13];
                }
                switch (i11) {
                    case 0:
                        if (c10 == CLASSPATH_HEADER_TOKEN[0]) {
                            break;
                        }
                        i11 = 6;
                        break;
                    case 1:
                        if (c10 == '\n') {
                            i11 = 0;
                        } else {
                            char[] cArr2 = CLASSPATH_HEADER_TOKEN;
                            int i14 = i12 + 1;
                            if (c10 != cArr2[i12]) {
                                i11 = 6;
                            } else if (i14 == cArr2.length) {
                                i11 = 2;
                            }
                            i12 = i14;
                        }
                    case 2:
                        if (c10 != ' ') {
                            return false;
                        }
                        this.classpathSectionsCount++;
                        i11 = 3;
                    case 3:
                        if (c10 == '\n') {
                            i11 = 5;
                        } else if (c10 != ' ') {
                            stringBuffer.append(c10);
                            i11 = 4;
                        } else {
                            addCurrentTokenJarWhenNecessary(stringBuffer);
                        }
                    case 4:
                        if (c10 == '\n') {
                            i11 = 5;
                        } else if (c10 == ' ') {
                            addCurrentTokenJarWhenNecessary(stringBuffer);
                            i11 = 3;
                        } else {
                            stringBuffer.append(c10);
                        }
                    case 5:
                        if (c10 == '\n') {
                            addCurrentTokenJarWhenNecessary(stringBuffer);
                        } else if (c10 == ' ') {
                            i11 = 3;
                        } else if (c10 == CLASSPATH_HEADER_TOKEN[0]) {
                            addCurrentTokenJarWhenNecessary(stringBuffer);
                            i11 = 1;
                        } else if (this.calledFilesNames == null) {
                            addCurrentTokenJarWhenNecessary(stringBuffer);
                        } else {
                            addCurrentTokenJarWhenNecessary(stringBuffer);
                            i11 = 6;
                        }
                        i11 = 0;
                    case 6:
                        if (c10 == '\n') {
                            i11 = 0;
                        }
                }
            }
            if (i11 == 2) {
                return false;
            }
            if (i11 == 3) {
                addCurrentTokenJarWhenNecessary(stringBuffer);
                return true;
            }
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                return (i11 == 6 && this.classpathSectionsCount != 0 && this.calledFilesNames == null) ? false : true;
            }
            addCurrentTokenJarWhenNecessary(stringBuffer);
            return true;
        }
    }
}

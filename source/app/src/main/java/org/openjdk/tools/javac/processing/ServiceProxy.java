package org.openjdk.tools.javac.processing;

import b3.s;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

public class ServiceProxy {
    private static final String prefix = "META-INF/services/";

    public static class ServiceConfigurationError extends Error {
        static final long serialVersionUID = 7732091036771098303L;

        public ServiceConfigurationError(String str) {
            super(str);
        }
    }

    private static void fail(Class<?> cls, String str) throws ServiceConfigurationError {
        throw new ServiceConfigurationError(cls.getName() + ": " + str);
    }

    public static boolean hasService(Class<?> cls, URL[] urlArr) throws ServiceConfigurationError {
        for (URL url : urlArr) {
            try {
            } catch (MalformedURLException unused) {
            }
            if (parse(cls, new URL(url, "META-INF/services/" + cls.getName()))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.StringBuilder] */
    private static boolean parse(Class<?> cls, URL url) throws ServiceConfigurationError {
        InputStream inputStream;
        StringBuilder sb2;
        BufferedReader bufferedReader;
        String readLine;
        String trim;
        int length;
        BufferedReader bufferedReader2 = null;
        r2 = null;
        r2 = null;
        BufferedReader bufferedReader3 = null;
        BufferedReader bufferedReader4 = null;
        bufferedReader2 = null;
        try {
            try {
                inputStream = url.openStream();
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                } catch (FileNotFoundException unused) {
                } catch (IOException e10) {
                    e = e10;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException unused2) {
            inputStream = null;
        } catch (IOException e11) {
            e = e11;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
        do {
            try {
                readLine = bufferedReader.readLine();
            } catch (FileNotFoundException unused3) {
                bufferedReader3 = bufferedReader;
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                    } catch (IOException e12) {
                        fail(cls, ": " + ((Object) e12));
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e13) {
                        fail(cls, ": " + ((Object) e13));
                    }
                }
                return false;
            } catch (IOException e14) {
                e = e14;
                bufferedReader4 = bufferedReader;
                fail(cls, ": " + ((Object) e));
                bufferedReader2 = bufferedReader4;
                if (bufferedReader4 != null) {
                    try {
                        bufferedReader4.close();
                        bufferedReader2 = bufferedReader4;
                    } catch (IOException e15) {
                        ?? sb3 = new StringBuilder();
                        sb3.append(": ");
                        sb3.append(e15);
                        fail(cls, sb3.toString());
                        bufferedReader2 = sb3;
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e16) {
                        e = e16;
                        sb2 = new StringBuilder();
                        sb2.append(": ");
                        sb2.append((Object) e);
                        fail(cls, sb2.toString());
                        return false;
                    }
                }
                return false;
            } catch (Throwable th4) {
                th = th4;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e17) {
                        fail(cls, ": " + ((Object) e17));
                    }
                }
                if (inputStream == null) {
                    throw th;
                }
                try {
                    inputStream.close();
                    throw th;
                } catch (IOException e18) {
                    fail(cls, ": " + ((Object) e18));
                    throw th;
                }
            }
            if (readLine == null) {
                try {
                    bufferedReader.close();
                    bufferedReader2 = readLine;
                } catch (IOException e19) {
                    ?? sb4 = new StringBuilder();
                    sb4.append(": ");
                    sb4.append(e19);
                    fail(cls, sb4.toString());
                    bufferedReader2 = sb4;
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e20) {
                        e = e20;
                        sb2 = new StringBuilder();
                        sb2.append(": ");
                        sb2.append((Object) e);
                        fail(cls, sb2.toString());
                        return false;
                    }
                }
                return false;
            }
            int indexOf = readLine.indexOf(35);
            String str = readLine;
            if (indexOf >= 0) {
                str = readLine.substring(0, indexOf);
            }
            trim = str.trim();
            length = trim.length();
        } while (length == 0);
        if (trim.indexOf(32) >= 0 || trim.indexOf(9) >= 0) {
            fail(cls, url, 1, "Illegal configuration-file syntax");
        }
        int codePointAt = trim.codePointAt(0);
        if (!Character.isJavaIdentifierStart(codePointAt)) {
            fail(cls, url, 1, "Illegal provider-class name: " + trim);
        }
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = trim.codePointAt(charCount);
            if (!Character.isJavaIdentifierPart(codePointAt2) && codePointAt2 != 46) {
                fail(cls, url, 1, "Illegal provider-class name: " + trim);
            }
            charCount += Character.charCount(codePointAt2);
        }
        try {
            bufferedReader.close();
        } catch (IOException e21) {
            fail(cls, ": " + ((Object) e21));
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e22) {
                fail(cls, ": " + ((Object) e22));
            }
        }
        return true;
    }

    private static void fail(Class<?> cls, URL url, int i10, String str) throws ServiceConfigurationError {
        fail(cls, ((Object) url) + s.f32937c + i10 + ": " + str);
    }
}

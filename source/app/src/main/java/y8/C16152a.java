package y8;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

@Deprecated
public class C16152a {
    public static void a(String source, String target, b listener) {
        if (c(new File(source), new File(target), listener)) {
            if (listener != null) {
                listener.onSuccess();
            }
        } else if (listener != null) {
            listener.a();
        }
    }

    public static boolean b(File sourceLocation, File targetLocation) {
        return c(sourceLocation, targetLocation, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x00b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean c(File sourceLocation, File targetLocation, b listener) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        if (sourceLocation.isDirectory()) {
            if (!targetLocation.exists() && !targetLocation.mkdirs()) {
                if (listener != null) {
                    listener.a();
                }
                return false;
            }
            String[] list = sourceLocation.list();
            if (list != null) {
                for (int i10 = 0; i10 < list.length; i10++) {
                    c(new File(sourceLocation, list[i10]), new File(targetLocation, list[i10]), listener);
                }
            }
            return true;
        }
        FileInputStream fileInputStream = null;
        try {
            File parentFile = targetLocation.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                if (listener != null) {
                    listener.a();
                }
                return false;
            }
            FileInputStream fileInputStream2 = new FileInputStream(sourceLocation);
            try {
                fileOutputStream2 = new FileOutputStream(targetLocation);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = fileInputStream2.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    }
                    fileInputStream2.close();
                } catch (IOException e10) {
                    e = e10;
                    fileInputStream = fileInputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                }
            } catch (IOException e11) {
                e = e11;
                fileOutputStream = null;
                fileInputStream = fileInputStream2;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
                fileInputStream = fileInputStream2;
            }
            try {
                fileOutputStream2.close();
                if (listener != null) {
                    listener.b();
                }
                return true;
            } catch (IOException e12) {
                e = e12;
                IOException iOException = e;
                fileOutputStream = fileOutputStream2;
                e = iOException;
                try {
                    e.printStackTrace();
                    if (listener != null) {
                        listener.a();
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Error | Exception unused) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Error | Exception unused2) {
                        }
                    }
                    return false;
                } catch (Throwable th4) {
                    th = th4;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Error | Exception unused3) {
                        }
                    }
                    if (fileOutputStream != null) {
                        throw th;
                    }
                    try {
                        fileOutputStream.close();
                        throw th;
                    } catch (Error | Exception unused4) {
                        throw th;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                Throwable th6 = th;
                fileOutputStream = fileOutputStream2;
                th = th6;
                if (fileInputStream != null) {
                }
                if (fileOutputStream != null) {
                }
            }
        } catch (IOException e13) {
            e = e13;
            fileOutputStream = null;
        } catch (Throwable th7) {
            th = th7;
            fileOutputStream = null;
        }
    }
}

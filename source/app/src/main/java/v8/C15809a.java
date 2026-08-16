package v8;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class C15809a {
    public final boolean a(File file, InterfaceC15810b listener) {
        if (file.isDirectory()) {
            return b(file, listener);
        }
        if (listener != null) {
            listener.b();
        }
        return file.delete();
    }

    public final boolean b(File fileOrDirectory, InterfaceC15810b listener) {
        if (fileOrDirectory.isDirectory()) {
            for (File file : fileOrDirectory.listFiles()) {
                b(file, listener);
            }
        }
        return fileOrDirectory.delete();
    }

    public void c(String fullpath, InterfaceC15810b listener) {
        File file = new File(fullpath);
        if (!file.exists()) {
            if (listener != null) {
                listener.a();
            }
        } else if (a(file, listener)) {
            if (listener != null) {
                listener.b();
            }
        } else if (listener != null) {
            listener.a();
        }
    }

    public boolean d(File sourceLocation, File targetLocation, InterfaceC15810b listener) {
        try {
            if (sourceLocation.isDirectory()) {
                if (!targetLocation.exists() && !targetLocation.mkdirs()) {
                    if (listener != null) {
                        listener.a();
                    }
                    return false;
                }
                String[] list = sourceLocation.list();
                for (int i10 = 0; i10 < list.length; i10++) {
                    d(new File(sourceLocation, list[i10]), new File(targetLocation, list[i10]), listener);
                }
                return true;
            }
            File parentFile = targetLocation.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                if (listener != null) {
                    listener.a();
                }
                return false;
            }
            FileInputStream fileInputStream = new FileInputStream(sourceLocation);
            FileOutputStream fileOutputStream = new FileOutputStream(targetLocation);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileInputStream.close();
            fileOutputStream.close();
            if (listener == null) {
                return true;
            }
            listener.b();
            return true;
        } catch (IOException e10) {
            e10.printStackTrace();
            if (listener != null) {
                listener.a();
            }
            return false;
        }
    }
}

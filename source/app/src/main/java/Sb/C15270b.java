package sb;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

public class C15270b {

    public PrintWriter f109420a;

    public void a(String name, NativeFloatBuffer buffer) {
        if (buffer == null) {
            return;
        }
        g();
        this.f109420a.println("FLOAT [" + buffer.capacity() + "]");
        this.f109420a.println(name);
        float f10 = -999999.0f;
        int i10 = 0;
        for (int i11 = 0; i11 < buffer.capacity(); i11++) {
            float f11 = buffer.get(i11);
            if (i11 > 0) {
                if (f10 == f11) {
                    i10++;
                } else {
                    this.f109420a.println("x" + i10);
                    i10 = 0;
                }
            }
            String str = f11 + "";
            if (str.endsWith(".0")) {
                str = str.replace(".0", "");
            }
            this.f109420a.println(str);
            f10 = f11;
        }
        if (i10 > 0) {
            this.f109420a.println("x" + i10);
        }
        this.f109420a.println(";");
    }

    public void b(String name, NativeIntBuffer buffer) {
        if (buffer == null) {
            return;
        }
        g();
        this.f109420a.println("INT [" + buffer.capacity() + "]");
        this.f109420a.println(name);
        int i10 = -999999;
        int i11 = 0;
        for (int i12 = 0; i12 < buffer.capacity(); i12++) {
            int i13 = buffer.get(i12);
            if (i12 > 0) {
                if (i10 == i13) {
                    i11++;
                } else {
                    this.f109420a.println("x" + i11);
                    i11 = 0;
                }
            }
            String str = i13 + "";
            if (str.endsWith(".0")) {
                str = str.replace(".0", "");
            }
            this.f109420a.println(str);
            i10 = i13;
        }
        if (i11 > 0) {
            this.f109420a.println("x" + i11);
        }
        this.f109420a.println(";");
    }

    public void c(String message) {
        g();
        this.f109420a.println("# " + message);
    }

    public boolean d(File file) {
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
            PrintWriter printWriter = new PrintWriter(file);
            this.f109420a = printWriter;
            printWriter.write("");
            return true;
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return false;
        } catch (IOException e11) {
            e11.printStackTrace();
            System.out.println("File: " + file.getAbsolutePath());
            return false;
        }
    }

    public boolean e(FileOutputStream file) {
        PrintWriter printWriter = new PrintWriter(file);
        this.f109420a = printWriter;
        printWriter.write("");
        return true;
    }

    public boolean f() {
        g();
        this.f109420a.flush();
        this.f109420a.close();
        this.f109420a = null;
        return true;
    }

    public void finalize() throws Throwable {
        PrintWriter printWriter = this.f109420a;
        if (printWriter != null) {
            printWriter.flush();
            this.f109420a.close();
            this.f109420a = null;
        }
        super.finalize();
    }

    public final void g() {
        if (this.f109420a == null) {
            throw new IllegalArgumentException("the serialized was not initiliazed with (begin)");
        }
    }
}

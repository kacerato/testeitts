package sb;

import com.itsmagic.engine.Engines.Engine.StreamSerializer.CorruptedFileException;
import com.itsmagic.engine.Engines.Engine.StreamSerializer.IncorrectFileTypeException;
import com.itsmagic.engine.Engines.Engine.StreamSerializer.UnknowStepException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import yd.C16181m;

public class C15269a {

    public InputStreamReader f109417a = null;

    public BufferedReader f109418b = null;

    public FileInputStream f109419c = null;

    public enum EnumC2004a {
        Float,
        Int
    }

    public interface b {
        void a(float value, int count);

        void b();

        void c(float value);

        void d(int value);

        void e(int value, int count);

        boolean f(String bufferName, EnumC2004a bufferType, int capacity);

        void g();

        void h();

        void i(String comment, int line);
    }

    public enum c {
        None,
        WaitingBufferTittle,
        ReadingBuffer
    }

    public boolean a(File file, b listener) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            this.f109419c = fileInputStream;
            return b(fileInputStream, listener);
        } catch (Exception e10) {
            e10.printStackTrace();
            d();
            return false;
        }
    }

    public boolean b(FileInputStream fileInputStream, b listener) {
        try {
            this.f109419c = fileInputStream;
            this.f109417a = new InputStreamReader(fileInputStream);
            this.f109418b = new BufferedReader(this.f109417a);
            e(listener);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            d();
            return false;
        }
    }

    public boolean c(InputStream fileInputStream, b listener) {
        try {
            this.f109417a = new InputStreamReader(fileInputStream);
            this.f109418b = new BufferedReader(this.f109417a);
            e(listener);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            d();
            return false;
        }
    }

    public boolean d() {
        f();
        try {
            BufferedReader bufferedReader = this.f109418b;
            if (bufferedReader != null) {
                bufferedReader.close();
                this.f109418b = null;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        try {
            InputStreamReader inputStreamReader = this.f109417a;
            if (inputStreamReader != null) {
                inputStreamReader.close();
                this.f109417a = null;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        try {
            FileInputStream fileInputStream = this.f109419c;
            if (fileInputStream == null) {
                return true;
            }
            fileInputStream.close();
            this.f109419c = null;
            return true;
        } catch (IOException e12) {
            e12.printStackTrace();
            return true;
        }
    }

    public final void e(b listener) throws IOException {
        c cVar = c.None;
        listener.h();
        String readLine = this.f109418b.readLine();
        int i10 = 0;
        int i11 = -1;
        float f10 = 0.0f;
        EnumC2004a enumC2004a = null;
        int i12 = 0;
        while (readLine != null) {
            if (i10 == 0 && !readLine.startsWith(C16181m.f130230g)) {
                throw new IncorrectFileTypeException("File corrupted or is not a stream file!");
            }
            c cVar2 = c.ReadingBuffer;
            if (cVar == cVar2) {
                if (readLine.equals(";")) {
                    listener.b();
                    cVar = c.None;
                    i11 = -1;
                    enumC2004a = null;
                } else if (readLine.startsWith("x")) {
                    int parseInt = Integer.parseInt(readLine.substring(1));
                    if (enumC2004a == EnumC2004a.Float) {
                        listener.a(f10, parseInt);
                    } else if (enumC2004a == EnumC2004a.Int) {
                        listener.e(i12, parseInt);
                    }
                } else if (enumC2004a == EnumC2004a.Float) {
                    float parseFloat = Float.parseFloat(readLine);
                    listener.c(parseFloat);
                    f10 = parseFloat;
                } else if (enumC2004a == EnumC2004a.Int) {
                    int parseInt2 = Integer.parseInt(readLine);
                    listener.d(parseInt2);
                    i12 = parseInt2;
                }
            } else if (readLine.startsWith(C16181m.f130230g)) {
                listener.i(readLine.substring(1), i10);
            } else if (readLine.startsWith("FLOAT [")) {
                if (cVar != c.None) {
                    throw new CorruptedFileException("illegal buffer read, a new buffer was introduced before a correct finish. line:" + i10);
                }
                enumC2004a = EnumC2004a.Float;
                i11 = Nc.b.w1(readLine.substring(readLine.lastIndexOf("[") + 1, readLine.lastIndexOf("]")));
                cVar = c.WaitingBufferTittle;
            } else if (readLine.startsWith("INT [")) {
                if (cVar != c.None) {
                    throw new CorruptedFileException("illegal buffer read, a new buffer was introduced before a correct finish. line:" + i10);
                }
                enumC2004a = EnumC2004a.Int;
                i11 = Nc.b.w1(readLine.substring(readLine.lastIndexOf("[") + 1, readLine.lastIndexOf("]")));
                cVar = c.WaitingBufferTittle;
            } else {
                if (cVar != c.WaitingBufferTittle) {
                    throw new UnknowStepException("Unknown step at line " + i10);
                }
                if (enumC2004a == null) {
                    throw new CorruptedFileException("cannot begin a buffer without type and capacity");
                }
                if (listener.f(readLine, enumC2004a, i11)) {
                    cVar = cVar2;
                }
            }
            readLine = this.f109418b.readLine();
            i10++;
        }
        listener.g();
    }

    public final void f() {
        if (this.f109418b == null) {
            throw new IllegalArgumentException("the serialized was not initiliazed with (begin)");
        }
        if (this.f109417a == null) {
            throw new IllegalArgumentException("the serialized was not initiliazed with (begin)");
        }
    }

    public void finalize() throws Throwable {
        BufferedReader bufferedReader = this.f109418b;
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
                this.f109418b = null;
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        InputStreamReader inputStreamReader = this.f109417a;
        if (inputStreamReader != null) {
            try {
                inputStreamReader.close();
                this.f109417a = null;
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }
        FileInputStream fileInputStream = this.f109419c;
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
                this.f109419c = null;
            } catch (IOException e12) {
                e12.printStackTrace();
            }
        }
        super.finalize();
    }
}

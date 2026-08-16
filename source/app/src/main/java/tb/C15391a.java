package tb;

import JAVARuntime.Font;
import V9.o;
import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;

public class C15391a {

    public final String f117254a;

    public final int f117255b;

    public boolean f117258e;

    public Font f117260g;

    public final AtomicBoolean f117257d = new AtomicBoolean();

    public long f117259f = 0;

    public final boolean f117256c = true;

    public C15391a(String file, int resolution) {
        this.f117254a = file;
        this.f117255b = resolution;
    }

    public boolean a(String file, int resolution) {
        return b().equals(file) && e() == resolution;
    }

    public String b() {
        return this.f117254a;
    }

    public final InputStream c() {
        if (!this.f117256c) {
            return X7.a.o(this.f117254a);
        }
        try {
            return new FileInputStream(this.f117254a);
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public long d() {
        return this.f117259f;
    }

    public int e() {
        return this.f117255b;
    }

    public boolean f() {
        return this.f117257d.get();
    }

    public boolean g() {
        return this.f117258e;
    }

    public void h(boolean pendingLoad) {
        this.f117258e = pendingLoad;
    }

    public Font i() {
        Font font = this.f117260g;
        if (font != null) {
            return font;
        }
        Font font2 = new Font(this);
        this.f117260g = font2;
        return font2;
    }

    public void j() {
        boolean z10;
        if (this.f117258e) {
            InputStream c10 = c();
            if (c10 != null) {
                File a10 = o.a(c10);
                try {
                    if (a10 != null) {
                        try {
                            if (a10.exists()) {
                                System.out.println("addFontFromFile(" + ((Object) a10) + ")");
                                long a11 = ImGui.a(a10.getAbsolutePath(), (float) this.f117255b, false);
                                this.f117259f = a11;
                                if (a11 != 0) {
                                    z10 = true;
                                    c10.close();
                                }
                            }
                        } finally {
                            a10.delete();
                        }
                    }
                    c10.close();
                } catch (Error | Exception e10) {
                    e10.printStackTrace();
                }
                z10 = false;
            } else {
                z10 = false;
            }
            this.f117258e = false;
            this.f117257d.set(z10);
        }
    }

    public C15391a(File file, int resolution) {
        this.f117254a = file.getAbsolutePath();
        this.f117255b = resolution;
    }
}

package jf;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.util.logging.Logger;
import v0.C15761c;

public class n implements Savable {

    public static final n f92945e = new n(0, 0, 0);

    public static final Logger f92946f = Logger.getLogger(n.class.getName());

    public int f92947b;

    public int f92948c;

    public int f92949d;

    public n() {
    }

    public n a(int i10, int i11, int i12) {
        return new n(this.f92947b + i10, this.f92948c + i11, this.f92949d + i12);
    }

    public n b(int i10, int i11, int i12) {
        return new n(this.f92947b - i10, this.f92948c - i11, this.f92949d - i12);
    }

    public int c() {
        return this.f92947b;
    }

    public int d(n nVar) {
        return this.f92947b - nVar.c();
    }

    public int e() {
        return this.f92948c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            n nVar = (n) obj;
            if (nVar.c() == this.f92947b && nVar.e() == this.f92948c && nVar.g() == this.f92949d) {
                return true;
            }
        }
        return false;
    }

    public int f(n nVar) {
        return this.f92948c - nVar.e();
    }

    public int g() {
        return this.f92949d;
    }

    public int h(n nVar) {
        return this.f92949d - nVar.g();
    }

    public int hashCode() {
        return ((((C15761c.f121060w + this.f92947b) * 29) + this.f92948c) * 29) + this.f92949d;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f92947b = capsule.readInt("x", 0);
        this.f92948c = capsule.readInt("y", 0);
        this.f92949d = capsule.readInt("z", 0);
    }

    public String toString() {
        return String.format("(%d,%d,%d)", Integer.valueOf(this.f92947b), Integer.valueOf(this.f92948c), Integer.valueOf(this.f92949d));
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f92947b, "x", 0);
        capsule.write(this.f92948c, "y", 0);
        capsule.write(this.f92949d, "z", 0);
    }

    public n(int i10, int i11, int i12) {
        this.f92947b = i10;
        this.f92948c = i11;
        this.f92949d = i12;
    }
}

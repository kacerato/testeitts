package n3;

import javax.annotation.Nonnull;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C14347a extends f {

    public final String f97716a;

    public final String f97717b;

    public C14347a(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        this.f97716a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f97717b = str2;
    }

    @Override
    @Nonnull
    public String b() {
        return this.f97716a;
    }

    @Override
    @Nonnull
    public String c() {
        return this.f97717b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f97716a.equals(fVar.b()) && this.f97717b.equals(fVar.c());
    }

    public int hashCode() {
        return ((this.f97716a.hashCode() ^ 1000003) * 1000003) ^ this.f97717b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f97716a + ", version=" + this.f97717b + VectorFormat.DEFAULT_SUFFIX;
    }
}

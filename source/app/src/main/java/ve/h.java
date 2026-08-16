package ve;

import androidx.annotation.Nullable;
import org.eclipse.jdt.internal.core.JavaElement;

public class h {

    public final a f121585a;

    public final a f121586b;

    public static class a {

        public final float f121587a;

        public final String f121588b;

        public a(float f10, @Nullable String str) {
            this.f121587a = f10;
            this.f121588b = str;
        }

        public String toString() {
            return "Dimension{value=" + this.f121587a + ", unit='" + this.f121588b + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
        }
    }

    public h(@Nullable a aVar, @Nullable a aVar2) {
        this.f121585a = aVar;
        this.f121586b = aVar2;
    }

    public String toString() {
        return "ImageSize{width=" + ((Object) this.f121585a) + ", height=" + ((Object) this.f121586b) + JavaElement.JEM_ANNOTATION;
    }
}

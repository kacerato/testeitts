package Bb;

import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureException;
import ub.g;
import ub.p;
import yb.C16165b;

public class c {

    public a f1681a;

    public interface a {
        void a();
    }

    public c() {
    }

    public static p a(String imageFile, p texture) {
        if (imageFile != null && !imageFile.isEmpty()) {
            return texture instanceof g ? !((g) texture).getFile().equals(imageFile) ? C16165b.u(imageFile) : texture : texture == null ? C16165b.u(imageFile) : texture;
        }
        if (texture instanceof g) {
            return null;
        }
        return texture;
    }

    public p b(String imageFile, p texture) {
        if (imageFile == null || imageFile.isEmpty()) {
            if (!(texture instanceof g)) {
                return texture;
            }
        } else if (texture instanceof g) {
            if (((g) texture).getFile().equals(imageFile)) {
                return texture;
            }
            try {
                return C16165b.i(imageFile);
            } catch (TextureException e10) {
                e10.printStackTrace();
                if (this.f1681a != null) {
                    this.f1681a.a();
                }
            }
        } else {
            if (texture != null) {
                return texture;
            }
            try {
                return C16165b.i(imageFile);
            } catch (TextureException e11) {
                e11.printStackTrace();
                if (this.f1681a != null) {
                    this.f1681a.a();
                }
            }
        }
        return null;
    }

    public c(a listener) {
        this.f1681a = listener;
    }
}

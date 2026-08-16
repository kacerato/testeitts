package D8;

import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;

@Deprecated
public class b {

    public String f4957a;

    public boolean f4958b;

    public String f4959c;

    public String f4960d;

    public TextureConfig f4961e;

    public ColorINT f4962f;

    public Vertex f4963g;

    public b() {
        this.f4957a = "";
        this.f4958b = true;
        this.f4959c = a.f4935u;
        this.f4960d = "";
        this.f4961e = null;
        this.f4962f = new ColorINT();
        this.f4963g = null;
        this.f4959c = a.f4935u;
    }

    public b clone() {
        return new b(this.f4957a, this.f4958b, this.f4959c, this.f4960d, this.f4962f);
    }

    public String b() {
        return this.f4957a;
    }

    public Vertex c() {
        if (this.f4963g == null) {
            this.f4963g = Vertex.B1(this.f4957a, null);
        }
        return this.f4963g;
    }

    public b(String MESH, boolean MESH_FROM_ASSETS, String SHADER, String TEXTURE) {
        this.f4957a = "";
        this.f4958b = true;
        this.f4959c = a.f4935u;
        this.f4960d = "";
        this.f4961e = null;
        this.f4962f = new ColorINT();
        this.f4963g = null;
        this.f4957a = MESH;
        this.f4958b = MESH_FROM_ASSETS;
        this.f4959c = SHADER;
        this.f4960d = TEXTURE;
    }

    public b(String MESH, boolean MESH_FROM_ASSETS, String SHADER, String TEXTURE, TextureConfig texConfig) {
        this.f4957a = "";
        this.f4958b = true;
        this.f4959c = a.f4935u;
        this.f4960d = "";
        this.f4961e = null;
        this.f4962f = new ColorINT();
        this.f4963g = null;
        this.f4957a = MESH;
        this.f4958b = MESH_FROM_ASSETS;
        this.f4959c = SHADER;
        this.f4960d = TEXTURE;
        this.f4961e = texConfig;
    }

    public b(String MESH, boolean MESH_FROM_ASSETS, String SHADER, ColorINT color) {
        this.f4957a = "";
        this.f4958b = true;
        this.f4959c = a.f4935u;
        this.f4960d = "";
        this.f4961e = null;
        new ColorINT();
        this.f4963g = null;
        this.f4957a = MESH;
        this.f4958b = MESH_FROM_ASSETS;
        this.f4959c = SHADER;
        this.f4960d = null;
        this.f4962f = color;
    }

    public b(String MESH, boolean MESH_FROM_ASSETS, String SHADER, String TEXTURE, ColorINT color) {
        this.f4957a = "";
        this.f4958b = true;
        this.f4959c = a.f4935u;
        this.f4960d = "";
        this.f4961e = null;
        new ColorINT();
        this.f4963g = null;
        this.f4957a = MESH;
        this.f4958b = MESH_FROM_ASSETS;
        this.f4959c = SHADER;
        this.f4960d = TEXTURE;
        this.f4962f = color;
    }
}

package ef;

import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetManager;
import com.jme3.material.MatParamTexture;
import com.jme3.material.Material;
import com.jme3.math.Vector2f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.texture.image.ColorSpace;
import com.jme3.util.BufferUtils;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class C13087c {

    public static final Logger f85578i = Logger.getLogger(C13087c.class.getName());

    public Map<String, byte[]> f85579a;

    public final int f85580b;

    public final int f85581c;

    public final a f85583e;

    public String f85586h;

    public final Image.Format f85582d = Image.Format.ABGR8;

    public final Map<String, b> f85584f = new TreeMap();

    public final Map<String, String> f85585g = new HashMap();

    public class a {

        public b f85587a;

        public a[] f85588b;

        public boolean f85589c = false;

        public a(int i10, int i11, int i12, int i13) {
            this.f85587a = new b(i10, i11, i12, i13);
            this.f85588b = r8;
            a[] aVarArr = {null, null};
        }

        public a a(Image image) {
            if (!b()) {
                a a10 = this.f85588b[0].a(image);
                return a10 != null ? a10 : this.f85588b[1].a(image);
            }
            if (this.f85589c || image.getWidth() > this.f85587a.e() || image.getHeight() > this.f85587a.c()) {
                return null;
            }
            if (image.getWidth() == this.f85587a.e() && image.getHeight() == this.f85587a.c()) {
                this.f85589c = true;
                return this;
            }
            if (this.f85587a.e() - image.getWidth() > this.f85587a.c() - image.getHeight()) {
                this.f85588b[0] = new a(this.f85587a.f(), this.f85587a.g(), image.getWidth(), this.f85587a.c());
                this.f85588b[1] = new a(image.getWidth() + this.f85587a.f(), this.f85587a.g(), this.f85587a.e() - image.getWidth(), this.f85587a.c());
            } else {
                this.f85588b[0] = new a(this.f85587a.f(), this.f85587a.g(), this.f85587a.e(), image.getHeight());
                this.f85588b[1] = new a(this.f85587a.f(), image.getHeight() + this.f85587a.g(), this.f85587a.e(), this.f85587a.c() - image.getHeight());
            }
            return this.f85588b[0].a(image);
        }

        public boolean b() {
            a[] aVarArr = this.f85588b;
            return aVarArr[0] == null && aVarArr[1] == null;
        }
    }

    public class b {

        public final int f85591a;

        public final int f85592b;

        public int f85593c;

        public int f85594d;

        public b(int i10, int i11, int i12, int i13) {
            this.f85591a = i10;
            this.f85592b = i11;
            this.f85593c = i12;
            this.f85594d = i13;
        }

        public int c() {
            return this.f85594d;
        }

        public Vector2f d(Vector2f vector2f) {
            Vector2f vector2f2 = new Vector2f(f() / C13087c.this.f85580b, g() / C13087c.this.f85581c);
            vector2f2.addLocal(vector2f.f81609x * (e() / C13087c.this.f85580b), vector2f.f81610y * (c() / C13087c.this.f85581c));
            return vector2f2;
        }

        public int e() {
            return this.f85593c;
        }

        public int f() {
            return this.f85591a;
        }

        public int g() {
            return this.f85592b;
        }

        public void h(FloatBuffer floatBuffer, int i10, FloatBuffer floatBuffer2) {
            Vector2f vector2f = new Vector2f();
            int i11 = i10 * 2;
            for (int i12 = 0; i12 < floatBuffer.limit() / 2; i12++) {
                int i13 = i12 * 2;
                vector2f.f81609x = floatBuffer.get(i13);
                vector2f.f81610y = floatBuffer.get(i13 + 1);
                Vector2f d10 = d(vector2f);
                int i14 = i13 + i11;
                floatBuffer2.put(i14, d10.f81609x);
                floatBuffer2.put(i14 + 1, d10.f81610y);
            }
        }
    }

    public C13087c(int i10, int i11) {
        this.f85580b = i10;
        this.f85581c = i11;
        this.f85583e = new a(0, 0, i10, i11);
    }

    public static void h(List<Geometry> list, Mesh mesh, C13087c c13087c) {
        int i10 = 0;
        for (Geometry geometry : list) {
            Mesh mesh2 = geometry.getMesh();
            geometry.computeWorldMatrix();
            int vertexCount = mesh2.getVertexCount();
            VertexBuffer.Type type = VertexBuffer.Type.TexCoord;
            VertexBuffer buffer = mesh2.getBuffer(type);
            VertexBuffer buffer2 = mesh.getBuffer(type);
            if (buffer != null && buffer2 != null) {
                c13087c.j(geometry, i10, mesh);
                i10 += vertexCount;
            }
        }
    }

    public static C13087c l(Spatial spatial, int i10) {
        ArrayList arrayList = new ArrayList();
        C13085a.e(spatial, arrayList);
        C13087c c13087c = new C13087c(i10, i10);
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            if (!c13087c.c((Geometry) it.next())) {
                f85578i.log(Level.WARNING, "Texture atlas size too small, cannot add all textures");
                return null;
            }
        }
        return c13087c;
    }

    public static Texture q(Geometry geometry, String str) {
        Texture textureValue;
        Material material = geometry.getMaterial();
        if (material == null || material.getParam(str) == null || !(material.getParam(str) instanceof MatParamTexture) || (textureValue = ((MatParamTexture) material.getParam(str)).getTextureValue()) == null) {
            return null;
        }
        return textureValue;
    }

    public static Geometry r(Spatial spatial, AssetManager assetManager, int i10) {
        ArrayList arrayList = new ArrayList();
        C13085a.e(spatial, arrayList);
        C13087c l10 = l(spatial, i10);
        if (l10 == null) {
            return null;
        }
        Geometry geometry = new Geometry();
        Mesh mesh = new Mesh();
        C13085a.j(arrayList, mesh);
        h(arrayList, mesh, l10);
        mesh.updateCounts();
        mesh.updateBound();
        geometry.setMesh(mesh);
        Material material = new Material(assetManager, "Common/MatDefs/Light/Lighting.j3md");
        Texture n10 = l10.n("DiffuseMap");
        Texture n11 = l10.n("NormalMap");
        Texture n12 = l10.n("SpecularMap");
        if (n10 != null) {
            material.setTexture("DiffuseMap", n10);
        }
        if (n11 != null) {
            material.setTexture("NormalMap", n11);
        }
        if (n12 != null) {
            material.setTexture("SpecularMap", n12);
        }
        material.setFloat("Shininess", 16.0f);
        geometry.setMaterial(material);
        return geometry;
    }

    public boolean c(Geometry geometry) {
        Texture q10 = q(geometry, "DiffuseMap");
        Texture q11 = q(geometry, "NormalMap");
        Texture q12 = q(geometry, "SpecularMap");
        if (q10 == null) {
            q10 = q(geometry, "ColorMap");
        }
        if (q10 != null && q10.getKey() != null) {
            String assetKey = q10.getKey().toString();
            if (!g(q10, "DiffuseMap")) {
                return false;
            }
            if (q11 != null && q11.getKey() != null) {
                f(q11, "NormalMap", assetKey);
            }
            if (q12 != null && q12.getKey() != null) {
                f(q12, "SpecularMap", assetKey);
            }
        }
        return true;
    }

    public final boolean d(Image image, String str, String str2, String str3) {
        b bVar;
        if (this.f85586h == null) {
            this.f85586h = str2;
        }
        if (str3 == null && !this.f85586h.equals(str2)) {
            throw new IllegalStateException("Atlas already has a master map called " + this.f85586h + ". Textures for new maps have to use a texture from the master map for their location.");
        }
        b bVar2 = this.f85584f.get(str);
        if (bVar2 != null) {
            if (!str2.equals(this.f85585g.get(str))) {
                f85578i.log(Level.WARNING, "Same texture " + str + " is used in different maps! (" + str2 + " and " + this.f85585g.get(str) + "). Location will be based on location in " + this.f85585g.get(str) + "!");
                m(image, bVar2.f(), bVar2.g(), str2);
            }
            return true;
        }
        if (str3 == null) {
            a a10 = this.f85583e.a(image);
            if (a10 == null) {
                return false;
            }
            bVar = a10.f85587a;
        } else {
            bVar = this.f85584f.get(str3);
            if (bVar == null) {
                throw new IllegalStateException("Cannot find master map texture for " + str + ".");
            }
            if (bVar.f85593c != image.getWidth() || bVar.f85594d != image.getHeight()) {
                throw new IllegalStateException(str2 + " " + str + " does not fit " + this.f85586h + " tile size. Make sure all textures (diffuse, normal, specular) for one model are the same size.");
            }
        }
        this.f85585g.put(str, str2);
        this.f85584f.put(str, bVar);
        m(image, bVar.f(), bVar.g(), str2);
        return true;
    }

    public void e(Texture texture, String str, Texture texture2) {
        String s10 = s(texture2);
        if (s10 == null) {
            throw new IllegalStateException("Supplied master map texture has no asset key name!");
        }
        f(texture, str, s10);
    }

    public void f(Texture texture, String str, String str2) {
        if (texture == null) {
            throw new IllegalStateException("Texture cannot be null!");
        }
        String s10 = s(texture);
        if (texture.getImage() == null || s10 == null) {
            throw new IllegalStateException("Texture has no asset key name!");
        }
        d(texture.getImage(), s10, str, str2);
    }

    public boolean g(Texture texture, String str) {
        if (texture == null) {
            throw new IllegalStateException("Texture cannot be null!");
        }
        String s10 = s(texture);
        if (texture.getImage() == null || s10 == null) {
            throw new IllegalStateException("Texture has no asset key name!");
        }
        return d(texture.getImage(), s10, str, null);
    }

    public boolean i(Geometry geometry) {
        return j(geometry, 0, geometry.getMesh());
    }

    public boolean j(Geometry geometry, int i10, Mesh mesh) {
        Mesh mesh2 = geometry.getMesh();
        geometry.computeWorldMatrix();
        VertexBuffer.Type type = VertexBuffer.Type.TexCoord;
        VertexBuffer buffer = mesh2.getBuffer(type);
        VertexBuffer buffer2 = mesh.getBuffer(type);
        if (buffer == null || buffer2 == null) {
            throw new IllegalStateException("Geometry mesh has no texture coordinate buffer.");
        }
        Texture q10 = q(geometry, "DiffuseMap");
        if (q10 == null) {
            q10 = q(geometry, "ColorMap");
        }
        if (q10 == null) {
            throw new IllegalStateException("Geometry has no proper texture.");
        }
        b o10 = o(q10);
        if (o10 == null) {
            return false;
        }
        o10.h((FloatBuffer) buffer.getData(), i10, (FloatBuffer) buffer2.getData());
        return true;
    }

    public final Image k(Image image) {
        try {
            Class<?> cls = Class.forName("jme3tools.converters.ImageToAwt");
            Image image2 = new Image(this.f85582d, image.getWidth(), image.getHeight(), BufferUtils.createByteBuffer(image.getWidth() * image.getHeight() * 4), (int[]) null, ColorSpace.Linear);
            cls.getMethod("convert", Image.class, Image.class).invoke(cls.getDeclaredConstructor(null).newInstance(null), image, image2);
            return image2;
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException unused) {
            return null;
        }
    }

    public final void m(Image image, int i10, int i11, String str) {
        if (this.f85579a == null) {
            this.f85579a = new HashMap();
        }
        byte[] bArr = this.f85579a.get(str);
        if (bArr == null) {
            bArr = new byte[this.f85580b * this.f85581c * 4];
            this.f85579a.put(str, bArr);
        }
        ByteBuffer data = image.getData(0);
        int height = image.getHeight();
        int width = image.getWidth();
        Image image2 = null;
        for (int i12 = 0; i12 < height; i12++) {
            for (int i13 = 0; i13 < width; i13++) {
                int i14 = (i13 + i10 + ((i12 + i11) * this.f85580b)) * 4;
                if (image.getFormat() == Image.Format.ABGR8) {
                    int i15 = ((i12 * width) + i13) * 4;
                    bArr[i14] = data.get(i15);
                    bArr[i14 + 1] = data.get(i15 + 1);
                    bArr[i14 + 2] = data.get(i15 + 2);
                    bArr[i14 + 3] = data.get(i15 + 3);
                } else if (image.getFormat() == Image.Format.BGR8) {
                    int i16 = ((i12 * width) + i13) * 3;
                    bArr[i14] = 1;
                    bArr[i14 + 1] = data.get(i16);
                    bArr[i14 + 2] = data.get(i16 + 1);
                    bArr[i14 + 3] = data.get(i16 + 2);
                } else if (image.getFormat() == Image.Format.RGB8) {
                    int i17 = ((i12 * width) + i13) * 3;
                    bArr[i14] = 1;
                    bArr[i14 + 1] = data.get(i17 + 2);
                    bArr[i14 + 2] = data.get(i17 + 1);
                    bArr[i14 + 3] = data.get(i17);
                } else if (image.getFormat() == Image.Format.RGBA8) {
                    int i18 = ((i12 * width) + i13) * 4;
                    bArr[i14] = data.get(i18 + 3);
                    bArr[i14 + 1] = data.get(i18 + 2);
                    bArr[i14 + 2] = data.get(i18 + 1);
                    bArr[i14 + 3] = data.get(i18);
                } else if (image.getFormat() == Image.Format.Luminance8) {
                    int i19 = (i12 * width) + i13;
                    bArr[i14] = 1;
                    bArr[i14 + 1] = data.get(i19);
                    bArr[i14 + 2] = data.get(i19);
                    bArr[i14 + 3] = data.get(i19);
                } else if (image.getFormat() == Image.Format.Luminance8Alpha8) {
                    int i20 = ((i12 * width) + i13) * 2;
                    bArr[i14] = data.get(i20 + 1);
                    bArr[i14 + 1] = data.get(i20);
                    bArr[i14 + 2] = data.get(i20);
                    bArr[i14 + 3] = data.get(i20);
                } else {
                    if (image2 != null) {
                        throw new UnsupportedOperationException("Cannot draw textures with format " + ((Object) image.getFormat()));
                    }
                    image2 = k(image);
                    if (image2 == null) {
                        throw new UnsupportedOperationException("Cannot draw or convert textures with format " + ((Object) image.getFormat()));
                    }
                    data = image2.getData(0);
                    int i21 = ((i12 * width) + i13) * 4;
                    bArr[i14] = data.get(i21);
                    bArr[i14 + 1] = data.get(i21 + 1);
                    bArr[i14 + 2] = data.get(i21 + 2);
                    bArr[i14 + 3] = data.get(i21 + 3);
                    image = image2;
                }
            }
        }
    }

    public Texture n(String str) {
        byte[] bArr;
        Map<String, byte[]> map = this.f85579a;
        if (map == null || (bArr = map.get(str)) == null) {
            return null;
        }
        Texture2D texture2D = new Texture2D(new Image(this.f85582d, this.f85580b, this.f85581c, BufferUtils.createByteBuffer(bArr), (int[]) null, ColorSpace.Linear));
        texture2D.setMagFilter(Texture.MagFilter.Bilinear);
        texture2D.setMinFilter(Texture.MinFilter.BilinearNearestMipMap);
        texture2D.setWrap(Texture.WrapMode.EdgeClamp);
        return texture2D;
    }

    public b o(Texture texture) {
        String s10 = s(texture);
        if (s10 != null) {
            return p(s10);
        }
        return null;
    }

    public final b p(String str) {
        return this.f85584f.get(str);
    }

    public final String s(Texture texture) {
        AssetKey key;
        if (texture == null || (key = texture.getKey()) == null) {
            return null;
        }
        return key.toString();
    }
}

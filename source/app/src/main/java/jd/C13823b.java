package jd;

import Ic.C2633l;
import android.content.Context;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Utils.ProjectFile.PFileSettings;
import java.io.File;
import java.util.List;

public class C13823b {

    public String f92878a;

    public String f92879b;

    public a f92880c;

    public List<C13823b> f92881d;

    public PFileSettings f92882e;

    public Object f92883f;

    public SteppedArrayList<C13822a> f92884g = null;

    public enum a {
        Directory,
        NodeScriptV2,
        Object,
        Unknown,
        Mesh,
        Texture,
        World,
        Area,
        Material,
        ImportedTexture,
        RenderTexture,
        Sound,
        ImportedAudio,
        Plugin,
        Animation,
        AnimationMask,
        Project,
        HPOP,
        TerrainData,
        NavMeshBake,
        Model3D,
        Mtl,
        Binary,
        Java,
        JavaClass,
        SkeletonData,
        JKS,
        TXT,
        Json,
        VGLSL,
        FGLSL,
        GGLSL,
        ITJAR,
        Font,
        JavaJar,
        Lua,
        Video,
        VideoOutput,
        ImportedVideo,
        VideoSound,
        Zip,
        XML,
        Cubemap,
        AnimGraph,
        PostProcessingShader,
        MaterialShader,
        VFXShader,
        UIPostProcessingShader,
        SkyboxShader,
        AmbientLightShader,
        VulkanGraph,
        NoCodeGraph,
        UIStyle
    }

    public C13823b(String path) {
        this.f92878a = path;
        this.f92879b = Tc.b.w(path, true);
        p();
    }

    public static void l(ImageView imageView, C13823b o10, Context context) {
        C2633l.k(imageView, o10, context, false);
    }

    public C13823b clone() {
        return new C13823b(this.f92878a, this.f92879b, c.b(d()), this.f92882e.clone(), this.f92880c);
    }

    public void b() {
        List<C13823b> list = this.f92881d;
        if (list != null) {
            list.clear();
        }
        this.f92881d = null;
        this.f92878a = null;
        this.f92880c = null;
    }

    public Object c() {
        return this.f92883f;
    }

    public List<C13823b> d() {
        if (this.f92881d == null) {
            this.f92881d = new SteppedArrayList();
        }
        return this.f92881d;
    }

    public String e() {
        return this.f92879b;
    }

    public String f() {
        return this.f92878a;
    }

    public PFileSettings g() {
        if (this.f92882e == null) {
            this.f92882e = new PFileSettings(0, false);
        }
        return this.f92882e;
    }

    public a h() {
        return this.f92880c;
    }

    public void i() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (C13823b c13823b : d()) {
            if (!steppedArrayList.contains(c13823b)) {
                steppedArrayList.add(c13823b);
            }
        }
        this.f92881d = steppedArrayList;
        for (C13823b c13823b2 : d()) {
            if (c13823b2 != null) {
                c13823b2.i();
            }
        }
    }

    public void j(Object extra) {
        this.f92883f = extra;
    }

    public void k(List<C13823b> files) {
        this.f92881d = files;
    }

    public void m(String name) {
        this.f92879b = name;
    }

    public void n(String path) {
        this.f92878a = path;
    }

    public void o(PFileSettings settings) {
        this.f92882e = settings;
    }

    public void p() {
        C2633l.f(this);
    }

    public void q(a type) {
        this.f92880c = type;
    }

    public File r() {
        return new File(f());
    }

    @NonNull
    public String toString() {
        return this.f92878a + " " + ((Object) this.f92880c);
    }

    public C13823b(String path, String name) {
        this.f92878a = path;
        this.f92879b = name;
        p();
    }

    public C13823b(String path, String name, PFileSettings settings) {
        this.f92878a = path;
        this.f92879b = name;
        this.f92882e = settings;
        p();
    }

    public C13823b(String path, String name, a type) {
        this.f92878a = path;
        this.f92879b = name;
        this.f92880c = type;
    }

    public C13823b(String path, String name, PFileSettings settings, a type) {
        this.f92878a = path;
        this.f92879b = name;
        this.f92882e = settings;
        this.f92880c = type;
    }

    public C13823b(String path, String name, List<C13823b> files, PFileSettings settings, boolean isDirectory) {
        this.f92878a = path;
        this.f92881d = files;
        this.f92879b = name;
        this.f92882e = settings;
        if (isDirectory) {
            this.f92880c = a.Directory;
        } else {
            p();
        }
    }

    public C13823b(String path, String name, List<C13823b> files, PFileSettings settings, a type) {
        this.f92878a = path;
        this.f92881d = files;
        this.f92879b = name;
        this.f92882e = settings;
        this.f92880c = type;
    }
}

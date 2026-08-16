package Ic;

import Vc.e;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Pair;
import android.widget.ImageView;
import bd.C3867a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import jd.C13823b;
import p8.C14940d;
import yb.C16165b;

public class C2633l {

    public static final String f9115A = ".ar";

    public static final String f9116B = ".sound";

    public static final String f9117C = ".anim";

    public static final String f9118D = ".amask";

    public static final String f9119E = ".mat";

    public static final String f9120F = ".hpop";

    public static final String f9121G = ".zip";

    public static final String f9122H = ".tdata";

    public static final String f9123I = ".bin";

    public static final String f9124J = ".java";

    public static final String f9125K = ".javac";

    public static final String f9126L = ".class";

    public static final String f9127M = ".dex";

    public static final String f9128N = ".skedata";

    public static final String f9129O = ".jks";

    public static final String f9130P = ".config";

    public static final String f9131Q = ".vglsl";

    public static final String f9132R = ".fglsl";

    public static final String f9133S = ".gglsl";

    public static final String f9134T = ".itjar";

    public static final String f9135U = ".jar";

    public static final String f9136V = ".txt";

    public static final String f9137W = ".pdf";

    public static final String f9138X = ".doc";

    public static final String f9139Y = ".docx";

    public static final String f9140Z = ".xml";

    public static final String f9141a = ".itsmbp";

    public static final String f9142a0 = ".json";

    public static final String f9143b = ".mp4|.3gp|.webm";

    public static final String f9144b0 = ".ttf|.otf";

    public static final String f9145c = ".ivo";

    public static final String f9146c0 = ".impack";

    public static final String f9147d = ".imv";

    public static final String f9148d0 = ".ipm";

    public static final String f9149e = ".imvs";

    public static final String f9150e0 = ".pvsc";

    public static final String f9151f = ".rte";

    public static final String f9152f0 = ".uipvsc";

    public static final String f9153g = ".nse";

    public static final String f9154g0 = ".svsc";

    public static final String f9155h = ".nm";

    public static final String f9156h0 = ".avsc";

    public static final String f9157i = ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm";

    public static final String f9158i0 = ".mvsc";

    public static final String f9159j = ".cbm";

    public static final String f9160j0 = ".vfxs";

    public static final String f9161k = ".cubet";

    public static final String f9162k0 = ".vgs";

    public static final String f9163l = ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm";

    public static final String f9164l0 = ".ncg";

    public static final String f9165m = ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf";

    public static final String f9166m0 = ".angr";

    public static final String f9167n = ".texture";

    public static final String f9168n0 = ".usy";

    public static final String f9169o = ".astc";

    public static final String f9170p = ".tif";

    public static final String f9171q = ".tga";

    public static final String f9172r = ".lua";

    public static final String f9173s = ".java|.lua";

    public static final String f9174t = ".go";

    public static final String f9175u = ".nvmb";

    public static final String f9176v = ".mesh";

    public static final String f9177w = ".mwf";

    public static final String f9178x = ".mtl";

    public static final String f9179y = ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv";

    public static final String f9180z = ".world";

    public class a implements Runnable {

        public final C13823b f9181b;

        public final Context f9182c;

        public final ImageView f9183d;

        public class RunnableC0232a implements Runnable {

            public final String f9184b;

            public final U.h f9185c;

            public final TextureConfig f9186d;

            public class C0233a implements e.k {
                public C0233a() {
                }

                @Override
                public void a(Drawable drawable) {
                    drawable.setFilterBitmap(RunnableC0232a.this.f9186d.k() != TextureConfig.c.Nearest);
                    a.this.f9183d.setImageDrawable(drawable);
                }
            }

            public RunnableC0232a(final String val$finalPath, final U.h val$options, final TextureConfig val$finalTexConfig) {
                this.f9184b = val$finalPath;
                this.f9185c = val$options;
                this.f9186d = val$finalTexConfig;
            }

            @Override
            public void run() {
                Vc.e.j(this.f9184b, a.this.f9182c, this.f9185c, com.bumptech.glide.load.engine.i.f59186b, new C0233a());
            }
        }

        public a(final C13823b val$o, final Context val$context, final ImageView val$imageView) {
            this.f9181b = val$o;
            this.f9182c = val$context;
            this.f9183d = val$imageView;
        }

        @Override
        public void run() {
            TextureConfig textureConfig;
            String f10 = this.f9181b.f();
            if (!f10.contains(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f9182c)) && !f10.startsWith("/storage/emulated/0/")) {
                f10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f9182c) + "/" + this.f9181b.f();
            }
            File file = new File(Tc.b.O(f10) + ".texture");
            if (!file.exists()) {
                try {
                    C16165b.u(f10.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f9182c) + "/", ""));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (file.exists()) {
                f10 = file.getAbsolutePath();
            }
            try {
                textureConfig = (TextureConfig) X7.a.m().fromJson(X7.a.s(f10 + ".config", N7.c.t()), TextureConfig.class);
            } catch (Exception e11) {
                e11.printStackTrace();
                textureConfig = null;
            }
            if (textureConfig == null) {
                textureConfig = new TextureConfig();
            }
            C2633l.e(new RunnableC0232a(f10, new U.h().c().u(R.drawable.wo_uimage), textureConfig));
        }
    }

    public class b implements Runnable {

        public final C13823b f9189b;

        public final Context f9190c;

        public final ImageView f9191d;

        public class a implements Runnable {

            public final String f9192b;

            public final U.h f9193c;

            public final TextureConfig f9194d;

            public class C0234a implements e.k {
                public C0234a() {
                }

                @Override
                public void a(Drawable drawable) {
                    drawable.setFilterBitmap(a.this.f9194d.k() != TextureConfig.c.Nearest);
                    b.this.f9191d.setImageDrawable(drawable);
                }
            }

            public a(final String val$finalPath, final U.h val$options, final TextureConfig val$finalTexConfig) {
                this.f9192b = val$finalPath;
                this.f9193c = val$options;
                this.f9194d = val$finalTexConfig;
            }

            @Override
            public void run() {
                Vc.e.j(this.f9192b, b.this.f9190c, this.f9193c, com.bumptech.glide.load.engine.i.f59186b, new C0234a());
            }
        }

        public b(final C13823b val$o, final Context val$context, final ImageView val$imageView) {
            this.f9189b = val$o;
            this.f9190c = val$context;
            this.f9191d = val$imageView;
        }

        @Override
        public void run() {
            TextureConfig textureConfig;
            String f10 = this.f9189b.f();
            if (!f10.contains(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f9190c)) && !f10.startsWith("/storage/emulated/0/")) {
                f10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f9190c) + "/" + this.f9189b.f();
            }
            File file = new File(Tc.b.O(f10) + ".texture");
            if (!file.exists()) {
                try {
                    C16165b.u(f10.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f9190c) + "/", ""));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (file.exists()) {
                f10 = file.getAbsolutePath();
            }
            try {
                textureConfig = (TextureConfig) X7.a.m().fromJson(X7.a.s(f10 + ".config", N7.c.t()), TextureConfig.class);
            } catch (Exception e11) {
                e11.printStackTrace();
                textureConfig = null;
            }
            if (textureConfig == null) {
                textureConfig = new TextureConfig();
            }
            C2633l.e(new a(f10, new U.h().c().u(R.drawable.wo_uimage), textureConfig));
        }
    }

    public static class c {

        public static final int[] f9197a;

        static {
            int[] iArr = new int[C13823b.a.values().length];
            f9197a = iArr;
            try {
                iArr[C13823b.a.Mesh.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9197a[C13823b.a.Model3D.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9197a[C13823b.a.AnimGraph.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9197a[C13823b.a.NavMeshBake.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9197a[C13823b.a.Directory.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f9197a[C13823b.a.NodeScriptV2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f9197a[C13823b.a.PostProcessingShader.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f9197a[C13823b.a.UIPostProcessingShader.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f9197a[C13823b.a.MaterialShader.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f9197a[C13823b.a.VFXShader.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f9197a[C13823b.a.SkyboxShader.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f9197a[C13823b.a.AmbientLightShader.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f9197a[C13823b.a.VulkanGraph.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f9197a[C13823b.a.NoCodeGraph.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f9197a[C13823b.a.Object.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f9197a[C13823b.a.Zip.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f9197a[C13823b.a.RenderTexture.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f9197a[C13823b.a.Texture.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f9197a[C13823b.a.ImportedTexture.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f9197a[C13823b.a.Unknown.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f9197a[C13823b.a.Lua.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f9197a[C13823b.a.World.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f9197a[C13823b.a.Area.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f9197a[C13823b.a.Material.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f9197a[C13823b.a.Cubemap.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f9197a[C13823b.a.Sound.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f9197a[C13823b.a.ImportedAudio.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f9197a[C13823b.a.VideoSound.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f9197a[C13823b.a.Plugin.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f9197a[C13823b.a.Animation.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f9197a[C13823b.a.AnimationMask.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f9197a[C13823b.a.Video.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f9197a[C13823b.a.ImportedVideo.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f9197a[C13823b.a.UIStyle.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f9197a[C13823b.a.VideoOutput.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f9197a[C13823b.a.Project.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f9197a[C13823b.a.XML.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f9197a[C13823b.a.HPOP.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f9197a[C13823b.a.TerrainData.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f9197a[C13823b.a.Mtl.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f9197a[C13823b.a.Binary.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f9197a[C13823b.a.Java.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f9197a[C13823b.a.JavaClass.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f9197a[C13823b.a.SkeletonData.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f9197a[C13823b.a.JKS.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f9197a[C13823b.a.TXT.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f9197a[C13823b.a.Json.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f9197a[C13823b.a.VGLSL.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f9197a[C13823b.a.FGLSL.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                f9197a[C13823b.a.GGLSL.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                f9197a[C13823b.a.ITJAR.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                f9197a[C13823b.a.JavaJar.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                f9197a[C13823b.a.Font.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
        }
    }

    public static boolean a(File file, String format) {
        return b(file.getName(), format);
    }

    public static boolean b(String extension, String format) {
        if (extension == null || format == null) {
            return false;
        }
        if (extension.contains("|")) {
            for (String str : extension.split("\\|")) {
                if (b(str, format)) {
                    return true;
                }
            }
        }
        String t10 = Tc.b.t(extension.toLowerCase());
        if (!t10.startsWith(".")) {
            t10 = "." + t10;
        }
        String replaceAll = t10.replaceAll("\\s+", "");
        if (format.contains("|")) {
            for (String str2 : format.split("\\|")) {
                if (b(extension, str2)) {
                    return true;
                }
            }
        }
        String t11 = Tc.b.t(format.toLowerCase());
        if (!t11.startsWith(".")) {
            t11 = "." + t11;
        }
        return replaceAll.equals(t11.replaceAll(" ", ""));
    }

    public static String c(String format) {
        if (!".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm".equals(format) && !".texture".equals(format)) {
            return ".cbm".equals(format) ? new C3867a("Cubemap", "Cubemap").toString() : ".mesh".equals(format) ? new C3867a("Mesh", "Mesh").toString() : ".zip".equals(format) ? new C3867a("Zip", "Zip").toString() : ".go".equals(format) ? new C3867a("Object", "Objeto").toString() : ".vglsl".equals(format) ? new C3867a("VertexGLSL", "VertexGLSL").toString() : ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf".equals(format) ? new C3867a("3D Model", "Modelo 3D").toString() : ".world".equals(format) ? new C3867a("World", "Mundo").toString() : ".ar".equals(format) ? new C3867a("Area", "Area").toString() : ".lua".equals(format) ? "Lua" : ".mp4|.3gp|.webm".equals(format) ? "Video" : ".imv".equals(format) ? "ITsMagic Video" : ".ivo".equals(format) ? "Video output" : ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv".equals(format) ? new C3867a("Sound", "Som").toString() : ".sound".equals(format) ? new C3867a("Imported Audio", "Audio importado").toString() : ".imvs".equals(format) ? new C3867a("Video Sound", "Som de video").toString() : ".pvsc".equals(format) ? "Post processing shader" : ".uipvsc".equals(format) ? "UI Post processing shader" : ".svsc".equals(format) ? "Skybox shader" : ".avsc".equals(format) ? "Ambient light shader" : ".mvsc".equals(format) ? "Material shader" : ".vfxs".equals(format) ? "VFX shader" : ".vgs".equals(format) ? "Vulkan Graph" : ".ncg".equals(format) ? "NoCode Graph" : ".angr".equals(format) ? "Animation Graph" : ".anim".equals(format) ? new C3867a("Animation", "Animation").toString() : ".amask".equals(format) ? new C3867a("Animation Mask", "Mascara de animacao").toString() : ".mat".equals(format) ? new C3867a("Material", "Material").toString() : ".hpop".equals(format) ? new C3867a("Material", "HPOP").toString() : ".tdata".equals(format) ? new C3867a("TerrainData", "TerrainData").toString() : ".mtl".equals(format) ? new C3867a("MTL", "MTL").toString() : ".bin".equals(format) ? new C3867a("Binary", "Binary").toString() : ".java".equals(format) ? new C3867a("Java", "Java").toString() : ".class".equals(format) ? new C3867a("JavaClass", "JavaClass").toString() : ".skedata".equals(format) ? new C3867a("SkeletonData", "SkeletonData").toString() : ".jks".equals(format) ? new C3867a("jks", "jks").toString() : ".vglsl".equals(format) ? new C3867a("VertexGLSL", "VertexGLSL").toString() : ".fglsl".equals(format) ? new C3867a("FragmentGLSL", "FragmentGLSL").toString() : ".gglsl".equals(format) ? new C3867a("GeometryGLSL", "GeometryGLSL").toString() : ".itjar".equals(format) ? new C3867a("ITJar", "ITJar").toString() : ".jar".equals(format) ? new C3867a("Jar", "Jar").toString() : ".txt".equals(format) ? new C3867a("TXT", "TXT").toString() : ".pdf".equals(format) ? new C3867a("PDF", "PDF").toString() : ".doc".equals(format) ? new C3867a("DOC", "DOC").toString() : ".docx".equals(format) ? new C3867a("DOCX", "DOCX").toString() : ".xml".equals(format) ? new C3867a("XML", "XML").toString() : ".json".equals(format) ? new C3867a("JSON", "JSON").toString() : ".ttf|.otf".equals(format) ? new C3867a("Font", "Font").toString() : format.replace("|", " ");
        }
        return new C3867a(SerializableShaderEntry.f81152f, "Textura").toString();
    }

    public static String d(String... formats) {
        String str = "";
        for (String str2 : formats) {
            str = str + str2 + "|";
        }
        String replace = str.replace("||", "|");
        return replace.endsWith("|") ? replace.substring(0, replace.length() - 1) : replace;
    }

    public static void e(Runnable r10) {
        if (N7.c.M()) {
            N7.c.j0(r10);
        } else {
            if (!N7.f.c()) {
                throw new RuntimeException();
            }
            N7.f.e(r10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(C13823b file) {
        if (file == null) {
            return;
        }
        file.f();
        List<Pair> asList = Arrays.asList(Pair.create(".ivo", C13823b.a.VideoOutput), Pair.create(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", C13823b.a.Texture), Pair.create(".texture", C13823b.a.ImportedTexture), Pair.create(".nvmb", C13823b.a.NavMeshBake), Pair.create(".rte", C13823b.a.RenderTexture), Pair.create(".zip", C13823b.a.Zip), Pair.create(".go", C13823b.a.Object), Pair.create(".mesh", C13823b.a.Mesh), Pair.create(".xml", C13823b.a.XML), Pair.create(".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf", C13823b.a.Model3D), Pair.create(".world", C13823b.a.World), Pair.create(".ar", C13823b.a.Area), Pair.create(".lua", C13823b.a.Lua), Pair.create(".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv", C13823b.a.Sound), Pair.create(".sound", C13823b.a.ImportedAudio), Pair.create(".imvs", C13823b.a.VideoSound), Pair.create(".cbm", C13823b.a.Cubemap), Pair.create(".anim", C13823b.a.Animation), Pair.create(".amask", C13823b.a.AnimationMask), Pair.create(".mat", C13823b.a.Material), Pair.create(".hpop", C13823b.a.HPOP), Pair.create(".tdata", C13823b.a.TerrainData), Pair.create(".mtl", C13823b.a.Mtl), Pair.create(".bin", C13823b.a.Binary), Pair.create(".mp4|.3gp|.webm", C13823b.a.Video), Pair.create(".imv", C13823b.a.ImportedVideo), Pair.create(".usy", C13823b.a.UIStyle), Pair.create(".java", C13823b.a.Java), Pair.create(".class", C13823b.a.JavaClass), Pair.create(".skedata", C13823b.a.SkeletonData), Pair.create(".jks", C13823b.a.JKS), Pair.create(".txt", C13823b.a.TXT), Pair.create(".json", C13823b.a.Json), Pair.create(".vglsl", C13823b.a.VGLSL), Pair.create(".fglsl", C13823b.a.FGLSL), Pair.create(".gglsl", C13823b.a.GGLSL), Pair.create(".itjar", C13823b.a.ITJAR), Pair.create(".jar", C13823b.a.JavaJar), Pair.create(".ttf|.otf", C13823b.a.Font), Pair.create(".angr", C13823b.a.AnimGraph), Pair.create(".pvsc", C13823b.a.PostProcessingShader), Pair.create(".uipvsc", C13823b.a.UIPostProcessingShader), Pair.create(".svsc", C13823b.a.SkyboxShader), Pair.create(".avsc", C13823b.a.AmbientLightShader), Pair.create(".mvsc", C13823b.a.MaterialShader), Pair.create(".vfxs", C13823b.a.VFXShader), Pair.create(".vgs", C13823b.a.VulkanGraph), Pair.create(".ncg", C13823b.a.NoCodeGraph));
        String f10 = file.f();
        for (Pair pair : asList) {
            if (b(f10, (String) pair.first)) {
                file.q((C13823b.a) pair.second);
                return;
            }
        }
        file.q(C13823b.a.Unknown);
    }

    public static void g(ImageView imageView, File file, Context context) {
        i(imageView, file.getAbsolutePath(), context);
    }

    public static void h(ImageView imageView, File file, Context context, boolean dontCreateIcons) {
        j(imageView, file.getAbsolutePath(), context, dontCreateIcons);
    }

    public static void i(ImageView imageView, String file, Context context) {
        j(imageView, file, context, false);
    }

    public static void j(ImageView imageView, String file, Context context, boolean dontCreateIcons) {
        File file2 = new File(file);
        for (int i10 = 0; i10 < C14940d.j(); i10++) {
            w5.f i11 = C14940d.i(i10);
            if (i11.c(file2)) {
                if (i11.a(file2, imageView)) {
                    return;
                }
                Vc.e.O(imageView, i11.b(file2).getAbsolutePath(), context);
                return;
            }
        }
        C13823b c13823b = new C13823b(file);
        f(c13823b);
        k(imageView, c13823b, context, dontCreateIcons);
    }

    public static void k(ImageView imageView, C13823b o10, Context context, boolean dontCreateIcons) {
        switch (c.f9197a[o10.f92880c.ordinal()]) {
            case 1:
                String str = (Tc.b.O(o10.f92878a) + ".meta/") + "thumb.png";
                if (!dontCreateIcons) {
                    E7.f.a(o10.f92878a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                }
                File file = new File(str);
                if (file.exists()) {
                    Vc.e.H(imageView, file, context, new U.h().u(R.drawable.cube_v2));
                    return;
                }
                if (dontCreateIcons) {
                    Vc.e.V(imageView, R.drawable.cube_v2, context);
                    return;
                }
                try {
                    D7.f.c(new File(o10.f92878a), imageView);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                Vc.e.V(imageView, R.drawable.cube_v2, context);
                return;
            case 2:
                Vc.e.V(imageView, R.drawable.model_3d_1, context);
                return;
            case 3:
                Vc.e.V(imageView, R.drawable.animgraph, context);
                return;
            case 4:
                Vc.e.V(imageView, R.drawable.navigator, context);
                return;
            case 5:
                Vc.e.V(imageView, R.drawable.folder_blue, context);
                return;
            case 6:
                Vc.e.V(imageView, R.drawable.smoke, context);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                Vc.e.V(imageView, R.drawable.vulkan_icon, context);
                return;
            case 14:
                Vc.e.V(imageView, R.drawable.no_code_v2, context);
                return;
            case 15:
                File file2 = new File((Tc.b.O(o10.f92878a) + ".meta/") + "thumb.png");
                if (!dontCreateIcons) {
                    E7.f.a(o10.f92878a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                    if (file2.exists()) {
                        Vc.e.H(imageView, file2, context, new U.h().u(R.drawable.cubes_v2));
                        return;
                    }
                }
                if (dontCreateIcons) {
                    Vc.e.V(imageView, R.drawable.cubes_v2, context);
                    return;
                }
                try {
                    D7.b.c(new File(o10.f92878a), imageView);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                Vc.e.V(imageView, R.drawable.cubes_v2, context);
                return;
            case 16:
                Vc.e.V(imageView, R.drawable.zip, context);
                return;
            case 17:
                Vc.e.V(imageView, R.drawable.render_texture, context);
                return;
            case 18:
                if (b(o10.f(), ".ivo")) {
                    Vc.e.V(imageView, R.drawable.video_output, context);
                    return;
                }
                if (!dontCreateIcons) {
                    O9.b.d(new a(o10, context, imageView));
                    return;
                }
                String f10 = o10.f();
                if (!f10.contains(com.itsmagic.engine.Core.Components.ProjectController.a.S(context)) && !f10.startsWith("/storage/emulated/0/")) {
                    f10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + o10.f();
                }
                File file3 = new File(Tc.b.O(f10) + ".texture");
                if (file3.exists()) {
                    Vc.e.F(imageView, file3);
                    return;
                } else {
                    Vc.e.F(imageView, new File(f10));
                    return;
                }
            case 19:
                if (!dontCreateIcons) {
                    O9.b.d(new b(o10, context, imageView));
                    return;
                }
                String f11 = o10.f();
                if (!f11.contains(com.itsmagic.engine.Core.Components.ProjectController.a.S(context)) && !f11.startsWith("/storage/emulated/0/")) {
                    f11 = com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + o10.f();
                }
                File file4 = new File(Tc.b.O(f11) + ".texture");
                if (file4.exists()) {
                    Vc.e.F(imageView, file4);
                    return;
                } else {
                    Vc.e.V(imageView, R.drawable.wo_uimage, context);
                    return;
                }
            case 20:
                Vc.e.V(imageView, R.drawable.unknow_file, context);
                return;
            case 21:
                Vc.e.V(imageView, R.drawable.lua, context);
                return;
            case 22:
                Vc.e.V(imageView, R.drawable.world_3, context);
                return;
            case 23:
                Vc.e.V(imageView, R.drawable.area, context);
                return;
            case 24:
                String str2 = (Tc.b.O(o10.f92878a) + ".meta/") + "thumb.png";
                E7.f.a(o10.f92878a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                File file5 = new File(str2);
                if (file5.exists()) {
                    Vc.e.L(imageView, file5.getAbsolutePath(), context, new U.h().y().u(R.drawable.cubemap_v3), com.bumptech.glide.load.engine.i.f59186b);
                    return;
                } else {
                    if (dontCreateIcons) {
                        Vc.e.V(imageView, R.drawable.cubemap_v3, context);
                        return;
                    }
                    try {
                        File file6 = new File(o10.f92878a);
                        if (file6.exists()) {
                            D7.c.c(file6, imageView);
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    Vc.e.V(imageView, R.drawable.cubemap_v3, context);
                    return;
                }
            case 25:
                String str3 = (Tc.b.O(o10.f92878a) + ".meta/") + "thumb.png";
                E7.f.a(o10.f92878a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                File file7 = new File(str3);
                if (file7.exists()) {
                    Vc.e.L(imageView, file7.getAbsolutePath(), context, new U.h().y().u(R.drawable.cubemap_v3), com.bumptech.glide.load.engine.i.f59186b);
                    return;
                } else {
                    if (dontCreateIcons) {
                        Vc.e.V(imageView, R.drawable.cubemap_v3, context);
                        return;
                    }
                    try {
                        D7.a.c(new File(o10.f92878a), imageView);
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    Vc.e.V(imageView, R.drawable.cubemap_v3, context);
                    return;
                }
            case 26:
            case 27:
                Vc.e.V(imageView, R.drawable.sound_file, context);
                return;
            case 28:
                Vc.e.V(imageView, R.drawable.sound_file, context);
                return;
            case 29:
                Vc.e.V(imageView, R.drawable.plugin_file, context);
                return;
            case 30:
            case 31:
                Vc.e.V(imageView, R.drawable.walk, context);
                return;
            case 32:
                Vc.e.V(imageView, R.drawable.video_file, context);
                return;
            case 33:
                Vc.e.V(imageView, R.drawable.video_file, context);
                return;
            case 34:
                String str4 = (Tc.b.O(o10.f92878a) + ".meta/") + "thumb.png";
                E7.f.a(o10.f92878a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                File file8 = new File(str4);
                if (file8.exists()) {
                    Vc.e.L(imageView, file8.getAbsolutePath(), context, new U.h().y().u(R.drawable.sui_button_v3), com.bumptech.glide.load.engine.i.f59186b);
                    return;
                } else {
                    if (dontCreateIcons) {
                        Vc.e.V(imageView, R.drawable.sui_button_v3, context);
                        return;
                    }
                    try {
                        D7.e.e(new File(o10.f92878a), imageView);
                    } catch (Exception e14) {
                        e14.printStackTrace();
                    }
                    Vc.e.V(imageView, R.drawable.sui_button_v3, context);
                    return;
                }
            case 35:
                Vc.e.V(imageView, R.drawable.video_output, context);
                return;
            case 36:
                Vc.e.V(imageView, R.drawable.pack_shadow, context);
                return;
            case 37:
                Vc.e.V(imageView, R.drawable.xml, context);
                return;
            case 38:
                Vc.e.V(imageView, R.drawable.wo_hpop, context);
                return;
            case 39:
                Vc.e.V(imageView, R.drawable.mountain, context);
                return;
            case 40:
                Vc.e.V(imageView, R.drawable.mtl, context);
                return;
            case 41:
                Vc.e.V(imageView, R.drawable.binary, context);
                return;
            case 42:
                Vc.e.V(imageView, R.drawable.f131499java, context);
                return;
            case 43:
                Vc.e.V(imageView, R.drawable.unknow_file, context);
                return;
            case 44:
                Vc.e.V(imageView, R.drawable.walk, context);
                return;
            case 45:
                Vc.e.V(imageView, R.drawable.lock, context);
                return;
            case 46:
                Vc.e.V(imageView, R.drawable.txt_icon, context);
                return;
            case 47:
                Vc.e.V(imageView, R.drawable.json, context);
                return;
            case 48:
                Vc.e.V(imageView, R.drawable.vglsl, context);
                return;
            case 49:
                Vc.e.V(imageView, R.drawable.fglsl, context);
                return;
            case 50:
                Vc.e.V(imageView, R.drawable.gglsl, context);
                return;
            case 51:
            case 52:
                Vc.e.V(imageView, R.drawable.science, context);
                return;
            case 53:
                Vc.e.V(imageView, R.drawable.font, context);
                return;
            default:
                return;
        }
    }
}

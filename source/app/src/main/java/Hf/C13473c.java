package hf;

import com.jme3.asset.AssetManager;
import com.jme3.asset.plugins.ClasspathLocator;
import com.jme3.asset.plugins.FileLocator;
import com.jme3.material.MaterialDef;
import com.jme3.material.Materials;
import com.jme3.material.TechniqueDef;
import com.jme3.material.plugins.J3MLoader;
import com.jme3.renderer.Caps;
import com.jme3.shader.Shader;
import com.jme3.shader.plugins.GLSLLoader;
import com.jme3.system.JmeSystem;
import java.io.PrintStream;
import java.util.EnumSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class C13473c {

    public static AssetManager f90506b;

    public static final Logger f90505a = Logger.getLogger(C13473c.class.getName());

    public static final InterfaceC13474d[] f90507c = {new C13471a()};

    public static void a(String str) {
        MaterialDef materialDef = (MaterialDef) f90506b.loadAsset(str);
        EnumSet<Caps> noneOf = EnumSet.noneOf(Caps.class);
        noneOf.add(Caps.GLSL100);
        for (TechniqueDef techniqueDef : materialDef.getTechniqueDefs("Default")) {
            Shader shader = techniqueDef.getShader(f90506b, noneOf, techniqueDef.createDefineList());
            for (InterfaceC13474d interfaceC13474d : f90507c) {
                StringBuilder sb2 = new StringBuilder();
                interfaceC13474d.b(shader, sb2);
                PrintStream printStream = System.out;
                printStream.println("==== Validator: " + interfaceC13474d.getName() + " " + interfaceC13474d.a() + " ====");
                printStream.println(sb2.toString());
            }
        }
        throw new UnsupportedOperationException();
    }

    public static void b() {
        AssetManager newAssetManager = JmeSystem.newAssetManager();
        f90506b = newAssetManager;
        newAssetManager.registerLocator(".", FileLocator.class);
        f90506b.registerLocator("/", ClasspathLocator.class);
        f90506b.registerLoader(J3MLoader.class, "j3m");
        f90506b.registerLoader(J3MLoader.class, "j3md");
        f90506b.registerLoader(GLSLLoader.class, "vert", "frag", "geom", "tsctrl", "tseval", "glsllib", "glsl");
    }

    public static void c(String[] strArr) {
        Logger.getLogger(MaterialDef.class.getName()).setLevel(Level.OFF);
        b();
        a("Common/MatDefs/Blur/HGaussianBlur.j3md");
        a("Common/MatDefs/Blur/RadialBlur.j3md");
        a("Common/MatDefs/Blur/VGaussianBlur.j3md");
        a(Materials.GUI);
        a("Common/MatDefs/Hdr/LogLum.j3md");
        a("Common/MatDefs/Hdr/ToneMap.j3md");
        a("Common/MatDefs/Light/Lighting.j3md");
        a("Common/MatDefs/Misc/ColoredTextured.j3md");
        a("Common/MatDefs/Misc/Particle.j3md");
        a(Materials.SHOW_NORMALS);
        a("Common/MatDefs/Misc/Sky.j3md");
        a("Common/MatDefs/Misc/Unshaded.j3md");
        a("Common/MatDefs/Post/BloomExtract.j3md");
        a("Common/MatDefs/Post/BloomFinal.j3md");
        a("Common/MatDefs/Post/CartoonEdge.j3md");
        a("Common/MatDefs/Post/CrossHatch.j3md");
        a("Common/MatDefs/Post/DepthOfField.j3md");
        a("Common/MatDefs/Post/FXAA.j3md");
        a("Common/MatDefs/Post/Fade.j3md");
        a("Common/MatDefs/Post/Fog.j3md");
        a("Common/MatDefs/Post/GammaCorrection.j3md");
        a("Common/MatDefs/Post/LightScattering.j3md");
        a("Common/MatDefs/Post/Overlay.j3md");
        a("Common/MatDefs/Post/Posterization.j3md");
        a("Common/MatDefs/SSAO/ssao.j3md");
        a("Common/MatDefs/SSAO/ssaoBlur.j3md");
        a("Common/MatDefs/Shadow/PostShadow.j3md");
        a("Common/MatDefs/Shadow/PostShadowPSSM.j3md");
        a("Common/MatDefs/Shadow/PreShadow.j3md");
        a("Common/MatDefs/Water/SimpleWater.j3md");
        a("Common/MatDefs/Water/Water.j3md");
    }
}

package md;

import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VideoPlayer.VideoPlayer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.io.File;
import java.io.IOException;

public class C14217b {
    public static void a(String folder, String matName) {
        X7.a.g(folder, matName + ".mat", new Material().Z(), false);
    }

    public static void b(String folder, String matName, String texture) {
        Material material = new Material();
        material.o0();
        material.i0(SerializableShaderEntry.f81152f, texture);
        X7.a.g(folder, matName + ".mat", material.Z(), false);
    }

    public static void c(String folder, String matName, String texture, ColorINT diffuseColor) {
        Material material = new Material();
        material.o0();
        try {
            material.b0(SerializableShaderEntry.f81153g, diffuseColor);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            material.i0(SerializableShaderEntry.f81152f, texture);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        X7.a.g(folder, matName + ".mat", material.Z(), false);
    }

    public static void d(File videoFile, B9.b videoConfig) throws IOException {
        File file = new File(Tc.b.O(videoFile.getAbsolutePath()) + ".meta/");
        File file2 = new File(file, "audio.imvs");
        File file3 = new File(file, "video.imv");
        File file4 = new File(file, "output.ivo");
        C14216a.a(videoFile.getAbsolutePath(), file2.getAbsolutePath(), -1, -1, true, false);
        C14216a.a(videoFile.getAbsolutePath(), file3.getAbsolutePath(), -1, -1, false, true);
        int[] a10 = c.a(videoFile);
        G3.b.H(file4.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), a10[0], a10[1]);
        GameObject gameObject = new GameObject(Tc.b.w(videoFile.getAbsolutePath(), true));
        gameObject.r(new VideoPlayer(file3.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), file4.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")));
        if (file2.exists()) {
            gameObject.r(new SoundPlayer(file2.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), true));
        }
        c(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), "material", file4.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), new ColorINT());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
        sb2.append("/material.mat");
        gameObject.r(new ModelRenderer("@@ASSET@@Engine/Primitives/Models/cube.obj", sb2.toString()));
        X7.a.e(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), "player.go", gameObject.x1().toString(), N7.c.t());
    }
}

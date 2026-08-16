package Mb;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class b {

    public String f14847a;

    public String f14848b;

    public String f14849c;

    public a f14850d;

    public Vector3 f14851e;

    public boolean f14852f = false;

    public enum a {
        OBJ,
        PREFAB
    }

    public b(String inProjectDirectory, String onSceneName, a type) {
        this.f14847a = inProjectDirectory;
        this.f14848b = onSceneName;
        this.f14850d = type;
    }

    public b(String inProjectDirectory, String onSceneName, a type, Vector3 position) {
        this.f14847a = inProjectDirectory;
        this.f14848b = onSceneName;
        this.f14850d = type;
        this.f14851e = position;
    }

    public b(String inProjectDirectory, String onSceneName, String material, a type) {
        this.f14847a = inProjectDirectory;
        this.f14848b = onSceneName;
        this.f14849c = material;
        this.f14850d = type;
    }
}

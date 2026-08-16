package o5;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.lang.reflect.Array;

public class C14483a {

    public final int f98491a;

    public Vector3[][] f98492b;

    public Vector3[][] f98493c;

    public int[][] f98494d;

    public C14483a(int r10) {
        this.f98491a = r10;
        this.f98492b = (Vector3[][]) Array.newInstance((Class<?>) Vector3.class, r10, r10);
        this.f98493c = (Vector3[][]) Array.newInstance((Class<?>) Vector3.class, r10, r10);
        this.f98494d = (int[][]) Array.newInstance(Integer.TYPE, r10, r10);
    }

    public int a() {
        return this.f98491a;
    }
}

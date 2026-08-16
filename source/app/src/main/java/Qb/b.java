package Qb;

import com.google.android.filament.BatchOperators;
import com.google.android.filament.Engine;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;

public final class b {

    public BatchOperators f22035a;

    public Engine f22036b;

    public NativeIntBuffer f22037c;

    public NativeIntBuffer f22038d;

    public long f22039e;

    public long f22040f;

    public void a(int entityCount, NativeIntBuffer entities, NativeIntBuffer layers, int layersPerEntity) {
        if (entityCount <= 0) {
            return;
        }
        K8.a.G();
        if (entities == null || layers == null) {
            throw new NullPointerException("visibility buffers cannot be null");
        }
        if (layersPerEntity <= 0 || layersPerEntity > 8 || entities.capacity() < entityCount || layers.capacity() < entityCount * layersPerEntity) {
            throw new IllegalArgumentException("visibility buffer range is invalid");
        }
        Engine f10 = a.f();
        if (this.f22035a == null || this.f22036b != f10) {
            this.f22036b = f10;
            this.f22035a = new BatchOperators(f10);
        }
        if (this.f22037c != entities) {
            this.f22037c = entities;
            this.f22039e = entities.getNativeAllocationPointer();
        }
        if (this.f22038d != layers) {
            this.f22038d = layers;
            this.f22040f = layers.getNativeAllocationPointer();
        }
        this.f22035a.changeVisibility(entityCount, this.f22039e, this.f22040f, layersPerEntity);
    }
}

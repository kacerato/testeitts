package com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.TerrainSystem;

import C5.b;
import F9.c;
import JAVARuntime.Point3;
import JAVARuntime.VoxelGeneratorListener;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import vc.h;

public class VoxelGenerator extends Component {

    public static final String f77876G = "VoxelGenerator";

    public static final Class f77877H = VoxelGenerator.class;

    public c f77878E;

    public JAVARuntime.Component f77879F;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return VoxelGenerator.f77877H;
        }

        @Override
        public String c() {
            return VoxelGenerator.f77876G;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.VOXEL);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.VOXEL_GENERATOR);
        }
    }

    static {
        C13201a.b(new a());
    }

    public VoxelGenerator() {
        super(f77876G);
        this.f77878E = null;
        setListener(null);
    }

    public void beforeChunkBuild(GameObject gameObject, VoxelChunk voxelChunk) {
        this.f77878E.beforeChunkBuild(gameObject, voxelChunk);
    }

    public boolean drawFace(int blockType, int sideBlockType, int sideFace, Point3 internalCoords) {
        return this.f77878E.drawFace(blockType, sideBlockType, sideFace, internalCoords);
    }

    public int getBlockType(int x10, int y10, int z10, int groundHeight) {
        return this.f77878E.getBlockType(x10, y10, z10, groundHeight);
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.VOXEL_GENERATOR);
    }

    public int getGroundHeight(int x10, int z10) {
        return this.f77878E.getGroundHeight(x10, z10);
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        return new SteppedArrayList();
    }

    public c getListener() {
        return this.f77878E;
    }

    public int getTextureIndex(int blockType, int face) {
        return this.f77878E.getTextureIndex(blockType, face);
    }

    @Override
    public String getTitle() {
        return f77876G;
    }

    @Override
    public Component.e getType() {
        return Component.e.VoxelGenerator;
    }

    @Override
    public int iconPriority() {
        return super.iconPriority();
    }

    public h loadChunk(int x10, int z10) {
        return this.f77878E.loadChunk(x10, z10);
    }

    public void onChunkBuilt(GameObject object, VoxelChunk chunk) {
        this.f77878E.onChunkBuilt(object, chunk);
    }

    public void onChunkCreated(GameObject object, VoxelChunk chunk) {
        this.f77878E.onChunkCreated(object, chunk);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        JAVARuntime.Component runtimeComponent;
        super.preUpdate(gameObject, isEditor);
        if (this.f77878E == F9.b.f6704a) {
            for (int i10 = 0; i10 < gameObject.N(); i10++) {
                Component L10 = gameObject.L(i10);
                if ((L10 instanceof JavaComponent) && (runtimeComponent = ((JavaComponent) L10).getRuntimeComponent()) != 0 && (runtimeComponent instanceof VoxelGeneratorListener)) {
                    ((JAVARuntime.VoxelGenerator) toJAVARuntime()).setListener(runtimeComponent);
                    return;
                }
            }
        }
    }

    public void setListener(c listener) {
        if (listener == null) {
            listener = F9.b.f6704a;
        }
        this.f77878E = listener;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f77879F = run;
    }

    public void storeChunk(h chunk, int x10, int z10) {
        this.f77878E.storeChunk(chunk, x10, z10);
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f77879F;
        if (component != null) {
            return component;
        }
        JAVARuntime.VoxelGenerator voxelGenerator = new JAVARuntime.VoxelGenerator(this);
        this.f77879F = voxelGenerator;
        return voxelGenerator;
    }

    @Override
    public Component mo1248clone() {
        return new VoxelGenerator();
    }
}

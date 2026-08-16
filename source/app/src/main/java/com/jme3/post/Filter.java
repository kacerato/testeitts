package com.jme3.post;

import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.renderer.Caps;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import java.io.IOException;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

public abstract class Filter implements Savable {
    protected Pass defaultPass;
    protected boolean enabled;
    protected Material material;
    private String name;
    protected List<Pass> postRenderPasses;
    protected FilterPostProcessor processor;

    public Filter(String str) {
        this.enabled = true;
        this.name = str;
    }

    public void cleanUpFilter(Renderer renderer) {
    }

    public final void cleanup(Renderer renderer) {
        this.processor = null;
        Pass pass = this.defaultPass;
        if (pass != null) {
            pass.cleanup(renderer);
        }
        List<Pass> list = this.postRenderPasses;
        if (list != null) {
            Iterator<Pass> it = list.iterator();
            while (it.hasNext()) {
                it.next().cleanup(renderer);
            }
        }
        cleanUpFilter(renderer);
    }

    public Image.Format getDefaultPassDepthFormat() {
        return Image.Format.Depth;
    }

    public Image.Format getDefaultPassTextureFormat() {
        return this.processor.getDefaultPassTextureFormat();
    }

    public abstract Material getMaterial();

    public String getName() {
        return this.name;
    }

    public List<Pass> getPostRenderPasses() {
        return this.postRenderPasses;
    }

    public FrameBuffer getRenderFrameBuffer() {
        return this.defaultPass.renderFrameBuffer;
    }

    public Texture2D getRenderedTexture() {
        return this.defaultPass.renderedTexture;
    }

    public final void init(AssetManager assetManager, RenderManager renderManager, ViewPort viewPort, int i10, int i11) {
        Pass pass = new Pass();
        this.defaultPass = pass;
        pass.init(renderManager.getRenderer(), i10, i11, getDefaultPassTextureFormat(), getDefaultPassDepthFormat());
        initFilter(assetManager, renderManager, viewPort, i10, i11);
    }

    public abstract void initFilter(AssetManager assetManager, RenderManager renderManager, ViewPort viewPort, int i10, int i11);

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isRequiresBilinear() {
        return false;
    }

    public boolean isRequiresDepthTexture() {
        return false;
    }

    public boolean isRequiresSceneTexture() {
        return true;
    }

    public void postFilter(Renderer renderer, FrameBuffer frameBuffer) {
    }

    public void postFrame(RenderManager renderManager, ViewPort viewPort, FrameBuffer frameBuffer, FrameBuffer frameBuffer2) {
    }

    public void postQueue(RenderQueue renderQueue) {
    }

    public void preFrame(float f10) {
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", "");
        this.enabled = capsule.readBoolean("enabled", true);
    }

    public void setDepthTexture(Texture texture) {
        getMaterial().setTexture("DepthTexture", texture);
    }

    public void setEnabled(boolean z10) {
        FilterPostProcessor filterPostProcessor = this.processor;
        if (filterPostProcessor != null) {
            filterPostProcessor.setFilterState(this, z10);
        } else {
            this.enabled = z10;
        }
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setProcessor(FilterPostProcessor filterPostProcessor) {
        this.processor = filterPostProcessor;
    }

    public void setRenderFrameBuffer(FrameBuffer frameBuffer) {
        this.defaultPass.renderFrameBuffer = frameBuffer;
    }

    public void setRenderedTexture(Texture2D texture2D) {
        this.defaultPass.renderedTexture = texture2D;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", "");
        capsule.write(this.enabled, "enabled", true);
    }

    public class Pass {
        protected Texture2D depthTexture;
        protected String name;
        protected Material passMaterial;
        protected FrameBuffer renderFrameBuffer;
        protected Texture2D renderedTexture;

        public Pass(String str) {
            this.name = str;
        }

        public void beforeRender() {
        }

        public void cleanup(Renderer renderer) {
            this.renderFrameBuffer.dispose();
            this.renderedTexture.getImage().dispose();
            Texture2D texture2D = this.depthTexture;
            if (texture2D != null) {
                texture2D.getImage().dispose();
            }
        }

        public Texture2D getDepthTexture() {
            return this.depthTexture;
        }

        public Material getPassMaterial() {
            return this.passMaterial;
        }

        public FrameBuffer getRenderFrameBuffer() {
            return this.renderFrameBuffer;
        }

        public Texture2D getRenderedTexture() {
            return this.renderedTexture;
        }

        public void init(Renderer renderer, int i10, int i11, Image.Format format, Image.Format format2, int i12, boolean z10) {
            EnumSet<Caps> caps = renderer.getCaps();
            if (i12 > 1 && caps.contains(Caps.FrameBufferMultisample) && caps.contains(Caps.OpenGL31)) {
                this.renderFrameBuffer = new FrameBuffer(i10, i11, i12);
                this.renderedTexture = new Texture2D(i10, i11, i12, format);
                this.renderFrameBuffer.setDepthTarget(FrameBuffer.FrameBufferTarget.newTarget(format2));
                if (z10) {
                    Texture2D texture2D = new Texture2D(i10, i11, i12, format2);
                    this.depthTexture = texture2D;
                    this.renderFrameBuffer.setDepthTarget(FrameBuffer.FrameBufferTarget.newTarget(texture2D));
                }
            } else {
                this.renderFrameBuffer = new FrameBuffer(i10, i11, 1);
                this.renderedTexture = new Texture2D(i10, i11, format);
                this.renderFrameBuffer.setDepthTarget(FrameBuffer.FrameBufferTarget.newTarget(format2));
                if (z10) {
                    Texture2D texture2D2 = new Texture2D(i10, i11, format2);
                    this.depthTexture = texture2D2;
                    this.renderFrameBuffer.setDepthTarget(FrameBuffer.FrameBufferTarget.newTarget(texture2D2));
                }
            }
            this.renderFrameBuffer.addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(this.renderedTexture));
            this.renderFrameBuffer.setName(getClass().getSimpleName());
        }

        public boolean requiresDepthAsTexture() {
            return false;
        }

        public boolean requiresSceneAsTexture() {
            return false;
        }

        public void setPassMaterial(Material material) {
            this.passMaterial = material;
        }

        public void setRenderFrameBuffer(FrameBuffer frameBuffer) {
            this.renderFrameBuffer = frameBuffer;
        }

        public void setRenderedTexture(Texture2D texture2D) {
            this.renderedTexture = texture2D;
        }

        public String toString() {
            String str = this.name;
            return str == null ? super.toString() : str;
        }

        public Pass() {
        }

        public void init(Renderer renderer, int i10, int i11, Image.Format format, Image.Format format2) {
            init(renderer, i10, i11, format, format2, 1);
        }

        public void init(Renderer renderer, int i10, int i11, Image.Format format, Image.Format format2, int i12) {
            init(renderer, i10, i11, format, format2, i12, false);
        }

        public void init(Renderer renderer, int i10, int i11, Image.Format format, Image.Format format2, int i12, Material material) {
            init(renderer, i10, i11, format, format2, i12);
            this.passMaterial = material;
        }
    }

    public Filter() {
        this("filter");
    }
}

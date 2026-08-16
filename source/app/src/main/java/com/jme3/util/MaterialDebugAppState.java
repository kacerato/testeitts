package com.jme3.util;

import com.jme3.app.Application;
import com.jme3.app.state.AbstractAppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetManager;
import com.jme3.asset.plugins.UrlAssetInfo;
import com.jme3.input.InputManager;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.Trigger;
import com.jme3.material.MatParam;
import com.jme3.material.Material;
import com.jme3.post.Filter;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.RendererException;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.shape.Box;
import java.io.File;
import java.lang.reflect.Field;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MaterialDebugAppState extends AbstractAppState {
    private AssetManager assetManager;
    private final List<Binding> bindings = new ArrayList();
    private final Map<Trigger, List<Binding>> fileTriggers = new HashMap();
    private InputManager inputManager;
    private RenderManager renderManager;

    public interface Binding {
        String getActionName();

        Trigger getTrigger();

        void reload();
    }

    public class FileChangedTrigger implements Trigger {
        File file;
        Long fileLastM;
        String fileName;

        public FileChangedTrigger(String str) {
            this.fileName = str;
        }

        @Override
        public String getName() {
            return this.fileName;
        }

        public void init() {
            AssetInfo locateAsset = MaterialDebugAppState.this.assetManager.locateAsset(new AssetKey<>(this.fileName));
            if (locateAsset == null || !(locateAsset instanceof UrlAssetInfo)) {
                return;
            }
            try {
                Field declaredField = locateAsset.getClass().getDeclaredField("url");
                declaredField.setAccessible(true);
                File file = new File(((URL) declaredField.get(locateAsset)).getFile());
                this.file = file;
                this.fileLastM = Long.valueOf(file.lastModified());
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException | SecurityException e10) {
                Logger.getLogger(MaterialDebugAppState.class.getName()).log(Level.SEVERE, (String) null, e10);
            }
        }

        public boolean shouldFire() {
            if (this.file.lastModified() == this.fileLastM.longValue()) {
                return false;
            }
            this.fileLastM = Long.valueOf(this.file.lastModified());
            return true;
        }

        @Override
        public int triggerHashCode() {
            return 0;
        }
    }

    public class FilterBinding implements Binding {
        Filter filter;
        Trigger trigger;

        public FilterBinding(Trigger trigger, Filter filter) {
            this.trigger = trigger;
            this.filter = filter;
        }

        @Override
        public String getActionName() {
            return this.filter.getName() + "Reload";
        }

        @Override
        public Trigger getTrigger() {
            return this.trigger;
        }

        @Override
        public void reload() {
            Field[] declaredFields = this.filter.getClass().getDeclaredFields();
            Field[] declaredFields2 = this.filter.getClass().getSuperclass().getDeclaredFields();
            ArrayList<Field> arrayList = new ArrayList();
            arrayList.addAll(Arrays.asList(declaredFields));
            arrayList.addAll(Arrays.asList(declaredFields2));
            Material material = new Material();
            Filter filter = this.filter;
            Objects.requireNonNull(filter);
            Filter.Pass pass = new Filter.Pass();
            try {
                for (Field field : arrayList) {
                    if (field.getType().isInstance(material)) {
                        field.setAccessible(true);
                        Material reloadMaterial = MaterialDebugAppState.this.reloadMaterial((Material) field.get(this.filter));
                        if (reloadMaterial == null) {
                            return;
                        } else {
                            field.set(this.filter, reloadMaterial);
                        }
                    }
                    if (field.getType().isInstance(pass)) {
                        field.setAccessible(true);
                        pass = (Filter.Pass) field.get(this.filter);
                        if (pass != null && pass.getPassMaterial() != null) {
                            Material reloadMaterial2 = MaterialDebugAppState.this.reloadMaterial(pass.getPassMaterial());
                            if (reloadMaterial2 == null) {
                                return;
                            } else {
                                pass.setPassMaterial(reloadMaterial2);
                            }
                        }
                    }
                    if (field.getName().equals("postRenderPasses")) {
                        field.setAccessible(true);
                        new ArrayList();
                        List<Filter.Pass> list = (List) field.get(this.filter);
                        if (list != null) {
                            for (Filter.Pass pass2 : list) {
                                Material reloadMaterial3 = MaterialDebugAppState.this.reloadMaterial(pass2.getPassMaterial());
                                if (reloadMaterial3 == null) {
                                    return;
                                } else {
                                    pass2.setPassMaterial(reloadMaterial3);
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            } catch (IllegalAccessException e10) {
                e = e10;
                Logger.getLogger(MaterialDebugAppState.class.getName()).log(Level.SEVERE, (String) null, e);
            } catch (IllegalArgumentException e11) {
                e = e11;
                Logger.getLogger(MaterialDebugAppState.class.getName()).log(Level.SEVERE, (String) null, e);
            }
        }
    }

    public class GeometryBinding implements Binding {
        Geometry geom;
        Trigger trigger;

        public GeometryBinding(Trigger trigger, Geometry geometry) {
            this.trigger = trigger;
            this.geom = geometry;
        }

        @Override
        public String getActionName() {
            return this.geom.getName() + "Reload";
        }

        @Override
        public Trigger getTrigger() {
            return this.trigger;
        }

        @Override
        public void reload() {
            Material reloadMaterial = MaterialDebugAppState.this.reloadMaterial(this.geom.getMaterial());
            if (reloadMaterial != null) {
                this.geom.setMaterial(reloadMaterial);
            }
        }
    }

    private void bind(final Binding binding) {
        if (!(binding.getTrigger() instanceof FileChangedTrigger)) {
            final String actionName = binding.getActionName();
            this.inputManager.addListener(new ActionListener(this) {
                final MaterialDebugAppState this$0;

                {
                    this.this$0 = this;
                }

                @Override
                public void onAction(String str, boolean z10, float f10) {
                    if (actionName.equals(str) && z10) {
                        binding.reload();
                    }
                }
            }, actionName);
            this.inputManager.addMapping(actionName, binding.getTrigger());
            return;
        }
        FileChangedTrigger fileChangedTrigger = (FileChangedTrigger) binding.getTrigger();
        List<Binding> list = this.fileTriggers.get(fileChangedTrigger);
        if (list == null) {
            fileChangedTrigger.init();
            list = new ArrayList<>();
            this.fileTriggers.put(fileChangedTrigger, list);
        }
        list.add(binding);
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        this.renderManager = application.getRenderManager();
        this.assetManager = application.getAssetManager();
        this.inputManager = application.getInputManager();
        Iterator<Binding> it = this.bindings.iterator();
        while (it.hasNext()) {
            bind(it.next());
        }
        super.initialize(appStateManager, application);
    }

    public void registerBinding(Trigger trigger, Spatial spatial) {
        if (spatial instanceof Geometry) {
            GeometryBinding geometryBinding = new GeometryBinding(trigger, (Geometry) spatial);
            this.bindings.add(geometryBinding);
            if (isInitialized()) {
                bind(geometryBinding);
                return;
            }
            return;
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                registerBinding(trigger, it.next());
            }
        }
    }

    public Material reloadMaterial(Material material) {
        this.assetManager.clearCache();
        Material material2 = new Material(this.assetManager, material.getMaterialDef().getAssetName());
        for (MatParam matParam : material.getParams()) {
            material2.setParam(matParam.getName(), matParam.getVarType(), matParam.getValue());
        }
        material2.getAdditionalRenderState().set(material.getAdditionalRenderState());
        Geometry geometry = new Geometry("dummyGeom", new Box(1.0f, 1.0f, 1.0f));
        geometry.setMaterial(material2);
        try {
            this.renderManager.preloadScene(geometry);
            Logger.getLogger(MaterialDebugAppState.class.getName()).log(Level.INFO, "Material successfully reloaded");
            return material2;
        } catch (RendererException e10) {
            Logger.getLogger(MaterialDebugAppState.class.getName()).log(Level.SEVERE, e10.getMessage());
            return null;
        }
    }

    @Override
    public void update(float f10) {
        super.update(f10);
        for (Trigger trigger : this.fileTriggers.o()) {
            if (trigger instanceof FileChangedTrigger) {
                FileChangedTrigger fileChangedTrigger = (FileChangedTrigger) trigger;
                if (fileChangedTrigger.shouldFire()) {
                    Iterator<Binding> it = this.fileTriggers.get(fileChangedTrigger).iterator();
                    while (it.hasNext()) {
                        it.next().reload();
                    }
                }
            }
        }
    }

    public void registerBinding(Trigger trigger, Filter filter) {
        FilterBinding filterBinding = new FilterBinding(trigger, filter);
        this.bindings.add(filterBinding);
        if (isInitialized()) {
            bind(filterBinding);
        }
    }

    public void registerBinding(String str, Filter filter) {
        registerBinding(new FileChangedTrigger(str), filter);
    }

    public void registerBinding(String str, Spatial spatial) {
        registerBinding(new FileChangedTrigger(str), spatial);
    }
}

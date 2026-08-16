package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import Lc.d;
import Lc.g;
import androidx.annotation.Keep;
import com.google.android.filament.Engine;
import com.google.android.filament.Scene;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import java.util.HashSet;
import java.util.Set;

public class FilamentScene extends SGCListenerObject {

    public boolean f80112b;

    @Keep
    private final Set<Rb.c> entityList;

    @Keep
    private FilamentIndirectLight indirectLight;

    @Keep
    private final Scene scene;

    @Keep
    private FilamentSkybox skybox;

    public static final M9.c f80109c = new a();

    @Keep
    private static final g<FilamentIndirectLight> concreteILReferences = new g<>(100);

    @Keep
    private static final g<FilamentSkybox> concreteSkyboxReferences = new g<>(100);

    @Keep
    private static final g<Set<Rb.c>> concreteEntitiesReferences = new g<>(100);

    @Keep
    private static final g<FilamentScene> concreteSceneReferences = new g<>(100);

    public static final Lc.b<Set<Rb.c>> f80110d = new b();

    public static final d<FilamentScene> f80111e = new c();

    public class a implements M9.c {
        @Override
        public void a(long pointer) {
            Qb.c.l(pointer);
            FilamentScene.concreteILReferences.e(pointer);
            FilamentScene.concreteSkyboxReferences.e(pointer);
            FilamentScene.concreteEntitiesReferences.e(pointer);
            FilamentScene.concreteSceneReferences.e(pointer);
        }
    }

    public class b implements Lc.b<Set<Rb.c>> {
        @Override
        public void a(Object entity, Set<Rb.c> object, Lc.c<Set<Rb.c>> knockback) {
            if (object.contains((Rb.c) entity)) {
                knockback.a(true);
            }
        }
    }

    public class c implements d<FilamentScene> {
        @Override
        public Object a(Object entity, FilamentScene scene) {
            if (scene.l((Rb.c) entity)) {
                return scene;
            }
            return null;
        }
    }

    public FilamentScene() {
        HashSet hashSet = new HashSet(500);
        this.entityList = hashSet;
        K8.a.G();
        Qb.a.d();
        Scene t10 = Qb.a.f().t();
        this.scene = t10;
        SGC.put(this, t10.j(), f80109c, false);
        concreteEntitiesReferences.td(t10.j(), hashSet);
        concreteSceneReferences.td(t10.j(), this);
    }

    public static boolean k(Rb.c entity) {
        return concreteEntitiesReferences.wf(entity, f80110d);
    }

    public static FilamentScene m(Rb.c entity) {
        return (FilamentScene) concreteSceneReferences.xf(entity, f80111e);
    }

    public static boolean q(FilamentIndirectLight indirectLight) {
        return concreteILReferences.containsValue(indirectLight);
    }

    public static boolean r(FilamentSkybox skybox) {
        return concreteSkyboxReferences.containsValue(skybox);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        K8.a.G();
        Qb.a.d();
        if (this.f80112b) {
            throw new RuntimeException();
        }
        if (FilamentView.u(this)) {
            throw new FilamentContractViolationError("Scene still bound to a view");
        }
        if (this.skybox != null) {
            throw new FilamentContractViolationError("Scene still bound to a skybox");
        }
        if (this.indirectLight != null) {
            throw new FilamentContractViolationError("Scene still bound to an indirect light");
        }
        if (!this.entityList.isEmpty()) {
            throw new FilamentContractViolationError("Scene still contains entities");
        }
        this.f80112b = true;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 10;
    }

    public void j(Rb.c entity) {
        entity.getClass();
        K8.a.G();
        if (this.entityList.contains(entity)) {
            throw new FilamentContractViolationError("Entity already added to this scene");
        }
        if (k(entity)) {
            throw new FilamentContractViolationError("Entity already added to another scene");
        }
        this.scene.b(entity.getId());
        this.entityList.add(entity);
    }

    public boolean l(Rb.c entity) {
        if (entity == null) {
            return false;
        }
        return this.entityList.contains(entity);
    }

    public FilamentIndirectLight n() {
        return this.indirectLight;
    }

    public Scene o() {
        return this.scene;
    }

    public FilamentSkybox p() {
        return this.skybox;
    }

    public void s(Rb.c entity) {
        entity.getClass();
        K8.a.G();
        if (!this.entityList.contains(entity)) {
            throw new RuntimeException("Entity is not from this scene");
        }
        this.scene.p(entity.getId());
        this.entityList.remove(entity);
    }

    public void u(FilamentIndirectLight il2) {
        K8.a.G();
        if (il2 != null) {
            this.scene.q(il2.f());
        } else {
            this.scene.q(null);
        }
        this.indirectLight = il2;
        concreteILReferences.td(this.scene.j(), il2);
    }

    public void v(FilamentSkybox skybox) {
        K8.a.G();
        if (skybox != null) {
            this.scene.r(skybox.f());
        } else {
            this.scene.r(null);
        }
        this.skybox = skybox;
        concreteSkyboxReferences.td(this.scene.j(), skybox);
    }

    public FilamentScene(Engine engine) {
        HashSet hashSet = new HashSet(500);
        this.entityList = hashSet;
        K8.a.G();
        Qb.a.d();
        Scene t10 = engine.t();
        this.scene = t10;
        SGC.put(this, t10.j(), f80109c, false);
        concreteEntitiesReferences.td(t10.j(), hashSet);
        concreteSceneReferences.td(t10.j(), this);
    }
}

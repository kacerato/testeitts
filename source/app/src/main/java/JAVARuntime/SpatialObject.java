package JAVARuntime;

import D5.k;
import P8.i;
import P8.n;
import P8.q;
import android.content.Context;
import com.google.gson.JsonSyntaxException;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.SpatialInspectorSave;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvObjectReference;
import com.itsmagic.engine.Engines.Utils.Variable;
import d8.h;
import d8.j;
import gb.C13317e;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:SpatialObject.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:SpatialObject.class
  classes.dex
 */
@ClassCategory(cat = {"Object"})
public final class SpatialObject {

    public class AnonymousClass1 implements i {
        final Class val$thisClass;

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        private void addParent(List<String> list, GameObject object) {
            GameObject gameObject = object.f79294k;
            if (gameObject != null) {
                list.add(gameObject.getGuid().j());
                addParent(list, object.f79294k);
            }
        }

        @Override
        public C5.b getInspector(Context context, final Field field, final Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            return new C5.b(new k() {
                @Override
                public boolean allowSelect() {
                    return true;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public GameObject get() {
                    SpatialObject spatialObject;
                    try {
                        spatialObject = (SpatialObject) field.get(classInstance);
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                        spatialObject = null;
                    }
                    if (spatialObject != null) {
                        return (GameObject) spatialObject.instance.get();
                    }
                    return null;
                }

                @Override
                public String getExtraTittle() {
                    return " (" + Lang.l(Lang.T.OBJECT) + ")";
                }

                @Override
                public GameObject getParent() {
                    return null;
                }

                @Override
                public void set(GameObject gameObject) {
                    try {
                        if (gameObject != null) {
                            field.set(classInstance, gameObject.W1());
                            n nVar = getSetterListener;
                            if (nVar != null) {
                                nVar.a(gameObject.W1());
                            }
                        } else {
                            field.set(classInstance, null);
                            n nVar2 = getSetterListener;
                            if (nVar2 != null) {
                                nVar2.a(null);
                            }
                        }
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                }
            }, tittle);
        }

        @Override
        public C5.b getInspectorForArray(Context context, final Object[] array, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            return new C5.b(new k() {
                @Override
                public boolean allowSelect() {
                    return true;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public GameObject get() {
                    SpatialObject spatialObject = (SpatialObject) array[position];
                    if (spatialObject != null) {
                        return (GameObject) spatialObject.instance.get();
                    }
                    return null;
                }

                @Override
                public String getExtraTittle() {
                    return " (" + Lang.l(Lang.T.OBJECT) + ")";
                }

                @Override
                public GameObject getParent() {
                    return null;
                }

                @Override
                public void set(GameObject gameObject) {
                    if (gameObject != null) {
                        array[position] = gameObject.W1();
                        n nVar = getSetterListener;
                        if (nVar != null) {
                            nVar.a(gameObject.W1());
                            return;
                        }
                        return;
                    }
                    array[position] = null;
                    n nVar2 = getSetterListener;
                    if (nVar2 != null) {
                        nVar2.a(null);
                    }
                }
            }, tittle);
        }

        @Override
        public C5.b getInspectorForList(Context context, final h list, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            return new C5.b(new k() {
                @Override
                public boolean allowSelect() {
                    return true;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public GameObject get() {
                    SpatialObject spatialObject = (SpatialObject) list.a(position);
                    if (spatialObject != null) {
                        return (GameObject) spatialObject.instance.get();
                    }
                    return null;
                }

                @Override
                public String getExtraTittle() {
                    return " (" + Lang.l(Lang.T.OBJECT) + ")";
                }

                @Override
                public GameObject getParent() {
                    return null;
                }

                @Override
                public void set(GameObject gameObject) {
                    if (gameObject != null) {
                        list.b(position, gameObject.W1());
                        n nVar = getSetterListener;
                        if (nVar != null) {
                            nVar.a(gameObject.W1());
                            return;
                        }
                        return;
                    }
                    list.b(position, null);
                    n nVar2 = getSetterListener;
                    if (nVar2 != null) {
                        nVar2.a(null);
                    }
                }
            }, tittle);
        }

        @Override
        public String getSimpleName(q userPointer) {
            return this.val$thisClass.getSimpleName();
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        public void log(String str) {
        }

        @Override
        public boolean match(String className, q userPointer) {
            return j.y(this.val$thisClass.getName()).equals(j.y(className));
        }

        @Override
        public Object newInstance(q userPointer) {
            return new GameObject().W1();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            String str;
            String str2;
            if (variable.type == Variable.a.String && (str2 = variable.str_value) != null && !str2.isEmpty()) {
                SpatialInspectorSave a10 = SpatialInspectorSave.a(str2);
                if (a10 == null) {
                    log("inspectorSave == null, using the unique guid technique");
                    GameObject h10 = Lb.k.h(str2, com.itsmagic.engine.Engines.Engine.World.a.f80030c);
                    if (h10 != null) {
                        return h10.W1();
                    }
                } else {
                    GameObject gameObject = userPointer.f21167c;
                    if (gameObject != null) {
                        GameObject F02 = gameObject.F0();
                        if (F02 != null) {
                            gameObject = F02;
                        }
                        if (gameObject.getGuid().j().equals(a10.masterParentDuplicableID)) {
                            log("Master parent duplicable match");
                            if (a10.objectsDuplicableIDs.size() <= 1) {
                                log("inspectorSave.objectsInstanciableIDs.size() <= 1, using the actualMasterParent has the object");
                                return gameObject.W1();
                            }
                            for (int i10 = 1; i10 < a10.objectsDuplicableIDs.size(); i10++) {
                                String str3 = a10.objectsDuplicableIDs.get(i10);
                                GameObject r10 = C13317e.r(gameObject, str3);
                                if (r10 != null) {
                                    log("Child found " + str3);
                                    gameObject = r10;
                                }
                            }
                            log("Using last found has the object");
                            return gameObject.W1();
                        }
                        log("Master parent differs, searching for unique GUID");
                        GameObject h11 = Lb.k.h(a10.objectUniqueID, com.itsmagic.engine.Engines.Engine.World.a.f80030c);
                        if (h11 != null) {
                            return h11.W1();
                        }
                    } else {
                        log("userPointer.gameObject == null, searching object using the inspectorSave.objectUniqueID");
                        GameObject h12 = Lb.k.h(a10.objectUniqueID, com.itsmagic.engine.Engines.Engine.World.a.f80030c);
                        if (h12 != null) {
                            return h12.W1();
                        }
                    }
                }
            }
            if (variable.type != Variable.a.ObjectReferenceJson || (str = variable.str_value) == null || str.isEmpty()) {
                return null;
            }
            try {
                AdvObjectReference advObjectReference = (AdvObjectReference) X7.a.m().fromJson(str, AdvObjectReference.class);
                if (advObjectReference == null) {
                    return null;
                }
                if (userPointer != null) {
                    advObjectReference.o(userPointer.f21167c);
                }
                GameObject k10 = advObjectReference.k();
                if (k10 != null) {
                    return k10.W1();
                }
                return null;
            } catch (JsonSyntaxException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            try {
                SpatialObject spatialObject = (SpatialObject) value;
                if (spatialObject != null && spatialObject.instance.get() != 0) {
                    AdvObjectReference advObjectReference = new AdvObjectReference((GameObject) spatialObject.instance.get());
                    if (userPointer != null) {
                        advObjectReference.o(userPointer.f21167c);
                    }
                    advObjectReference.q();
                    Variable variable = new Variable(fieldName, advObjectReference.r());
                    variable.type = Variable.a.ObjectReferenceJson;
                    return variable;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return new Variable(fieldName, "", Variable.a.ObjectReferenceJson);
        }
    }

    public SpatialObject() {
    }

    public SpatialObject(SpatialObject spatialObject) {
    }

    public SpatialObject(String str) {
    }

    public SpatialObject(String str, SpatialObject spatialObject) {
    }

    @HideGetSet
    public boolean isEnabled() {
        return false;
    }

    @HideGetSet
    public void setEnabled(boolean z10) {
    }

    @HideGetSet
    public boolean isAllowAnimations() {
        return false;
    }

    @HideGetSet
    public void setAllowAnimations(boolean z10) {
    }

    @HideGetSet
    public boolean isDontDestroyOnLoad() {
        return false;
    }

    @HideGetSet
    public void setDontDestroyOnLoad(boolean z10) {
    }

    @HideGetSet
    public String getName() {
        return "";
    }

    @HideGetSet
    public void setName(String str) {
    }

    public void setNameOH(OHString oHString) {
    }

    public boolean compareName(String str) {
        return false;
    }

    public SpatialObject duplicate() {
        return null;
    }

    @HideGetSet
    public Transform getTransform() {
        return null;
    }

    public void destroy() {
    }

    @HideGetSet
    public GUID getGUID() {
        return null;
    }

    @HideGetSet
    public String getMetaID() {
        return "";
    }

    @HideGetSet
    public void setMetaID(String str) {
    }

    public void sendEvent(String str) {
    }

    public void sendEvent(String str, int i10) {
    }

    public void sendEvent(String str, float f10) {
    }

    public void sendEvent(String str, String str2) {
    }

    public void sendEvent(String str, boolean z10) {
    }

    public void sendEvent(String str, Object... objArr) {
    }

    public void sendEventToHierarchy(String str) {
    }

    public void sendEventToHierarchy(String str, int i10) {
    }

    public void sendEventToHierarchy(String str, float f10) {
    }

    public void sendEventToHierarchy(String str, String str2) {
    }

    public void sendEventToHierarchy(String str, boolean z10) {
    }

    public void sendEventToHierarchy(String str, Object... objArr) {
    }

    public void callFunction(String str) {
    }

    public void callFunction(String str, int i10) {
    }

    public void callFunction(String str, float f10) {
    }

    public void callFunction(String str, String str2) {
    }

    public void callFunction(String str, boolean z10) {
    }

    public void callFunction(String str, Object... objArr) {
    }

    public SpatialObject instantiate(ObjectFile objectFile) {
        return null;
    }

    public SpatialObject instantiate(ObjectFile objectFile, Vector3 vector3) {
        return null;
    }

    public SpatialObject instantiate(ObjectFile objectFile, Vector3 vector3, Quaternion quaternion) {
        return null;
    }

    public SpatialObject instantiate(ObjectFile objectFile, Vector3 vector3, Quaternion quaternion, Vector3 vector32) {
        return null;
    }

    @DeprecatedInfo(info = {"Spelling error, use instantiateAsChild"})
    @Deprecated
    public SpatialObject instantiateHasChild(ObjectFile objectFile) {
        return null;
    }

    @DeprecatedInfo(info = {"Spelling error, use instantiateAsChild"})
    @Deprecated
    public SpatialObject instantiateHasChild(ObjectFile objectFile, SpatialObject spatialObject) {
        return null;
    }

    public SpatialObject instantiateAsChild(ObjectFile objectFile) {
        return null;
    }

    public SpatialObject instantiateAsChild(ObjectFile objectFile, SpatialObject spatialObject) {
        return null;
    }

    public <T extends Component> T findComponent(String str) {
        return null;
    }

    public List<Component> findComponents(String str) {
        return null;
    }

    public <T extends Component> T findComponent(Class cls) {
        return null;
    }

    public List<Component> findComponents(Class cls) {
        return null;
    }

    public <T extends Component> T findComponentInChildren(String str) {
        return null;
    }

    public <T extends Component> T findComponentInChildren(Class cls) {
        return null;
    }

    public <T extends Component> T findComponentInParent(String str) {
        return null;
    }

    public <T extends Component> T findComponentInParent(Class cls) {
        return null;
    }

    public void removeComponent(Component component) {
    }

    public void addComponent(Component component) {
    }

    public void addComponent(Component component, Class cls) {
    }

    @HideGetSet
    public SpatialObject getParent() {
        return null;
    }

    @HideGetSet
    public void setParent(SpatialObject spatialObject) {
    }

    @HideGetSet
    public SpatialObject getMainParent() {
        return null;
    }

    public void removeParent() {
    }

    public SpatialObject findChildObject(String str) {
        return null;
    }

    public SpatialObject findChildObject(OHString oHString) {
        return null;
    }

    public SpatialObject getChildAt(int i10) {
        return null;
    }

    @HideGetSet
    public int getChildCount() {
        return 0;
    }

    public int getChildIndex(SpatialObject spatialObject) {
        return 0;
    }

    @HideGetSet
    public List<SpatialObject> getChildList() {
        return null;
    }

    public void swapChildrenPosition(SpatialObject spatialObject, SpatialObject spatialObject2) {
    }

    @HideGetSet
    public List<Component> getComponentsList() {
        return null;
    }

    @UnimplementedDoc
    public int componentCount() {
        return 0;
    }

    public Component getComponentAt(int i10) {
        return null;
    }

    @DeprecatedInfo(info = {"Incorrect name, please use getComponentAt()"})
    @Deprecated
    public Component getComponentsAt(int i10) {
        return null;
    }

    @UnimplementedDoc
    public Component componentAt(int i10) {
        return null;
    }

    public float distance(SpatialObject spatialObject) {
        return 0.0f;
    }

    public float distance(Transform transform) {
        return 0.0f;
    }

    public float distance(Vector3 vector3) {
        return 0.0f;
    }

    public float sqrtDistance(SpatialObject spatialObject) {
        return 0.0f;
    }

    public float sqrtDistance(Transform transform) {
        return 0.0f;
    }

    public float sqrtDistance(Vector3 vector3) {
        return 0.0f;
    }

    @HideGetSet
    public Vector3 getPosition() {
        return getTransform().getPosition();
    }

    @HideGetSet
    public void setPosition(Vector3 vector3) {
        getTransform().setPosition(vector3);
    }

    public void setPosition(float f10, float f11, float f12) {
        getTransform().setPosition(f10, f11, f12);
    }

    public void setPositionX(float f10) {
        getTransform().setPositionX(f10);
    }

    public void setPositionY(float f10) {
        getTransform().setPositionY(f10);
    }

    public void setPositionZ(float f10) {
        getTransform().setPositionZ(f10);
    }

    @HideGetSet
    public Quaternion getRotation() {
        return getTransform().getRotation();
    }

    @HideGetSet
    public void setRotation(Quaternion quaternion) {
        getTransform().setRotation(quaternion);
    }

    @UnimplementedDoc
    public void setRotation(float f10, float f11, float f12) {
        getTransform().getRotation().setFromEuler(f10, f11, f12);
    }

    public void setRotation(float f10, float f11, float f12, float f13) {
        getTransform().setRotation(f10, f11, f12, f13);
    }

    @HideGetSet
    public Vector3 getScale() {
        return getTransform().getScale();
    }

    @HideGetSet
    public void setScale(Vector3 vector3) {
        getTransform().setScale(vector3);
    }

    public void setScale(float f10, float f11, float f12) {
        getTransform().setScale(f10, f11, f12);
    }

    public void setScale(float f10) {
        getTransform().setScale(f10);
    }

    @HideGetSet
    public Vector3 getGlobalPosition() {
        return getTransform().getGlobalPosition();
    }

    public Vector3 getGlobalPosition(Vector3 vector3) {
        return getTransform().getGlobalPosition(vector3);
    }

    @HideGetSet
    public void setGlobalPosition(Vector3 vector3) {
    }

    @HideGetSet
    public Quaternion getGlobalRotation() {
        return getTransform().getGlobalRotation();
    }

    public Quaternion getGlobalRotation(Quaternion quaternion) {
        return getTransform().getGlobalRotation(quaternion);
    }

    @HideGetSet
    public void setGlobalRotation(Quaternion quaternion) {
    }

    @HideGetSet
    public Vector3 getGlobalScale() {
        return getTransform().getGlobalScale();
    }

    public Vector3 getGlobalScale(Vector3 vector3) {
        return getTransform().getGlobalScale(vector3);
    }

    @HideGetSet
    public void setGlobalScale(Vector3 vector3) {
    }

    public void translate(float f10, float f11, float f12) {
        getTransform().translate(f10, f11, f12);
    }

    public void move(float f10, float f11, float f12) {
        getTransform().move(f10, f11, f12);
    }

    public void rotate(float f10, float f11, float f12) {
        getTransform().rotate(f10, f11, f12);
    }

    public void translateInSeconds(float f10, float f11, float f12) {
        getTransform().translateInSeconds(f10, f11, f12);
    }

    public void moveInSeconds(float f10, float f11, float f12) {
        getTransform().moveInSeconds(f10, f11, f12);
    }

    public void rotateInSeconds(float f10, float f11, float f12) {
        getTransform().rotateInSeconds(f10, f11, f12);
    }

    public void lookTo(SpatialObject spatialObject) {
        getTransform().lookTo(spatialObject);
    }

    public void lookTo(Vector3 vector3) {
        getTransform().lookTo(vector3);
    }

    public void lookTo(float f10, float f11, float f12) {
        getTransform().lookTo(f10, f11, f12);
    }

    public void lookTo(SpatialObject spatialObject, boolean z10, boolean z11) {
    }

    public void lookTo(Vector3 vector3, boolean z10, boolean z11) {
    }

    public void lookTo(float f10, float f11, float f12, boolean z10, boolean z11) {
    }

    public void lookToIgnoreY(SpatialObject spatialObject) {
        getTransform().lookToIgnoreY(spatialObject);
    }

    public void lookToIgnoreY(Vector3 vector3) {
        getTransform().lookToIgnoreY(vector3);
    }

    public void teleportTo(SpatialObject spatialObject) {
        getTransform().teleportTo(spatialObject);
    }

    public void teleportTo(Vector3 vector3) {
        getTransform().teleportTo(vector3);
    }

    @UnimplementedDoc
    public void smoothLookTo(SpatialObject spatialObject, float f10) {
        getTransform().lerpLookTo(spatialObject, f10);
    }

    @UnimplementedDoc
    public void smoothLookTo(Vector3 vector3, float f10) {
        getTransform().lerpLookTo(vector3, f10);
    }

    @UnimplementedDoc
    public void lerpLookTo(SpatialObject spatialObject, float f10) {
        getTransform().lerpLookTo(spatialObject, f10);
    }

    @UnimplementedDoc
    public void lerpLookTo(Vector3 vector3, float f10) {
        getTransform().lerpLookTo(vector3, f10);
    }

    @UnimplementedDoc
    public void lerpLookToIgnoreY(SpatialObject spatialObject, float f10) {
        getTransform().lerpLookToIgnoreY(spatialObject, f10);
    }

    @UnimplementedDoc
    public void lerpLookToIgnoreY(Vector3 vector3, float f10) {
        getTransform().lerpLookToIgnoreY(vector3, f10);
    }

    public Vector3 transformPoint(Vector3 vector3) {
        return getTransform().transformPoint(vector3);
    }

    public void transformPoint(Vector3 vector3, Vector3 vector32) {
        getTransform().transformPoint(vector3, vector32);
    }

    public Vector3 inverseTransformPoint(Vector3 vector3) {
        return getTransform().inverseTransformPoint(vector3);
    }

    public void inverseTransformPoint(Vector3 vector3, Vector3 vector32) {
        getTransform().inverseTransformPoint(vector3, vector32);
    }

    public Vector3 transformDirection(Vector3 vector3) {
        return getTransform().transformDirection(vector3);
    }

    public void transformDirection(Vector3 vector3, Vector3 vector32) {
        getTransform().transformDirection(vector3, vector32);
    }

    public Vector3 inverseTransformDirection(Vector3 vector3) {
        return getTransform().inverseTransformDirection(vector3);
    }

    public void inverseTransformDirection(Vector3 vector3, Vector3 vector32) {
        getTransform().inverseTransformDirection(vector3, vector32);
    }

    public Vector3 forward() {
        return getTransform().forward();
    }

    public Vector3 back() {
        return getTransform().back();
    }

    public Vector3 right() {
        return getTransform().right();
    }

    public Vector3 left() {
        return getTransform().left();
    }

    public Vector3 up() {
        return getTransform().up();
    }

    public Vector3 down() {
        return getTransform().down();
    }

    public Vector3 forward(Vector3 vector3) {
        return getTransform().forward(vector3);
    }

    public Vector3 back(Vector3 vector3) {
        return getTransform().back(vector3);
    }

    public Vector3 right(Vector3 vector3) {
        return getTransform().right(vector3);
    }

    public Vector3 left(Vector3 vector3) {
        return getTransform().left(vector3);
    }

    public Vector3 up(Vector3 vector3) {
        return getTransform().up(vector3);
    }

    public Vector3 down(Vector3 vector3) {
        return getTransform().down(vector3);
    }

    @HideGetSet
    public boolean isStatic() {
        return getTransform().isStatic();
    }

    @HideGetSet
    public void setStatic(boolean z10) {
        getTransform().setStatic(z10);
    }

    public int getState() {
        return getTransform().getState();
    }

    public void setState(int i10) {
        getTransform().setState(i10);
    }

    @HideGetSet
    public float[] getGlobalMatrix() {
        return getTransform().getGlobalMatrix();
    }

    public float[] getGlobalMatrix(float[] fArr) {
        return getTransform().getGlobalMatrix(fArr);
    }

    @HideGetSet
    public float[] getLocalMatrix() {
        return getTransform().getLocalMatrix();
    }

    public float[] getLocalMatrix(float[] fArr) {
        return getTransform().getLocalMatrix(fArr);
    }

    public Vector3 mulGlobalVector3(Vector3 vector3) {
        return getTransform().mulGlobalVector3(vector3);
    }

    public Vector3 mulLocalVector3(Vector3 vector3) {
        return getTransform().mulLocalVector3(vector3);
    }

    public void recalculateMatrices() {
        getTransform().recalculateMatrices();
    }

    public boolean colliderWithName(String str) {
        return false;
    }

    public boolean isColliding() {
        return false;
    }

    public List<Collision> getCollisionList() {
        return null;
    }

    public int getCollisionsCount() {
        return 0;
    }

    public Collision getCollisionAt(int i10) {
        return null;
    }

    public String toJson() {
        return "";
    }

    public boolean exists() {
        return false;
    }

    @HideGetSet
    public String getTag() {
        return "";
    }

    @HideGetSet
    public void setTag(String str) {
    }

    public boolean compareTag(String str) {
        return false;
    }

    public static SpatialObject loadFile(ObjectFile objectFile) {
        return null;
    }

    public static SpatialObject loadFile(InputStream inputStream) {
        return null;
    }
}

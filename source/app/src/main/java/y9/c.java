package Y9;

import JAVARuntime.Component;
import JAVARuntime.SpatialObject;
import Lb.j;
import ca.InterfaceC4164a;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import d8.r;
import java.lang.reflect.Field;
import java.util.List;

public class c {
    static {
        ca.c.t(new InterfaceC4164a() {
            @Override
            public final void a() {
                c.c();
            }
        });
        com.itsmagic.engine.Engines.Engine.World.a.g(new j() {
            @Override
            public final void a() {
                c.d();
            }
        });
    }

    public static void c() {
        Class cls;
        List<Field> j10;
        Component component;
        for (int i10 = 0; i10 < d8.j.K0(); i10++) {
            r J02 = d8.j.J0(i10);
            if (J02 != null) {
                try {
                    JavaMetaInfo javaMetaInfo = J02.f84452a;
                    if (javaMetaInfo != null && (cls = J02.f84454c) != null && (j10 = javaMetaInfo.j(cls)) != null) {
                        for (int i11 = 0; i11 < j10.size(); i11++) {
                            Field field = j10.get(i11);
                            if (field != null) {
                                try {
                                    field.setAccessible(true);
                                    if (field.getType() == SpatialObject.class) {
                                        SpatialObject spatialObject = (SpatialObject) field.get(null);
                                        if (spatialObject != null && !spatialObject.validate()) {
                                            field.set(null, null);
                                        }
                                    } else if (field.getType() == Component.class && (component = (Component) field.get(null)) != null && component.myObject == null) {
                                        field.set(null, null);
                                    }
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static void d() {
        Component component;
        for (int i10 = 0; i10 < d8.j.K0(); i10++) {
            r J02 = d8.j.J0(i10);
            List<Field> j10 = J02.f84452a.j(J02.f84454c);
            for (int i11 = 0; i11 < j10.size(); i11++) {
                Field field = j10.get(i11);
                try {
                    field.setAccessible(true);
                    if (field.getType() == SpatialObject.class) {
                        SpatialObject spatialObject = (SpatialObject) field.get(null);
                        if (spatialObject != null) {
                            if (!spatialObject.validate()) {
                                field.set(null, null);
                            } else if (!spatialObject.isDontDestroyOnLoad()) {
                                field.set(null, null);
                            }
                        }
                    } else if (field.getType() == Component.class && (component = (Component) field.get(null)) != null && component.myObject == null) {
                        field.set(null, null);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }
}

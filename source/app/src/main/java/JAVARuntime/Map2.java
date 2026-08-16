package JAVARuntime;

import C5.b;
import D5.h;
import P8.i;
import P8.n;
import P8.q;
import android.content.Context;
import com.google.gson.reflect.TypeToken;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import d8.j;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Map2.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Map2.class
  classes.dex
 */
@ClassCategory(cat = {"Lists"})
public class Map2 {
    private transient Class keyClass;
    private transient Class valueClass;
    private transient int count;
    private transient ArrayList keyList = new ArrayList();
    private transient ArrayList valueList = new ArrayList();

    public class AnonymousClass1 implements i {
        final Class val$thisClass;

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, final Field field, final Object classInstance, String tittle, n getSetterListener, q userPointer) {
            Map2 map2;
            try {
                map2 = (Map2) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                map2 = null;
            }
            if (map2 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.a aVar = new C5.a(tittle, true);
            aVar.f2043p = R.color.interface_panel;
            if (map2.getKeyClass() == String.class) {
                for (int i10 = 0; i10 < Map2.access$000(map2).size(); i10++) {
                    String str = (String) Map2.access$000(map2).get(i10);
                    if (map2.getValueClass() == String.class) {
                        final Map2 map22 = map2;
                        final int i11 = i10;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", (String) Map2.access$100(map22).get(i11));
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map22).set(i11, variable.str_value);
                                    try {
                                        field.set(classInstance, map22);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, str, b.a.SLString));
                    } else if (map2.getValueClass() == Float.TYPE) {
                        final Map2 map23 = map2;
                        final int i12 = i10;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", ((Float) Map2.access$100(map23).get(i12)).floatValue() + "");
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map23).set(i12, Float.valueOf(variable.float_value));
                                    try {
                                        field.set(classInstance, map23);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, str, b.a.SLFloat));
                    } else if (map2.getValueClass() == Integer.TYPE) {
                        final Map2 map24 = map2;
                        final int i13 = i10;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", ((Integer) Map2.access$100(map24).get(i13)).intValue() + "");
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map24).set(i13, Integer.valueOf(variable.int_value));
                                    try {
                                        field.set(classInstance, map24);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, str, b.a.SLFloat));
                    } else if (map2.getValueClass() == Boolean.TYPE) {
                        final Map2 map25 = map2;
                        final int i14 = i10;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", ((Boolean) Map2.access$100(map25).get(i14)).booleanValue() + "");
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map25).set(i14, variable.booolean_value);
                                    try {
                                        field.set(classInstance, map25);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, str, b.a.SLBoolean));
                    }
                }
            }
            if (map2.getKeyClass() == Float.TYPE) {
                for (int i15 = 0; i15 < Map2.access$000(map2).size(); i15++) {
                    float floatValue = ((Float) Map2.access$000(map2).get(i15)).floatValue();
                    if (map2.getValueClass() == String.class) {
                        final Map2 map26 = map2;
                        final int i16 = i15;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", (String) Map2.access$100(map26).get(i16));
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map26).set(i16, variable.str_value);
                                    try {
                                        field.set(classInstance, map26);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, floatValue + "", b.a.SLString));
                    } else if (map2.getValueClass() == Float.TYPE) {
                        final Map2 map27 = map2;
                        final int i17 = i15;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", ((Float) Map2.access$100(map27).get(i17)).floatValue() + "");
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map27).set(i17, Float.valueOf(variable.float_value));
                                    try {
                                        field.set(classInstance, map27);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, floatValue + "", b.a.SLFloat));
                    } else if (map2.getValueClass() == Integer.TYPE) {
                        final Map2 map28 = map2;
                        final int i18 = i15;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", ((Integer) Map2.access$100(map28).get(i18)).intValue() + "");
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map28).set(i18, Integer.valueOf(variable.int_value));
                                    try {
                                        field.set(classInstance, map28);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, floatValue + "", b.a.SLFloat));
                    } else if (map2.getValueClass() == Boolean.TYPE) {
                        final Map2 map29 = map2;
                        final int i19 = i15;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", ((Boolean) Map2.access$100(map29).get(i19)).booleanValue() + "");
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map29).set(i19, variable.booolean_value);
                                    try {
                                        field.set(classInstance, map29);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, floatValue + "", b.a.SLBoolean));
                    }
                }
            }
            if (map2.getKeyClass() == Integer.TYPE) {
                for (int i20 = 0; i20 < Map2.access$000(map2).size(); i20++) {
                    int intValue = ((Integer) Map2.access$000(map2).get(i20)).intValue();
                    if (map2.getValueClass() == String.class) {
                        final Map2 map210 = map2;
                        final int i21 = i20;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", (String) Map2.access$100(map210).get(i21));
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map210).set(i21, variable.str_value);
                                    try {
                                        field.set(classInstance, map210);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, intValue + "", b.a.SLString));
                    } else if (map2.getValueClass() == Float.TYPE) {
                        final Map2 map211 = map2;
                        final int i22 = i20;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", ((Float) Map2.access$100(map211).get(i22)).floatValue() + "");
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map211).set(i22, Float.valueOf(variable.float_value));
                                    try {
                                        field.set(classInstance, map211);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, intValue + "", b.a.SLFloat));
                    } else if (map2.getValueClass() == Integer.TYPE) {
                        final Map2 map212 = map2;
                        final int i23 = i20;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", ((Integer) Map2.access$100(map212).get(i23)).intValue() + "");
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map212).set(i23, Integer.valueOf(variable.int_value));
                                    try {
                                        field.set(classInstance, map212);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, intValue + "", b.a.SLFloat));
                    } else if (map2.getValueClass() == Boolean.TYPE) {
                        final Map2 map213 = map2;
                        final int i24 = i20;
                        aVar.f2042o.add(new C5.b(new h() {
                            @Override
                            public Variable get() {
                                return new Variable("", ((Boolean) Map2.access$100(map213).get(i24)).booleanValue() + "");
                            }

                            @Override
                            public void set(Variable variable) {
                                if (variable != null) {
                                    Map2.access$100(map213).set(i24, variable.booolean_value);
                                    try {
                                        field.set(classInstance, map213);
                                    } catch (IllegalAccessException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }, intValue + "", b.a.SLBoolean));
                    }
                }
            }
            return new C5.b(aVar);
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            return null;
        }

        @Override
        public C5.b getInspectorForList(Context context, d8.h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            return null;
        }

        @Override
        public String getSimpleName(q userPointer) {
            return this.val$thisClass.getSimpleName();
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public boolean match(String className, q userPointer) {
            return j.y(this.val$thisClass.getName()).equals(j.y(className));
        }

        @Override
        public Object newInstance(q userPointer) {
            return null;
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            if (variable.type == Variable.a.String) {
                return Map2.fromJson(variable.str_value);
            }
            return null;
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Map2 map2 = (Map2) value;
            return map2 != null ? new Variable(fieldName, map2.toJson()) : new Variable(fieldName, "");
        }
    }

    public class AnonymousClass2 extends TypeToken<ArrayList> {
        public AnonymousClass2() {
        }
    }

    public class AnonymousClass3 extends TypeToken<ArrayList> {
        public AnonymousClass3() {
        }
    }

    public Map2(Class cls, Class cls2) {
        this.keyClass = null;
        this.valueClass = null;
        this.keyClass = cls;
        this.valueClass = cls2;
    }

    public void put(Object obj, Object obj2) {
        if (obj.getClass() != this.keyClass) {
            Terminal.log("Map2 invalid put: key class type is different from defined at constructor");
        } else {
            if (obj2.getClass() != this.valueClass) {
                Terminal.log("Map2 invalid put: value class type is different from defined at constructor");
                return;
            }
            this.keyList.add(obj);
            this.valueList.add(obj2);
            this.count++;
        }
    }

    public Object get(Object obj) {
        if (obj.getClass() != this.keyClass) {
            Terminal.log("Map2 invalid put: key class type is different from defined at constructor");
            return null;
        }
        if (this.keyClass == String.class) {
            for (int i10 = 0; i10 < this.keyList.size(); i10++) {
                if (((String) this.keyList.get(i10)).equals((String) obj)) {
                    return this.valueList.get(i10);
                }
            }
        }
        if (this.keyClass == Integer.TYPE || this.keyClass == Integer.class) {
            for (int i11 = 0; i11 < this.keyList.size(); i11++) {
                if (((Integer) this.keyList.get(i11)).intValue() == ((Integer) obj).intValue()) {
                    return this.valueList.get(i11);
                }
            }
        }
        if (this.keyClass == Float.TYPE || this.keyClass == Float.class) {
            for (int i12 = 0; i12 < this.keyList.size(); i12++) {
                if (((Float) this.keyList.get(i12)).floatValue() == ((Float) obj).floatValue()) {
                    return this.valueList.get(i12);
                }
            }
            return null;
        }
        for (int i13 = 0; i13 < this.keyList.size(); i13++) {
            if (this.keyList.get(i13) == obj) {
                return this.valueList.get(i13);
            }
        }
        return null;
    }

    public void replace(Object obj, Object obj2) {
        if (obj.getClass() != this.keyClass) {
            Terminal.log("Map2 invalid put: key class type is different from defined at constructor");
            return;
        }
        if (obj2.getClass() != this.valueClass) {
            Terminal.log("Map2 invalid put: value class type is different from defined at constructor");
            return;
        }
        if (this.keyClass == String.class) {
            for (int i10 = 0; i10 < this.keyList.size(); i10++) {
                if (((String) this.keyList.get(i10)).equals((String) obj)) {
                    this.valueList.set(i10, obj2);
                }
            }
        }
        if (this.keyClass == Integer.TYPE || this.keyClass == Integer.class) {
            for (int i11 = 0; i11 < this.keyList.size(); i11++) {
                if (((Integer) this.keyList.get(i11)).intValue() == ((Integer) obj).intValue()) {
                    this.valueList.set(i11, obj2);
                }
            }
        }
        if (this.keyClass == Float.TYPE || this.keyClass == Float.class) {
            for (int i12 = 0; i12 < this.keyList.size(); i12++) {
                if (((Float) this.keyList.get(i12)).floatValue() == ((Float) obj).floatValue()) {
                    this.valueList.set(i12, obj2);
                }
            }
            return;
        }
        for (int i13 = 0; i13 < this.keyList.size(); i13++) {
            if (this.keyList.get(i13) == obj) {
                this.valueList.set(i13, obj2);
            }
        }
    }

    public void remove(Object obj) {
        if (obj.getClass() != this.keyClass) {
            Terminal.log("Map2 invalid put: key class type is different from defined at constructor");
        }
        if (this.keyClass == String.class) {
            for (int i10 = 0; i10 < this.keyList.size(); i10++) {
                if (((String) this.keyList.get(i10)).equals((String) obj)) {
                    this.keyList.remove(i10);
                    this.valueList.remove(i10);
                    this.count--;
                    return;
                }
            }
        }
        if (this.keyClass == Integer.TYPE || this.keyClass == Integer.class) {
            for (int i11 = 0; i11 < this.keyList.size(); i11++) {
                if (((Integer) this.keyList.get(i11)).intValue() == ((Integer) obj).intValue()) {
                    this.keyList.remove(i11);
                    this.valueList.remove(i11);
                    this.count--;
                    return;
                }
            }
        }
        if (this.keyClass == Float.TYPE || this.keyClass == Float.class) {
            for (int i12 = 0; i12 < this.keyList.size(); i12++) {
                if (((Float) this.keyList.get(i12)).floatValue() == ((Float) obj).floatValue()) {
                    this.keyList.remove(i12);
                    this.valueList.remove(i12);
                    this.count--;
                    return;
                }
            }
            return;
        }
        for (int i13 = 0; i13 < this.keyList.size(); i13++) {
            if (this.keyList.get(i13) == obj) {
                this.keyList.remove(i13);
                this.valueList.remove(i13);
                this.count--;
                return;
            }
        }
    }

    public Class getKeyClass() {
        return this.keyClass;
    }

    public Class getValueClass() {
        return this.valueClass;
    }

    public List getKeyList() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.keyList);
        return arrayList;
    }

    public List getDirectKeyList() {
        return this.keyList;
    }

    public List getValueList() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.valueList);
        return arrayList;
    }

    public List getDirectValueList() {
        return this.valueList;
    }

    public String toJson() {
        return null;
    }

    public void clear() {
        this.keyList.clear();
        this.valueList.clear();
        this.count = 0;
    }

    public int getSize() {
        return this.count;
    }

    public static Map2 fromJson(String str) {
        return null;
    }
}

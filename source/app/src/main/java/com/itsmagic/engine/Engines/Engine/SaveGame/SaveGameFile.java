package com.itsmagic.engine.Engines.Engine.SaveGame;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SaveGameFile implements Serializable {

    @Expose
    private List<ColorPair> colorList;

    @Expose
    private List<FloatPair> floatList;

    @Expose
    private List<IntPair> intList;

    @Expose
    private List<QuaternionPair> quaternionList;

    @Expose
    private List<StringPair> stringList;

    @Expose
    private List<Vector2Pair> vector2List;

    @Expose
    private List<Vector3Pair> vector3List;

    @Expose
    private final Map<String, String> stringMap = new HashMap();

    @Expose
    private final Map<String, Float> floatMap = new HashMap();

    @Expose
    private final Map<String, Integer> intMap = new HashMap();

    @Expose
    private final Map<String, Vector3> vector3Map = new HashMap();

    @Expose
    private final Map<String, Vector2> vector2Map = new HashMap();

    @Expose
    private final Map<String, Quaternion> quaternionMap = new HashMap();

    @Expose
    private final Map<String, ColorINT> colorMap = new HashMap();

    @Expose
    private final Map<String, Boolean> booleanMap = new HashMap();

    public void a() {
        this.stringMap.clear();
        this.floatMap.clear();
        this.intMap.clear();
        this.vector3Map.clear();
        this.vector2Map.clear();
        this.quaternionMap.clear();
        this.colorMap.clear();
        this.booleanMap.clear();
    }

    public Map<String, Boolean> b() {
        return this.booleanMap;
    }

    public Map<String, ColorINT> c() {
        return this.colorMap;
    }

    public Map<String, Float> d() {
        return this.floatMap;
    }

    public Map<String, Integer> e() {
        return this.intMap;
    }

    public Map<String, Quaternion> f() {
        return this.quaternionMap;
    }

    public Map<String, String> g() {
        return this.stringMap;
    }

    public Map<String, Vector2> h() {
        return this.vector2Map;
    }

    public Map<String, Vector3> i() {
        return this.vector3Map;
    }

    public void j() {
        List<StringPair> list = this.stringList;
        if (list != null) {
            for (StringPair stringPair : list) {
                if (stringPair != null && stringPair.a() != null && !stringPair.a().trim().isEmpty()) {
                    this.stringMap.put(stringPair.a(), stringPair.b());
                }
            }
        }
        List<FloatPair> list2 = this.floatList;
        if (list2 != null) {
            for (FloatPair floatPair : list2) {
                if (floatPair != null && floatPair.a() != null && !floatPair.a().trim().isEmpty()) {
                    this.floatMap.put(floatPair.a(), Float.valueOf(floatPair.b()));
                }
            }
        }
        List<IntPair> list3 = this.intList;
        if (list3 != null) {
            for (IntPair intPair : list3) {
                if (intPair != null && intPair.a() != null && !intPair.a().trim().isEmpty()) {
                    this.intMap.put(intPair.a(), Integer.valueOf(intPair.b()));
                }
            }
        }
        List<Vector3Pair> list4 = this.vector3List;
        if (list4 != null) {
            for (Vector3Pair vector3Pair : list4) {
                if (vector3Pair != null && vector3Pair.a() != null && !vector3Pair.a().trim().isEmpty()) {
                    this.vector3Map.put(vector3Pair.a(), vector3Pair.b());
                }
            }
        }
        List<Vector2Pair> list5 = this.vector2List;
        if (list5 != null) {
            for (Vector2Pair vector2Pair : list5) {
                if (vector2Pair != null && vector2Pair.a() != null && !vector2Pair.a().trim().isEmpty()) {
                    this.vector2Map.put(vector2Pair.a(), vector2Pair.b());
                }
            }
        }
        List<QuaternionPair> list6 = this.quaternionList;
        if (list6 != null) {
            for (QuaternionPair quaternionPair : list6) {
                if (quaternionPair != null && quaternionPair.a() != null && !quaternionPair.a().trim().isEmpty()) {
                    this.quaternionMap.put(quaternionPair.a(), quaternionPair.b());
                }
            }
        }
        List<ColorPair> list7 = this.colorList;
        if (list7 != null) {
            for (ColorPair colorPair : list7) {
                if (colorPair != null && colorPair.a() != null && !colorPair.a().trim().isEmpty()) {
                    this.colorMap.put(colorPair.a(), colorPair.b());
                }
            }
        }
        this.stringList = null;
        this.floatList = null;
        this.intList = null;
        this.vector3List = null;
        this.vector2List = null;
        this.quaternionList = null;
        this.colorList = null;
    }
}

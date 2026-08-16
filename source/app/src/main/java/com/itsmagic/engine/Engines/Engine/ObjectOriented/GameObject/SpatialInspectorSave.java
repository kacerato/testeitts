package com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject;

import X7.a;
import com.google.gson.annotations.Expose;
import java.util.LinkedList;
import java.util.List;

@Deprecated
public class SpatialInspectorSave {

    public static final String f79319a = "nfckhj32@#35923irv#$#2#%&6C@3!357ccfk90c2fic&%46";

    @Expose
    public String masterParentDuplicableID;

    @Expose
    public String masterParentUniqueID;

    @Expose
    public String objectDuplicableID;

    @Expose
    public String objectUniqueID;

    @Expose
    public List<String> objectsDuplicableIDs;

    @Expose
    private String uid;

    public SpatialInspectorSave() {
        this.uid = "";
        this.objectsDuplicableIDs = new LinkedList();
        this.masterParentUniqueID = "";
        this.objectUniqueID = "";
        this.masterParentDuplicableID = "";
        this.objectDuplicableID = "";
        this.uid = f79319a;
    }

    public static SpatialInspectorSave a(String json) {
        try {
            SpatialInspectorSave spatialInspectorSave = (SpatialInspectorSave) a.m().fromJson(json, SpatialInspectorSave.class);
            if (spatialInspectorSave == null) {
                return null;
            }
            if (spatialInspectorSave.c()) {
                return spatialInspectorSave;
            }
            return null;
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String b() {
        return a.m().toJson(this);
    }

    public boolean c() {
        String str = this.uid;
        return str != null && str.equals(f79319a);
    }

    public SpatialInspectorSave(List<String> objectsDuplicableIDs, String masterParentUniqueID, String objectUniqueID, String masterParentDuplicableID, String objectDuplicableID) {
        this.uid = "";
        new LinkedList();
        this.objectsDuplicableIDs = objectsDuplicableIDs;
        this.masterParentUniqueID = masterParentUniqueID;
        this.objectUniqueID = objectUniqueID;
        this.masterParentDuplicableID = masterParentDuplicableID;
        this.objectDuplicableID = objectDuplicableID;
    }
}

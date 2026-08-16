package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import android.util.Log;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class p {

    public static final List<q> f81387a = new SteppedArrayList();

    public static void a(q nodeInterface) {
        if (nodeInterface == null) {
            throw new NullPointerException("nodeInterface can't be null");
        }
        Class<? extends ShaderGraphNode> b10 = nodeInterface.b();
        if (b10 == null) {
            throw new RuntimeException("Node class type can't be null");
        }
        if (!ShaderGraphNode.class.isAssignableFrom(b10)) {
            throw new RuntimeException("Node class type must extend ShaderGraphNode");
        }
        String c10 = nodeInterface.c();
        if (c10 == null || c10.isEmpty()) {
            throw new NullPointerException("Node serialized name can't be null or empty");
        }
        synchronized (f81387a) {
            int i10 = 0;
            while (true) {
                try {
                    List<q> list = f81387a;
                    if (i10 >= list.size()) {
                        list.add(nodeInterface);
                    } else {
                        if (list.get(i10).c().equalsIgnoreCase(c10)) {
                            throw new RuntimeException("Serialized name already used by other node: " + c10);
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static int b() {
        int size;
        List<q> list = f81387a;
        synchronized (list) {
            size = list.size();
        }
        return size;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
    
        r5 = r3.d(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
    
        if (r5 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
    
        r5.serializedNodeType = r3.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ShaderGraphNode c(String serializedType, JsonObject json) {
        if (serializedType == null || serializedType.isEmpty()) {
            return null;
        }
        synchronized (f81387a) {
            int i10 = 0;
            while (true) {
                List<q> list = f81387a;
                if (i10 >= list.size()) {
                    Log.e("ShaderGraphNodeDictionary", "Node type not found: " + serializedType);
                    return null;
                }
                q qVar = list.get(i10);
                if (qVar.c().equalsIgnoreCase(serializedType)) {
                    try {
                        break;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return null;
                    }
                }
                i10++;
            }
        }
    }

    public static ShaderGraphNode d(String serializedType) {
        if (serializedType == null || serializedType.isEmpty()) {
            return null;
        }
        synchronized (f81387a) {
            int i10 = 0;
            while (true) {
                try {
                    List<q> list = f81387a;
                    if (i10 >= list.size()) {
                        return null;
                    }
                    q qVar = list.get(i10);
                    if (qVar.c().equalsIgnoreCase(serializedType)) {
                        ShaderGraphNode a10 = qVar.a();
                        if (a10 != null) {
                            a10.serializedNodeType = qVar.c();
                        }
                        return a10;
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static q e(int index) {
        q qVar;
        List<q> list = f81387a;
        synchronized (list) {
            qVar = list.get(index);
        }
        return qVar;
    }

    public static JsonObject f(ShaderGraphNode node) {
        if (node == null) {
            return null;
        }
        return X7.a.m().toJsonTree(node).getAsJsonObject();
    }
}

package com.ardor3d.renderer;

import com.google.common.collect.M1;
import com.google.common.collect.O1;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ContextManager {
    private static List<ContextCleanListener> _cleanListeners = M1.q();
    protected static final Map<Object, RenderContext> contextStore = new O1().l().i();
    protected static RenderContext currentContext;

    public static void addContext(Object obj, RenderContext renderContext) {
        contextStore.put(obj, renderContext);
    }

    public static void addContextCleanListener(ContextCleanListener contextCleanListener) {
        _cleanListeners.add(contextCleanListener);
    }

    public static void fireCleanContextEvent(RenderContext renderContext) {
        Iterator<ContextCleanListener> it = _cleanListeners.iterator();
        while (it.hasNext()) {
            it.next().cleanForContext(renderContext);
        }
    }

    public static RenderContext getContextForKey(Object obj) {
        return contextStore.get(obj);
    }

    public static RenderContext getContextForRef(Object obj) {
        if (obj == null) {
            return null;
        }
        for (RenderContext renderContext : contextStore.values()) {
            if (obj.equals(renderContext.getGlContextRep())) {
                return renderContext;
            }
        }
        return null;
    }

    public static RenderContext getCurrentContext() {
        return currentContext;
    }

    public static void removeContext(Object obj) {
        contextStore.remove(obj);
    }

    public static RenderContext switchContext(Object obj) {
        RenderContext renderContext = contextStore.get(obj);
        currentContext = renderContext;
        if (renderContext != null) {
            return renderContext;
        }
        throw new IllegalArgumentException("contextKey not found in context store.");
    }
}

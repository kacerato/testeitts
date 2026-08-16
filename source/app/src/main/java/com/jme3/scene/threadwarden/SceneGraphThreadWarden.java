package com.jme3.scene.threadwarden;

import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SceneGraphThreadWarden {
    static final boolean $assertionsDisabled = false;
    private static final Logger logger = Logger.getLogger(SceneGraphThreadWarden.class.getName());
    public static boolean THREAD_WARDEN_ENABLED = !Boolean.getBoolean("nothreadwarden");
    public static boolean ASSERTS_ENABLED = false;
    public static final Map<Spatial, Thread> spatialsThatAreMainThreadReserved = Collections.synchronizedMap(new WeakHashMap());

    public static boolean assertOnCorrectThread(Spatial spatial) {
        Thread thread;
        if (checksDisabled() || (thread = spatialsThatAreMainThreadReserved.get(spatial)) == null || Thread.currentThread() == thread) {
            return true;
        }
        String str = "The spatial " + ((Object) spatial) + " was mutated on a thread other than the main thread, was mutated on " + Thread.currentThread().getName();
        IllegalThreadSceneGraphMutation illegalThreadSceneGraphMutation = new IllegalThreadSceneGraphMutation(str);
        logger.log(Level.WARNING, str, (Throwable) illegalThreadSceneGraphMutation);
        throw illegalThreadSceneGraphMutation;
    }

    private static boolean checksDisabled() {
        return (THREAD_WARDEN_ENABLED && ASSERTS_ENABLED) ? false : true;
    }

    public static void disableChecks() {
        THREAD_WARDEN_ENABLED = false;
    }

    public static String getTurnOnAssertsPrompt() {
        return ASSERTS_ENABLED ? "" : "To get more accurate debug consider turning on asserts. This will allow JME to do additional checks which *may* find the source of the problem. To do so, add -ea to the JVM arguments.";
    }

    public static boolean reset() {
        spatialsThatAreMainThreadReserved.clear();
        THREAD_WARDEN_ENABLED = !Boolean.getBoolean("nothreadwarden");
        return true;
    }

    private static void setTreeNotRestricted(Spatial spatial) {
        spatialsThatAreMainThreadReserved.remove(spatial);
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                setTreeNotRestricted(it.next());
            }
        }
    }

    private static void setTreeRestricted(Spatial spatial, Thread thread) {
        spatialsThatAreMainThreadReserved.put(spatial, thread);
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                setTreeRestricted(it.next(), thread);
            }
        }
    }

    public static boolean setup(Node node) {
        if (checksDisabled()) {
            return true;
        }
        Thread currentThread = Thread.currentThread();
        Thread thread = spatialsThatAreMainThreadReserved.get(node);
        if (thread == null || thread == currentThread) {
            setTreeRestricted(node, currentThread);
            return true;
        }
        throw new IllegalStateException("The node is already restricted to " + thread.getName() + " but now it's being restricted to " + Thread.currentThread().getName());
    }

    public static boolean updateRequirement(Spatial spatial, Node node) {
        if (checksDisabled()) {
            return true;
        }
        boolean z10 = node != null && spatialsThatAreMainThreadReserved.containsKey(node);
        boolean containsKey = spatialsThatAreMainThreadReserved.containsKey(spatial);
        if (z10 || containsKey) {
            assertOnCorrectThread(spatial);
        }
        if (z10 == containsKey) {
            return true;
        }
        if (z10) {
            setTreeRestricted(spatial, Thread.currentThread());
        } else {
            setTreeNotRestricted(spatial);
        }
        return true;
    }
}

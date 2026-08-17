package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionState;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * Barramento central de eventos de interacao.
 * Despacha eventos pontuais e continuos entre o jogador, alvos e grafos NoCode.
 */
public class InteractionDispatcher {

    public interface InteractionEventListener {
        void onFocusEnter(InteractionContext context);
        void onFocusStay(InteractionContext context);
        void onFocusExit(InteractionContext context);
        void onInteract(InteractionContext context);
        void onCustomEvent(String eventName, GameObject target, Object payload);
    }

    private static final List<InteractionEventListener> GLOBAL_LISTENERS = new CopyOnWriteArrayList<>();
    private static final Map<GameObject, List<InteractionEventListener>> OBJECT_LISTENERS = new ConcurrentHashMap<>();
    private static final Map<String, List<InteractionEventListener>> CUSTOM_EVENT_LISTENERS = new ConcurrentHashMap<>();

    public static void addGlobalListener(InteractionEventListener listener) {
        if (listener != null && !GLOBAL_LISTENERS.contains(listener)) {
            GLOBAL_LISTENERS.add(listener);
        }
    }

    public static void removeGlobalListener(InteractionEventListener listener) {
        if (listener != null) {
            GLOBAL_LISTENERS.remove(listener);
        }
    }

    public static void addObjectListener(GameObject go, InteractionEventListener listener) {
        if (!C13317e.J(go) || listener == null) return;
        List<InteractionEventListener> list = OBJECT_LISTENERS.computeIfAbsent(go, k -> new CopyOnWriteArrayList<>());
        if (!list.contains(listener)) {
            list.add(listener);
        }
    }

    public static void removeObjectListener(GameObject go, InteractionEventListener listener) {
        if (go == null || listener == null) return;
        List<InteractionEventListener> list = OBJECT_LISTENERS.get(go);
        if (list != null) {
            list.remove(listener);
        }
    }

    public static void addCustomEventListener(String eventName, InteractionEventListener listener) {
        if (eventName == null || listener == null) return;
        List<InteractionEventListener> list = CUSTOM_EVENT_LISTENERS.computeIfAbsent(eventName.trim().toLowerCase(), k -> new CopyOnWriteArrayList<>());
        if (!list.contains(listener)) {
            list.add(listener);
        }
    }

    public static void removeCustomEventListener(String eventName, InteractionEventListener listener) {
        if (eventName == null || listener == null) return;
        List<InteractionEventListener> list = CUSTOM_EVENT_LISTENERS.get(eventName.trim().toLowerCase());
        if (list != null) {
            list.remove(listener);
        }
    }

    public static void dispatchFocusEnter(InteractionContext context) {
        if (context == null || !C13317e.J(context.target)) return;
        InteractionRegistry.setState(context.target, InteractionState.Focused);

        for (InteractionEventListener l : GLOBAL_LISTENERS) {
            l.onFocusEnter(context);
        }
        List<InteractionEventListener> objListeners = OBJECT_LISTENERS.get(context.target);
        if (objListeners != null) {
            for (InteractionEventListener l : objListeners) {
                l.onFocusEnter(context);
            }
        }
    }

    public static void dispatchFocusStay(InteractionContext context) {
        if (context == null || !C13317e.J(context.target)) return;
        for (InteractionEventListener l : GLOBAL_LISTENERS) {
            l.onFocusStay(context);
        }
        List<InteractionEventListener> objListeners = OBJECT_LISTENERS.get(context.target);
        if (objListeners != null) {
            for (InteractionEventListener l : objListeners) {
                l.onFocusStay(context);
            }
        }
    }

    public static void dispatchFocusExit(InteractionContext context) {
        if (context == null || !C13317e.J(context.target)) return;
        InteractionRegistry.setState(context.target, InteractionState.Idle);

        for (InteractionEventListener l : GLOBAL_LISTENERS) {
            l.onFocusExit(context);
        }
        List<InteractionEventListener> objListeners = OBJECT_LISTENERS.get(context.target);
        if (objListeners != null) {
            for (InteractionEventListener l : objListeners) {
                l.onFocusExit(context);
            }
        }
    }

    public static void dispatchInteract(InteractionContext context) {
        if (context == null) return;
        for (InteractionEventListener l : GLOBAL_LISTENERS) {
            l.onInteract(context);
        }
        if (C13317e.J(context.target)) {
            List<InteractionEventListener> objListeners = OBJECT_LISTENERS.get(context.target);
            if (objListeners != null) {
                for (InteractionEventListener l : objListeners) {
                    l.onInteract(context);
                }
            }
        }
    }

    public static void dispatchCustomEvent(String eventName, GameObject target, Object payload) {
        if (eventName == null) return;
        String cleanName = eventName.trim().toLowerCase();

        for (InteractionEventListener l : GLOBAL_LISTENERS) {
            l.onCustomEvent(eventName, target, payload);
        }
        List<InteractionEventListener> list = CUSTOM_EVENT_LISTENERS.get(cleanName);
        if (list != null) {
            for (InteractionEventListener l : list) {
                l.onCustomEvent(eventName, target, payload);
            }
        }
    }

    public static void clear() {
        GLOBAL_LISTENERS.clear();
        OBJECT_LISTENERS.clear();
        CUSTOM_EVENT_LISTENERS.clear();
    }
}

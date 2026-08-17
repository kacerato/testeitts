package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/** Registro central de entidades e estados ortogonais de interacao. */
public class InteractionRegistry implements Serializable {

    public static class InteractableData implements Serializable {
        public boolean enabled = true;
        public int priority = 0;
        public boolean isFocused = false;
        public boolean isLocked = false;
        public boolean isOpen = false;
        public boolean isPowered = true;
        public boolean isBusy = false;
        public boolean isHeld = false;
        public GameObject heldBy = null;
        public boolean hasOnOffState = false;
        public boolean isOn = false;
        public float openAmount = 0.0f;
        public float analogValue = 0.0f;
        public final Set<InteractionCapability> capabilities = Collections.synchronizedSet(EnumSet.noneOf(InteractionCapability.class));
        public final Set<String> tags = Collections.synchronizedSet(new HashSet<>());
        public final Map<String, Object> attributes = new ConcurrentHashMap<>();
        public float maxInteractionDistance = 4.0f;
        public float maxInteractionAngle = 60.0f;
        public boolean requireLineOfSight = true;
        public String promptText;
        public String promptIcon;
    }

    private static final Map<GameObject, InteractableData> REGISTRY = new ConcurrentHashMap<>();
    private static final List<GameObject> ACTIVE_INTERACTABLES = new ArrayList<>(128);

    public static InteractableData getOrCreate(GameObject go) {
        if (!C13317e.J(go)) return null;
        InteractableData data = REGISTRY.get(go);
        if (data == null) {
            synchronized (ACTIVE_INTERACTABLES) {
                data = REGISTRY.get(go);
                if (data == null) {
                    data = new InteractableData();
                    REGISTRY.put(go, data);
                    if (!ACTIVE_INTERACTABLES.contains(go)) ACTIVE_INTERACTABLES.add(go);
                }
            }
        }
        return data;
    }

    public static InteractableData get(GameObject go) { return go == null ? null : REGISTRY.get(go); }
    public static boolean isRegistered(GameObject go) { return go != null && REGISTRY.containsKey(go); }
    public static void register(GameObject go) { getOrCreate(go); }
    public static void unregister(GameObject go) { if (go == null) return; REGISTRY.remove(go); synchronized (ACTIVE_INTERACTABLES) { ACTIVE_INTERACTABLES.remove(go); } }

    public static void setEnabled(GameObject go, boolean enabled) { InteractableData d=getOrCreate(go); if(d!=null)d.enabled=enabled; }
    public static boolean isEnabled(GameObject go) { InteractableData d=get(go); return d!=null&&d.enabled; }
    public static void setFocused(GameObject go, boolean focused) { InteractableData d=get(go); if(d!=null)d.isFocused=focused; }
    public static boolean isFocused(GameObject go) { InteractableData d=get(go); return d!=null&&d.isFocused; }
    public static void setLocked(GameObject go, boolean locked) { InteractableData d=getOrCreate(go); if(d!=null)d.isLocked=locked; }
    public static boolean isLocked(GameObject go) { InteractableData d=get(go); return d!=null&&d.isLocked; }

    public static void setOpen(GameObject go, boolean open) { InteractableData d=getOrCreate(go); if(d!=null){d.isOpen=open;d.openAmount=open?1f:0f;} }
    public static boolean isOpen(GameObject go) { InteractableData d=get(go); return d!=null&&d.isOpen; }
    public static void setOpenAmount(GameObject go,float amount){InteractableData d=getOrCreate(go);if(d!=null){d.openAmount=clamp01(amount);d.isOpen=d.openAmount>0.001f;}}
    public static float getOpenAmount(GameObject go){InteractableData d=get(go);return d!=null?d.openAmount:0f;}

    public static void setBusy(GameObject go,boolean busy){InteractableData d=getOrCreate(go);if(d!=null)d.isBusy=busy;}
    public static boolean isBusy(GameObject go){InteractableData d=get(go);return d!=null&&d.isBusy;}
    public static void setHeld(GameObject go,boolean held,GameObject heldBy){InteractableData d=getOrCreate(go);if(d!=null){d.isHeld=held;d.heldBy=held?heldBy:null;}}
    public static boolean isHeld(GameObject go){InteractableData d=get(go);return d!=null&&d.isHeld;}
    public static GameObject getHeldBy(GameObject go){InteractableData d=get(go);return d!=null?d.heldBy:null;}
    public static void setPowered(GameObject go,boolean powered){InteractableData d=getOrCreate(go);if(d!=null)d.isPowered=powered;}
    public static boolean isPowered(GameObject go){InteractableData d=get(go);return d!=null&&d.isPowered;}
    public static void setOn(GameObject go,boolean on){InteractableData d=getOrCreate(go);if(d!=null){d.hasOnOffState=true;d.isOn=on;}}
    public static boolean isOn(GameObject go){InteractableData d=get(go);return d!=null&&d.hasOnOffState&&d.isOn;}
    public static void setAnalogValue(GameObject go,float value){InteractableData d=getOrCreate(go);if(d!=null)d.analogValue=clamp01(value);}
    public static float getAnalogValue(GameObject go){InteractableData d=get(go);return d!=null?d.analogValue:0f;}

    public static void addCapability(GameObject go,InteractionCapability c){if(c==null)return;InteractableData d=getOrCreate(go);if(d!=null)d.capabilities.add(c);}
    public static void removeCapability(GameObject go,InteractionCapability c){if(c==null)return;InteractableData d=get(go);if(d!=null)d.capabilities.remove(c);}
    public static boolean hasCapability(GameObject go,InteractionCapability c){if(c==null)return false;InteractableData d=get(go);return d!=null&&d.capabilities.contains(c);}
    public static void addTag(GameObject go,String tag){if(tag==null||tag.trim().isEmpty())return;InteractableData d=getOrCreate(go);if(d!=null)d.tags.add(tag.trim().toLowerCase());}
    public static void removeTag(GameObject go,String tag){if(tag==null)return;InteractableData d=get(go);if(d!=null)d.tags.remove(tag.trim().toLowerCase());}
    public static boolean hasTag(GameObject go,String tag){if(tag==null)return false;InteractableData d=get(go);return d!=null&&d.tags.contains(tag.trim().toLowerCase());}
    public static void setPriority(GameObject go,int priority){InteractableData d=getOrCreate(go);if(d!=null)d.priority=priority;}
    public static int getPriority(GameObject go){InteractableData d=get(go);return d!=null?d.priority:0;}

    public static void setState(GameObject go,InteractionState state){
        InteractableData d=getOrCreate(go);if(d==null||state==null)return;
        switch(state){
            case Enabled:d.enabled=true;break;
            case Disabled:d.enabled=false;break;
            case Focused:d.isFocused=true;break;
            case Idle:d.isFocused=false;break;
            case Interacting:case Busy:d.isBusy=true;break;
            case Locked:d.isLocked=true;break;
            case Unlocked:d.isLocked=false;break;
            case Open:d.isOpen=true;d.openAmount=1f;break;
            case Closed:d.isOpen=false;d.openAmount=0f;break;
            case Held:d.isHeld=true;break;
            case Dropped:d.isHeld=false;d.heldBy=null;break;
            case On:d.hasOnOffState=true;d.isOn=true;break;
            case Off:d.hasOnOffState=true;d.isOn=false;break;
            case Powered:d.isPowered=true;break;
            case Unpowered:d.isPowered=false;break;
            default:break;
        }
    }

    public static InteractionState getState(GameObject go){
        InteractableData d=get(go);
        if(d==null||!d.enabled)return InteractionState.Disabled;
        if(d.isHeld)return InteractionState.Held;
        if(d.isLocked)return InteractionState.Locked;
        if(d.isBusy)return InteractionState.Busy;
        if(d.isOpen)return InteractionState.Open;
        if(d.isFocused)return InteractionState.Focused;
        if(!d.isPowered)return InteractionState.Unpowered;
        if(d.hasOnOffState)return d.isOn?InteractionState.On:InteractionState.Off;
        return InteractionState.Idle;
    }

    public static void setAttribute(GameObject go,String key,Object value){if(key==null)return;InteractableData d=getOrCreate(go);if(d!=null){if(value==null)d.attributes.remove(key);else d.attributes.put(key,value);}}
    public static Object getAttribute(GameObject go,String key){if(key==null)return null;InteractableData d=get(go);return d!=null?d.attributes.get(key):null;}
    public static int getActiveInteractablesCount(){synchronized(ACTIVE_INTERACTABLES){return ACTIVE_INTERACTABLES.size();}}
    public static GameObject getActiveInteractableAt(int index){synchronized(ACTIVE_INTERACTABLES){return index>=0&&index<ACTIVE_INTERACTABLES.size()?ACTIVE_INTERACTABLES.get(index):null;}}
    public static void clear(){REGISTRY.clear();synchronized(ACTIVE_INTERACTABLES){ACTIVE_INTERACTABLES.clear();}}
    private static float clamp01(float value){return Math.max(0f,Math.min(1f,value));}
}

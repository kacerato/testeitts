package com.ardor3d.input;

import b3.s;
import com.google.common.collect.Q1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class ControllerState {
    public static final ControllerState NOTHING = new ControllerState();
    private final Map<String, Map<String, Float>> controllerStates = new LinkedHashMap();
    private final List<ControllerEvent> eventsSinceLastState = new ArrayList();

    private void duplicateStates(Map<String, Map<String, Float>> map) {
        map.clear();
        for (Map.Entry<String, Map<String, Float>> entry : this.controllerStates.entrySet()) {
            map.put(entry.getKey(), Q1.d0(entry.getValue()));
        }
    }

    public void addEvent(ControllerEvent controllerEvent) {
        this.eventsSinceLastState.add(controllerEvent);
        set(controllerEvent.getControllerName(), controllerEvent.getComponentName(), controllerEvent.getValue());
    }

    public void clearEvents() {
        this.eventsSinceLastState.clear();
    }

    public boolean equals(Object obj) {
        if (obj instanceof ControllerState) {
            return ((ControllerState) obj).controllerStates.equals(this.controllerStates);
        }
        return false;
    }

    public List<String> getControllerComponentNames(String str) {
        return new ArrayList(this.controllerStates.get(str).o());
    }

    public List<String> getControllerNames() {
        return new ArrayList(this.controllerStates.o());
    }

    public List<ControllerEvent> getEvents() {
        Collections.sort(this.eventsSinceLastState, new Comparator<ControllerEvent>() {
            @Override
            public int compare(ControllerEvent controllerEvent, ControllerEvent controllerEvent2) {
                return (int) (controllerEvent2.getNanos() - controllerEvent.getNanos());
            }
        });
        return Collections.unmodifiableList(this.eventsSinceLastState);
    }

    public void set(String str, String str2, float f10) {
        Map<String, Float> map;
        if (this.controllerStates.containsKey(str)) {
            map = this.controllerStates.get(str);
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            this.controllerStates.put(str, linkedHashMap);
            map = linkedHashMap;
        }
        map.put(str2, Float.valueOf(f10));
    }

    public ControllerState snapshot() {
        ControllerState controllerState = new ControllerState();
        duplicateStates(controllerState.controllerStates);
        controllerState.eventsSinceLastState.addAll(this.eventsSinceLastState);
        return controllerState;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ControllerState: ");
        for (String str : this.controllerStates.o()) {
            Map<String, Float> map = this.controllerStates.get(str);
            sb2.append("[");
            sb2.append(str);
            for (String str2 : map.o()) {
                sb2.append("[");
                sb2.append(str2);
                sb2.append(s.f32937c);
                sb2.append((Object) map.get(str2));
                sb2.append("]");
            }
            sb2.append("]");
        }
        return sb2.toString();
    }
}

package com.ardor3d.input.logical;

import com.ardor3d.annotation.MainThread;
import com.ardor3d.framework.Canvas;
import com.ardor3d.input.InputState;
import com.ardor3d.input.PhysicalLayer;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public final class LogicalLayer {
    private final Set<InputSource> _inputs = new CopyOnWriteArraySet();
    private final Set<InputTrigger> _triggers = new CopyOnWriteArraySet();
    private LogicalTriggersApplier _applier = new BasicTriggersApplier();

    public static class InputSource {
        private InputState lastState = InputState.EMPTY;
        private final PhysicalLayer physicalLayer;
        private final Canvas source;

        public InputSource(Canvas canvas, PhysicalLayer physicalLayer) {
            this.source = canvas;
            this.physicalLayer = physicalLayer;
        }
    }

    @MainThread
    public synchronized void checkTriggers(double d10) {
        try {
            for (InputSource inputSource : this._inputs) {
                inputSource.physicalLayer.readState();
                List<InputState> drainAvailableStates = inputSource.physicalLayer.drainAvailableStates();
                if (drainAvailableStates.isEmpty()) {
                    this._applier.checkAndPerformTriggers(this._triggers, inputSource.source, new TwoInputStates(inputSource.lastState, inputSource.lastState), d10);
                } else {
                    double size = drainAvailableStates.size() > 1 ? d10 / drainAvailableStates.size() : d10;
                    for (InputState inputState : drainAvailableStates) {
                        if (inputState != InputState.LOST_FOCUS) {
                            this._applier.checkAndPerformTriggers(this._triggers, inputSource.source, new TwoInputStates(inputSource.lastState, inputState), size);
                        }
                        inputSource.lastState = inputState;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void deregisterTrigger(InputTrigger inputTrigger) {
        this._triggers.remove(inputTrigger);
    }

    public InputTrigger findTriggerById(String str) {
        for (InputTrigger inputTrigger : this._triggers) {
            if (str.equals(inputTrigger.getId())) {
                return inputTrigger;
            }
        }
        return null;
    }

    public LogicalTriggersApplier getApplier() {
        return this._applier;
    }

    public Set<InputTrigger> getTriggers() {
        return this._triggers;
    }

    public void registerInput(Canvas canvas, PhysicalLayer physicalLayer) {
        this._inputs.add(new InputSource(canvas, physicalLayer));
    }

    public void registerTrigger(InputTrigger inputTrigger) {
        this._triggers.add(inputTrigger);
    }

    public void setApplier(LogicalTriggersApplier logicalTriggersApplier) {
        this._applier = logicalTriggersApplier;
    }
}

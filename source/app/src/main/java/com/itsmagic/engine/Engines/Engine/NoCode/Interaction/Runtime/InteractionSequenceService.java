package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

/** Estado reutilizavel para puzzles de sequencia sem referencias rigidas entre botoes. */
public final class InteractionSequenceService {

    public static class StepResult {
        public boolean correct;
        public boolean completed;
        public int nextIndex;
        public String expectedNext;
    }

    private InteractionSequenceService() {}

    public static StepResult submit(GameObject sequenceOwner, String expectedSequence, String value, boolean resetOnWrong) {
        StepResult result = new StepResult();
        if (!C13317e.J(sequenceOwner) || expectedSequence == null || value == null) return result;

        String[] expected = expectedSequence.trim().split("\\s*(?:>|,|;)\\s*");
        Object idxObj = InteractionRegistry.getAttribute(sequenceOwner, "sequence_index");
        int index = idxObj instanceof Number ? ((Number) idxObj).intValue() : 0;
        if (index < 0 || index >= expected.length) index = 0;

        result.correct = expected.length > 0 && expected[index].equalsIgnoreCase(value.trim());
        if (result.correct) {
            index++;
            result.completed = index >= expected.length;
            if (result.completed) index = 0;
        } else if (resetOnWrong) {
            index = 0;
        }

        InteractionRegistry.setAttribute(sequenceOwner, "sequence_index", Integer.valueOf(index));
        result.nextIndex = index;
        result.expectedNext = expected.length > 0 && index < expected.length ? expected[index] : null;

        if (result.completed) InteractionDispatcher.dispatchCustomEvent("sequence_completed", sequenceOwner, value);
        else if (result.correct) InteractionDispatcher.dispatchCustomEvent("sequence_correct_step", sequenceOwner, Integer.valueOf(index));
        else InteractionDispatcher.dispatchCustomEvent("sequence_wrong_step", sequenceOwner, value);

        return result;
    }

    public static void reset(GameObject sequenceOwner) {
        if (!C13317e.J(sequenceOwner)) return;
        InteractionRegistry.setAttribute(sequenceOwner, "sequence_index", Integer.valueOf(0));
        InteractionDispatcher.dispatchCustomEvent("sequence_reset", sequenceOwner, null);
    }
}

package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

/**
 * Gerenciador de histerese para evitar flickering / oscilacao rapida entre alvos proximos.
 */
public class InteractionHysteresis {

    private GameObject currentTarget;
    private float switchThreshold = 15.0f; // Pontos extras que novo alvo precisa superar

    public InteractionHysteresis() {}

    public InteractionHysteresis(float switchThreshold) {
        this.switchThreshold = switchThreshold;
    }

    public GameObject getCurrentTarget() {
        if (!C13317e.J(currentTarget)) {
            currentTarget = null;
        }
        return currentTarget;
    }

    public void setCurrentTarget(GameObject target) {
        this.currentTarget = target;
    }

    public boolean shouldSwitchTarget(InteractionCandidate bestCandidate, float currentTargetScore) {
        if (bestCandidate == null || bestCandidate.target == null) {
            return currentTarget != null;
        }

        // Se nao havia alvo anterior, aceita o melhor candidato
        if (!C13317e.J(currentTarget)) {
            return true;
        }

        // Se o melhor candidato ja e o atual, mantem
        if (bestCandidate.target == currentTarget) {
            return false;
        }

        // Troca somente se o novo alvo superar o atual somado ao limiar de histerese
        return bestCandidate.score > (currentTargetScore + switchThreshold);
    }

    public void reset() {
        this.currentTarget = null;
    }

    public float getSwitchThreshold() {
        return switchThreshold;
    }

    public void setSwitchThreshold(float switchThreshold) {
        this.switchThreshold = switchThreshold;
    }
}

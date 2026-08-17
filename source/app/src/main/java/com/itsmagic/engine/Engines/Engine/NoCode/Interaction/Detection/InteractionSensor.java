package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.util.List;

/**
 * Interface base para sensores de interacao.
 */
public interface InteractionSensor {
    /**
     * Coleta candidatos a interacao a partir de uma origem (interactor / camera).
     */
    void collectCandidates(GameObject interactor, List<InteractionCandidate> outCandidates);

    /**
     * Define o alcance maximo do sensor.
     */
    void setMaxDistance(float distance);

    float getMaxDistance();
}

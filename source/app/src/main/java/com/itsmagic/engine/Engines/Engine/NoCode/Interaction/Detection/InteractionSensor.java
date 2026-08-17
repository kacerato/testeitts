package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import java.util.List;

/**
 * Interface base para sensores de interacao.
 */
public interface InteractionSensor {
    /**
     * Coleta candidatos a interacao a partir de um interactor e camera de mira.
     */
    void collectCandidates(GameObject interactor, Transform cameraTransform, List<InteractionCandidate> outCandidates);

    /**
     * Define o alcance maximo do sensor.
     */
    void setMaxDistance(float distance);

    float getMaxDistance();
}

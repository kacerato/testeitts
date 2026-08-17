package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;

/**
 * Calculador de pontuacao (scoring) para selecao do melhor alvo de interacao.
 * Equilibra prioridade, alinhamento ao centro da tela (mira) e proximidade.
 */
public class InteractionScorer {

    public float priorityWeight = 100.0f;
    public float centerWeight = 50.0f;
    public float distanceWeight = 30.0f;
    public float stickyBonus = 25.0f;

    public float calculateScore(InteractionCandidate candidate, float maxDistance, float maxAngleDeg, boolean isCurrentTarget) {
        if (candidate == null) return 0f;

        float normDist = maxDistance > 0f ? Math.min(1.0f, candidate.distance / maxDistance) : 1.0f;
        float distScore = (1.0f - normDist) * distanceWeight;

        float normAngle = maxAngleDeg > 0f ? Math.min(1.0f, candidate.angle / maxAngleDeg) : 1.0f;
        float angleScore = (1.0f - normAngle) * centerWeight;

        float prioScore = candidate.priority * priorityWeight;

        float bonus = isCurrentTarget ? stickyBonus : 0f;

        float total = prioScore + angleScore + distScore + bonus;
        candidate.score = Math.max(0f, total);
        return candidate.score;
    }
}

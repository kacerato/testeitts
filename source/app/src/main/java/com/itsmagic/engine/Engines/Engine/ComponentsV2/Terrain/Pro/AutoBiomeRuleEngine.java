package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Procedural Auto-Biome Rule Engine.
 * Evaluates slope, altitude, curvature, and fractal noise to compute multi-layer splat weights.
 */
public class AutoBiomeRuleEngine implements Serializable {

    public static class BiomeLayerRule implements Serializable {
        public int layerIndex = 0;
        public String layerName = "Layer";
        public float minAltitude = -1000.0f;
        public float maxAltitude = 1000.0f;
        public float altitudeFade = 10.0f;
        public float minSlopeDeg = 0.0f;
        public float maxSlopeDeg = 90.0f;
        public float slopeFadeDeg = 5.0f;
        public float noiseScale = 0.05f;
        public float noiseInfluence = 0.2f;
        public boolean useTriplanar = false;

        public BiomeLayerRule() {
        }

        public BiomeLayerRule(int layerIndex, String layerName, float minAlt, float maxAlt, float minSlope, float maxSlope) {
            this.layerIndex = layerIndex;
            this.layerName = layerName;
            this.minAltitude = minAlt;
            this.maxAltitude = maxAlt;
            this.minSlopeDeg = minSlope;
            this.maxSlopeDeg = maxSlope;
        }
    }

    private final List<BiomeLayerRule> rules = new ArrayList<>();

    public AutoBiomeRuleEngine() {
        initDefaultRules();
    }

    private void initDefaultRules() {
        // 0: Sand / Beach (Low altitude, gentle slope)
        rules.add(new BiomeLayerRule(0, "Sand", -50.0f, 15.0f, 0.0f, 25.0f));
        // 1: Grass (Mid altitude, flat to moderate slope)
        rules.add(new BiomeLayerRule(1, "Grass", 12.0f, 180.0f, 0.0f, 35.0f));
        // 2: Rock / Cliff (Steep slopes across all altitudes, uses triplanar)
        BiomeLayerRule rock = new BiomeLayerRule(2, "Rock_Cliff", -50.0f, 500.0f, 32.0f, 90.0f);
        rock.useTriplanar = true;
        rules.add(rock);
        // 3: Snow (High altitude mountain peaks)
        rules.add(new BiomeLayerRule(3, "Snow", 170.0f, 1000.0f, 0.0f, 45.0f));
    }

    public List<BiomeLayerRule> getRules() {
        return rules;
    }

    public void addRule(BiomeLayerRule rule) {
        rules.add(rule);
    }

    /**
     * Evaluates the splat weight for all layers at a specific point on the terrain.
     * @param altitude Height at (x, z)
     * @param slopeDegrees Slope in degrees [0.0 = flat, 90.0 = vertical wall]
     * @param noiseValue Procedural noise sample [-1.0, 1.0]
     * @return Normalized array of layer weights
     */
    public float[] evaluateWeights(float altitude, float slopeDegrees, float noiseValue) {
        float[] weights = new float[rules.size()];
        float totalWeight = 0.0f;

        for (int i = 0; i < rules.size(); i++) {
            BiomeLayerRule r = rules.get(i);

            // Altitude weight with soft fade boundaries
            float altWeight = calculateRangeWeight(altitude, r.minAltitude, r.maxAltitude, r.altitudeFade);

            // Slope weight with soft fade boundaries
            float slopeWeight = calculateRangeWeight(slopeDegrees, r.minSlopeDeg, r.maxSlopeDeg, r.slopeFadeDeg);

            // Noise modulation
            float noiseMod = 1.0f + (noiseValue * r.noiseInfluence);
            float layerWeight = altWeight * slopeWeight * Math.max(0.0f, noiseMod);

            weights[i] = layerWeight;
            totalWeight += layerWeight;
        }

        // Normalize weights so the sum equals 1.0
        if (totalWeight > 0.0001f) {
            for (int i = 0; i < weights.length; i++) {
                weights[i] /= totalWeight;
            }
        } else if (weights.length > 0) {
            weights[0] = 1.0f; // Default fallback layer
        }

        return weights;
    }

    private float calculateRangeWeight(float val, float min, float max, float fade) {
        if (fade <= 0.001f) {
            return (val >= min && val <= max) ? 1.0f : 0.0f;
        }
        if (val < min - fade || val > max + fade) {
            return 0.0f;
        }
        if (val >= min && val <= max) {
            return 1.0f;
        }
        if (val < min) {
            return (val - (min - fade)) / fade;
        }
        return ((max + fade) - val) / fade;
    }
}

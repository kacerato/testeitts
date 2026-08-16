package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Foliage & Detail Scatter System for Terrain.
 * Manages GPU instance scattering of 3D trees, bushes, and wind-animated grass quads.
 */
public class FoliageScatterSystem implements Serializable {

    public static class FoliagePrototype implements Serializable {
        public String name = "Tree";
        public String modelPath = "";
        public boolean isGrass = false;
        public float minScale = 0.8f;
        public float maxScale = 1.2f;
        public float minSlope = 0.0f;
        public float maxSlope = 30.0f;
        public float minAltitude = 0.0f;
        public float maxAltitude = 300.0f;
        public float densityPer100m = 25.0f;
        public float maxCullDistance = 150.0f;
        public float billboardDistance = 60.0f;
        public boolean alignToNormal = false;
        public boolean generateCollisionCapsule = true;

        public FoliagePrototype() {
        }

        public FoliagePrototype(String name, String modelPath, boolean isGrass) {
            this.name = name;
            this.modelPath = modelPath;
            this.isGrass = isGrass;
        }
    }

    public static class FoliageInstance implements Serializable {
        public float posX, posY, posZ;
        public float rotY;
        public float scale;
        public int prototypeIndex;

        public FoliageInstance(float x, float y, float z, float rotY, float scale, int protoIdx) {
            this.posX = x;
            this.posY = y;
            this.posZ = z;
            this.rotY = rotY;
            this.scale = scale;
            this.prototypeIndex = protoIdx;
        }
    }

    private final List<FoliagePrototype> prototypes = new ArrayList<>();
    private final List<FoliageInstance> instances = new ArrayList<>();
    private float windSpeed = 1.0f;
    private float windStrength = 0.3f;
    private final Random random = new Random();

    public FoliageScatterSystem() {
        initDefaultPrototypes();
    }

    private void initDefaultPrototypes() {
        prototypes.add(new FoliagePrototype("Pine Tree", "Models/pine_tree.obj", false));
        prototypes.add(new FoliagePrototype("Oak Tree", "Models/oak_tree.obj", false));
        FoliagePrototype grass = new FoliagePrototype("Field Grass", "Textures/grass_quad.png", true);
        grass.densityPer100m = 200.0f;
        grass.maxCullDistance = 60.0f;
        prototypes.add(grass);
    }

    public List<FoliagePrototype> getPrototypes() {
        return prototypes;
    }

    public void addPrototype(FoliagePrototype proto) {
        prototypes.add(proto);
    }

    public List<FoliageInstance> getInstances() {
        return instances;
    }

    /**
     * Paints foliage instances within a brush circle.
     */
    public void paintFoliage(int protoIndex, float centerX, float centerZ, float radius, float densityFactor, HeightSampler sampler) {
        if (protoIndex < 0 || protoIndex >= prototypes.size() || sampler == null) return;

        FoliagePrototype proto = prototypes.get(protoIndex);
        int countToSpawn = Math.max(1, (int) (proto.densityPer100m * (radius / 50.0f) * densityFactor));

        for (int i = 0; i < countToSpawn; i++) {
            float angle = random.nextFloat() * (float) (Math.PI * 2);
            float dist = (float) Math.sqrt(random.nextFloat()) * radius;

            float x = centerX + (float) Math.cos(angle) * dist;
            float z = centerZ + (float) Math.sin(angle) * dist;

            float y = sampler.getHeightAt(x, z);
            float slope = sampler.getSlopeAt(x, z);

            if (y >= proto.minAltitude && y <= proto.maxAltitude && slope >= proto.minSlope && slope <= proto.maxSlope) {
                float scale = proto.minScale + random.nextFloat() * (proto.maxScale - proto.minScale);
                float rotY = random.nextFloat() * 360.0f;

                instances.add(new FoliageInstance(x, y, z, rotY, scale, protoIndex));
            }
        }
    }

    /**
     * Erases foliage instances within a brush circle.
     */
    public void eraseFoliage(float centerX, float centerZ, float radius) {
        float rSq = radius * radius;
        instances.removeIf(inst -> {
            float dx = inst.posX - centerX;
            float dz = inst.posZ - centerZ;
            return (dx * dx + dz * dz) <= rSq;
        });
    }

    public void clearAll() {
        instances.clear();
    }

    public float getWindSpeed() {
        return windSpeed;
    }

    public void setWindSpeed(float windSpeed) {
        this.windSpeed = windSpeed;
    }

    public float getWindStrength() {
        return windStrength;
    }

    public void setWindStrength(float windStrength) {
        this.windStrength = windStrength;
    }

    public interface HeightSampler {
        float getHeightAt(float x, float z);
        float getSlopeAt(float x, float z);
    }
}

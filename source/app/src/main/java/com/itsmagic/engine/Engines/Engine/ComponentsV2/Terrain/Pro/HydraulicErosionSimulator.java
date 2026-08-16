package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro;

import java.util.Random;

/**
 * Real-Time Physics-Based Hydraulic & Thermal Erosion Simulator.
 * Simulates raindrop particles, sediment transport, channel carving, and rock crumbling.
 */
public class HydraulicErosionSimulator {

    private int maxDropletLifetime = 30;
    private float inertia = 0.05f;
    private float sedimentCapacityFactor = 4.0f;
    private float minSedimentCapacity = 0.01f;
    private float depositSpeed = 0.3f;
    private float erodeSpeed = 0.3f;
    private float evaporateSpeed = 0.01f;
    private float gravity = 4.0f;
    private float talusAngleThreshold = 0.7f; // Thermal erosion angle (~35-40 deg)
    private float thermalErosionRate = 0.15f;

    private final Random random = new Random();

    public HydraulicErosionSimulator() {
    }

    /**
     * Executes a batch of hydraulic erosion droplet iterations over the heightmap.
     * @param heightmap 1D float array of size [mapWidth * mapHeight]
     * @param mapWidth Grid width in vertices
     * @param mapHeight Grid height in vertices
     * @param iterations Number of raindrop particles to simulate (e.g. 5,000 to 50,000)
     */
    public void simulateHydraulic(float[] heightmap, int mapWidth, int mapHeight, int iterations) {
        if (heightmap == null || mapWidth < 2 || mapHeight < 2) return;

        for (int i = 0; i < iterations; i++) {
            float posX = random.nextFloat() * (mapWidth - 2) + 1;
            float posY = random.nextFloat() * (mapHeight - 2) + 1;
            float dirX = 0;
            float dirY = 0;
            float speed = 1.0f;
            float water = 1.0f;
            float sediment = 0.0f;

            for (int lifetime = 0; lifetime < maxDropletLifetime; lifetime++) {
                int nodeX = (int) posX;
                int nodeY = (int) posY;
                float cellOffsetX = posX - nodeX;
                float cellOffsetY = posY - nodeY;

                // Calculate height and gradient at current position via bilinear interpolation
                float height = calculateHeight(heightmap, mapWidth, mapHeight, posX, posY);
                float gradX = (calculateHeight(heightmap, mapWidth, mapHeight, nodeX + 1, nodeY) - calculateHeight(heightmap, mapWidth, mapHeight, nodeX, nodeY)) * (1 - cellOffsetY)
                            + (calculateHeight(heightmap, mapWidth, mapHeight, nodeX + 1, nodeY + 1) - calculateHeight(heightmap, mapWidth, mapHeight, nodeX, nodeY + 1)) * cellOffsetY;
                float gradY = (calculateHeight(heightmap, mapWidth, mapHeight, nodeX, nodeY + 1) - calculateHeight(heightmap, mapWidth, mapHeight, nodeX, nodeY)) * (1 - cellOffsetX)
                            + (calculateHeight(heightmap, mapWidth, mapHeight, nodeX + 1, nodeY + 1) - calculateHeight(heightmap, mapWidth, mapHeight, nodeX + 1, nodeY)) * cellOffsetX;

                // Update droplet direction with inertia
                dirX = (dirX * inertia - gradX * (1 - inertia));
                dirY = (dirY * inertia - gradY * (1 - inertia));

                // Normalize direction
                float len = (float) Math.sqrt(dirX * dirX + dirY * dirY);
                if (len != 0) {
                    dirX /= len;
                    dirY /= len;
                }

                posX += dirX;
                posY += dirY;

                // Stop if droplet leaves bounds
                if ((dirX == 0 && dirY == 0) || posX < 0 || posX >= mapWidth - 1 || posY < 0 || posY >= mapHeight - 1) {
                    break;
                }

                // Compute new height after step
                float newHeight = calculateHeight(heightmap, mapWidth, mapHeight, posX, posY);
                float deltaHeight = newHeight - height;

                // Calculate sediment capacity (higher on steep slopes and fast flow)
                float sedimentCapacity = Math.max(-deltaHeight * speed * water * sedimentCapacityFactor, minSedimentCapacity);

                if (sediment > sedimentCapacity || deltaHeight > 0) {
                    // Deposit sediment
                    float amountToDeposit = (deltaHeight > 0) ? Math.min(deltaHeight, sediment) : (sediment - sedimentCapacity) * depositSpeed;
                    sediment -= amountToDeposit;

                    deposit(heightmap, mapWidth, nodeX, nodeY, cellOffsetX, cellOffsetY, amountToDeposit);
                } else {
                    // Erode terrain
                    float amountToErode = Math.min((sedimentCapacity - sediment) * erodeSpeed, -deltaHeight);
                    erode(heightmap, mapWidth, nodeX, nodeY, cellOffsetX, cellOffsetY, amountToErode);
                    sediment += amountToErode;
                }

                speed = (float) Math.sqrt(Math.max(0.0f, speed * speed + deltaHeight * gravity));
                water *= (1 - evaporateSpeed);
            }
        }
    }

    /**
     * Simulates thermal erosion (rock crumbling / talus degradation on steep slopes).
     */
    public void simulateThermal(float[] heightmap, int mapWidth, int mapHeight, int passes) {
        if (heightmap == null || mapWidth < 2 || mapHeight < 2) return;

        for (int p = 0; p < passes; p++) {
            for (int y = 1; y < mapHeight - 1; y++) {
                for (int x = 1; x < mapWidth - 1; x++) {
                    int idx = y * mapWidth + x;
                    float h = heightmap[idx];

                    // Check 4 neighbors
                    int[] neighbors = {idx + 1, idx - 1, idx + mapWidth, idx - mapWidth};
                    for (int nIdx : neighbors) {
                        float diff = h - heightmap[nIdx];
                        if (diff > talusAngleThreshold) {
                            float transfer = (diff - talusAngleThreshold) * thermalErosionRate;
                            heightmap[idx] -= transfer;
                            heightmap[nIdx] += transfer;
                        }
                    }
                }
            }
        }
    }

    private float calculateHeight(float[] map, int w, int h, float x, float y) {
        int x0 = (int) Math.max(0, Math.min(w - 2, x));
        int y0 = (int) Math.max(0, Math.min(h - 2, y));
        float fx = x - x0;
        float fy = y - y0;

        float h00 = map[y0 * w + x0];
        float h10 = map[y0 * w + (x0 + 1)];
        float h01 = map[(y0 + 1) * w + x0];
        float h11 = map[(y0 + 1) * w + (x0 + 1)];

        return (h00 * (1 - fx) + h10 * fx) * (1 - fy) + (h01 * (1 - fx) + h11 * fx) * fy;
    }

    private void deposit(float[] map, int w, int x, int y, float fx, float fy, float amount) {
        map[y * w + x] += amount * (1 - fx) * (1 - fy);
        map[y * w + (x + 1)] += amount * fx * (1 - fy);
        map[(y + 1) * w + x] += amount * (1 - fx) * fy;
        map[(y + 1) * w + (x + 1)] += amount * fx * fy;
    }

    private void erode(float[] map, int w, int x, int y, float fx, float fy, float amount) {
        map[y * w + x] -= amount * (1 - fx) * (1 - fy);
        map[y * w + (x + 1)] -= amount * fx * (1 - fy);
        map[(y + 1) * w + x] -= amount * (1 - fx) * fy;
        map[(y + 1) * w + (x + 1)] -= amount * fx * fy;
    }

    public void setErodeSpeed(float erodeSpeed) {
        this.erodeSpeed = erodeSpeed;
    }

    public void setDepositSpeed(float depositSpeed) {
        this.depositSpeed = depositSpeed;
    }

    public void setTalusAngleThreshold(float talusAngleThreshold) {
        this.talusAngleThreshold = talusAngleThreshold;
    }
}

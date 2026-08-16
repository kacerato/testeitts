package com.jme3.terrain.geomipmap;

public interface NeighbourFinder {
    TerrainQuad getDownQuad(TerrainQuad terrainQuad);

    TerrainQuad getLeftQuad(TerrainQuad terrainQuad);

    TerrainQuad getRightQuad(TerrainQuad terrainQuad);

    TerrainQuad getTopQuad(TerrainQuad terrainQuad);
}

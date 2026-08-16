package f4;

public enum c {
    Cliff("Cliff"),
    Slope("Slope"),
    HeightBand("Height Band"),
    Curvature("Curvature"),
    Erosion("Erosion"),
    WaterFlow("Water Flow"),
    Terrace("Terrace"),
    NoiseBlend("Noise Blend"),
    Dunes("Dunes"),
    Ridge("Ridge"),
    Biome("Biome");

    private final String displayName;

    c(String displayName) {
        this.displayName = displayName;
    }

    public String b() {
        return this.displayName;
    }
}

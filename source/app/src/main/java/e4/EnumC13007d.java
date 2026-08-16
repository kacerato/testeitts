package e4;

public enum EnumC13007d {
    Mountain("Mountain"),
    Erosion("Erosion"),
    Ravine("Ravine"),
    WaterErosion("Water Erosion"),
    Plain("Plain"),
    Dunes("Dunes"),
    Rocky("Rocky"),
    NaturalSmooth("Natural Smooth"),
    Valley("Valley"),
    Terrace("Terrace"),
    Noise("Noise");

    private final String displayName;

    EnumC13007d(String displayName) {
        this.displayName = displayName;
    }

    public String b() {
        return this.displayName;
    }
}

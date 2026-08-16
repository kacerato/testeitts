package nn;

public class m {

    public final float f98370a;

    public final float f98371b;

    public final float f98372c;

    public final float f98373d;

    public final float f98374e;

    public final float f98375f;

    public final float f98376g;

    public final float f98377h;

    public final float f98378i;

    public final float f98379j;

    public final float f98380k;

    public m(float cellSize, float cellHeight, float agentRadius, float agentHeight, float agentClimb, float groundTolerance, float startDistance, float endDistance, float minHeight, float maxHeight, float jumpHeight) {
        this.f98370a = cellSize;
        this.f98371b = cellHeight;
        this.f98373d = agentRadius;
        this.f98372c = agentClimb;
        this.f98374e = groundTolerance;
        this.f98375f = agentHeight;
        this.f98376g = startDistance;
        this.f98377h = endDistance;
        this.f98379j = minHeight;
        this.f98380k = maxHeight - minHeight;
        this.f98378i = jumpHeight;
    }
}

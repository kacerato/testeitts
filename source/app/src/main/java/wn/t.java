package wn;

import wn.u;

public class t {

    public final float f127784A;

    public final float f127785B;

    public final float f127786C;

    public final u.a f127787a;

    public final boolean f127788b;

    public final int f127789c;

    public final int f127790d;

    public final float f127791e;

    public final float f127792f;

    public final float f127793g;

    public final int f127794h;

    public final int f127795i;

    public final int f127796j;

    public final int f127797k;

    public final float f127798l;

    public final int f127799m;

    public final int f127800n;

    public final int f127801o;

    public final float f127802p;

    public final float f127803q;

    public final C16023a f127804r;

    public final boolean f127805s;

    public final boolean f127806t;

    public final boolean f127807u;

    public final boolean f127808v;

    public final int f127809w;

    public final float f127810x;

    public final float f127811y;

    public final float f127812z;

    public t(u.a partitionType, float cellSize, float cellHeight, float agentHeight, float agentRadius, float agentMaxClimb, float agentMaxSlope, int regionMinSize, int regionMergeSize, float edgeMaxLen, float edgeMaxError, int vertsPerPoly, float detailSampleDist, float detailSampleMaxError, C16023a walkableAreaMod) {
        this(partitionType, cellSize, cellHeight, agentMaxSlope, true, true, true, agentHeight, agentRadius, agentMaxClimb, regionMinSize, regionMergeSize, edgeMaxLen, edgeMaxError, vertsPerPoly, detailSampleDist, detailSampleMaxError, walkableAreaMod, true);
    }

    public static int a(float agentRadius, float cs) {
        return ((int) Math.ceil(agentRadius / cs)) + 3;
    }

    public t(u.a partitionType, float cellSize, float cellHeight, float agentMaxSlope, boolean filterLowHangingObstacles, boolean filterLedgeSpans, boolean filterWalkableLowHeightSpans, float agentHeight, float agentRadius, float agentMaxClimb, int regionMinSize, int regionMergeSize, float edgeMaxLen, float edgeMaxError, int vertsPerPoly, float detailSampleDist, float detailSampleMaxError, C16023a walkableAreaMod, boolean buildMeshDetail) {
        this(false, 0, 0, 0, partitionType, cellSize, cellHeight, agentMaxSlope, filterLowHangingObstacles, filterLedgeSpans, filterWalkableLowHeightSpans, agentHeight, agentRadius, agentMaxClimb, regionMinSize * regionMinSize * cellSize * cellSize, regionMergeSize * regionMergeSize * cellSize * cellSize, edgeMaxLen, edgeMaxError, vertsPerPoly, buildMeshDetail, detailSampleDist, detailSampleMaxError, walkableAreaMod);
    }

    public t(boolean useTiles, int tileSizeX, int tileSizeZ, int borderSize, u.a partitionType, float cellSize, float cellHeight, float agentMaxSlope, boolean filterLowHangingObstacles, boolean filterLedgeSpans, boolean filterWalkableLowHeightSpans, float agentHeight, float agentRadius, float agentMaxClimb, float minRegionArea, float mergeRegionArea, float edgeMaxLen, float edgeMaxError, int vertsPerPoly, boolean buildMeshDetail, float detailSampleDist, float detailSampleMaxError, C16023a walkableAreaMod) {
        this.f127788b = useTiles;
        this.f127789c = tileSizeX;
        this.f127790d = tileSizeZ;
        this.f127809w = borderSize;
        this.f127787a = partitionType;
        this.f127791e = cellSize;
        this.f127792f = cellHeight;
        this.f127793g = agentMaxSlope;
        this.f127794h = (int) Math.ceil(agentHeight / cellHeight);
        this.f127812z = agentHeight;
        this.f127795i = (int) Math.floor(agentMaxClimb / cellHeight);
        this.f127784A = agentMaxClimb;
        this.f127796j = (int) Math.ceil(agentRadius / cellSize);
        this.f127785B = agentRadius;
        this.f127799m = Math.round(minRegionArea / (cellSize * cellSize));
        this.f127810x = minRegionArea;
        this.f127800n = Math.round(mergeRegionArea / (cellSize * cellSize));
        this.f127811y = mergeRegionArea;
        this.f127797k = (int) (edgeMaxLen / cellSize);
        this.f127786C = edgeMaxLen;
        this.f127798l = edgeMaxError;
        this.f127801o = vertsPerPoly;
        this.f127802p = detailSampleDist < 0.9f ? 0.0f : cellSize * detailSampleDist;
        this.f127803q = cellHeight * detailSampleMaxError;
        this.f127804r = walkableAreaMod;
        this.f127805s = filterLowHangingObstacles;
        this.f127806t = filterLedgeSpans;
        this.f127807u = filterWalkableLowHeightSpans;
        this.f127808v = buildMeshDetail;
    }
}

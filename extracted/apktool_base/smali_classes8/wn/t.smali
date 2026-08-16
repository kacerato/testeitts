.class public Lwn/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:F

.field public final B:F

.field public final C:F

.field public final a:Lwn/u$a;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:F

.field public final q:F

.field public final r:Lwn/a;

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:I

.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(Lwn/u$a;FFFFFFIIFFIFFLwn/a;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "partitionType",
            "cellSize",
            "cellHeight",
            "agentHeight",
            "agentRadius",
            "agentMaxClimb",
            "agentMaxSlope",
            "regionMinSize",
            "regionMergeSize",
            "edgeMaxLen",
            "edgeMaxError",
            "vertsPerPoly",
            "detailSampleDist",
            "detailSampleMaxError",
            "walkableAreaMod"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v4, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p15

    const/4 v7, 0x1

    const/16 v19, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1
    invoke-direct/range {v0 .. v19}, Lwn/t;-><init>(Lwn/u$a;FFFZZZFFFIIFFIFFLwn/a;Z)V

    return-void
.end method

.method public constructor <init>(Lwn/u$a;FFFZZZFFFIIFFIFFLwn/a;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "partitionType",
            "cellSize",
            "cellHeight",
            "agentMaxSlope",
            "filterLowHangingObstacles",
            "filterLedgeSpans",
            "filterWalkableLowHeightSpans",
            "agentHeight",
            "agentRadius",
            "agentMaxClimb",
            "regionMinSize",
            "regionMergeSize",
            "edgeMaxLen",
            "edgeMaxError",
            "vertsPerPoly",
            "detailSampleDist",
            "detailSampleMaxError",
            "walkableAreaMod",
            "buildMeshDetail"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v21, p16

    move/from16 v22, p17

    move-object/from16 v23, p18

    move/from16 v20, p19

    mul-int v1, p11, p11

    int-to-float v1, v1

    mul-float v1, v1, p2

    mul-float v15, v1, p2

    mul-int v1, p12, p12

    int-to-float v1, v1

    mul-float v1, v1, p2

    mul-float v16, v1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    invoke-direct/range {v0 .. v23}, Lwn/t;-><init>(ZIIILwn/u$a;FFFZZZFFFFFFFIZFFLwn/a;)V

    return-void
.end method

.method public constructor <init>(ZIIILwn/u$a;FFFZZZFFFFFFFIZFFLwn/a;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "useTiles",
            "tileSizeX",
            "tileSizeZ",
            "borderSize",
            "partitionType",
            "cellSize",
            "cellHeight",
            "agentMaxSlope",
            "filterLowHangingObstacles",
            "filterLedgeSpans",
            "filterWalkableLowHeightSpans",
            "agentHeight",
            "agentRadius",
            "agentMaxClimb",
            "minRegionArea",
            "mergeRegionArea",
            "edgeMaxLen",
            "edgeMaxError",
            "vertsPerPoly",
            "buildMeshDetail",
            "detailSampleDist",
            "detailSampleMaxError",
            "walkableAreaMod"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v9, p1

    .line 4
    iput-boolean v9, v0, Lwn/t;->b:Z

    move v9, p2

    .line 5
    iput v9, v0, Lwn/t;->c:I

    move v9, p3

    .line 6
    iput v9, v0, Lwn/t;->d:I

    move v9, p4

    .line 7
    iput v9, v0, Lwn/t;->w:I

    move-object/from16 v9, p5

    .line 8
    iput-object v9, v0, Lwn/t;->a:Lwn/u$a;

    .line 9
    iput v1, v0, Lwn/t;->e:F

    .line 10
    iput v2, v0, Lwn/t;->f:F

    move/from16 v9, p8

    .line 11
    iput v9, v0, Lwn/t;->g:F

    div-float v9, v3, v2

    float-to-double v9, v9

    .line 12
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    iput v9, v0, Lwn/t;->h:I

    .line 13
    iput v3, v0, Lwn/t;->z:F

    div-float v3, v5, v2

    float-to-double v9, v3

    .line 14
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v3, v9

    iput v3, v0, Lwn/t;->i:I

    .line 15
    iput v5, v0, Lwn/t;->A:F

    div-float v3, v4, v1

    float-to-double v9, v3

    .line 16
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    iput v3, v0, Lwn/t;->j:I

    .line 17
    iput v4, v0, Lwn/t;->B:F

    mul-float v3, v1, v1

    div-float v3, v6, v3

    .line 18
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Lwn/t;->m:I

    .line 19
    iput v6, v0, Lwn/t;->x:F

    mul-float v3, v1, v1

    div-float v3, v7, v3

    .line 20
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Lwn/t;->n:I

    .line 21
    iput v7, v0, Lwn/t;->y:F

    div-float v3, v8, v1

    float-to-int v3, v3

    .line 22
    iput v3, v0, Lwn/t;->k:I

    .line 23
    iput v8, v0, Lwn/t;->C:F

    move/from16 v3, p18

    .line 24
    iput v3, v0, Lwn/t;->l:F

    move/from16 v3, p19

    .line 25
    iput v3, v0, Lwn/t;->o:I

    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, p21, v3

    if-gez v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    mul-float v1, v1, p21

    .line 26
    :goto_0
    iput v1, v0, Lwn/t;->p:F

    mul-float v1, v2, p22

    .line 27
    iput v1, v0, Lwn/t;->q:F

    move-object/from16 v1, p23

    .line 28
    iput-object v1, v0, Lwn/t;->r:Lwn/a;

    move/from16 v1, p9

    .line 29
    iput-boolean v1, v0, Lwn/t;->s:Z

    move/from16 v1, p10

    .line 30
    iput-boolean v1, v0, Lwn/t;->t:Z

    move/from16 v1, p11

    .line 31
    iput-boolean v1, v0, Lwn/t;->u:Z

    move/from16 v1, p20

    .line 32
    iput-boolean v1, v0, Lwn/t;->v:Z

    return-void
.end method

.method public static a(FF)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agentRadius",
            "cs"
        }
    .end annotation

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x3

    return p0
.end method

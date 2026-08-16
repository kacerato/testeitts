.class public Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;,
        Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;,
        Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;,
        Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;,
        Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;,
        Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CELLS:I = 0x800

.field private static final GROUP_WITH_ANY:I = 0x4

.field private static final INTERNAL_RND_SORT_SEED:J = 0x26065caL

.field private static final MARK_DEGENERATE:I = 0x1

.field private static final ORIENT_PRESERVING:I = 0x8

.field private static final QUAD_ONE_DEGEN_TRI:I = 0x2

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DegenEpilogue([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[ILcom/jme3/util/mikktspace/MikkTSpaceContext;II)V
    .locals 15

    move-object/from16 v0, p3

    move/from16 v1, p4

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v7, p5

    if-ge v2, v7, :cond_5

    aget-object v8, p1, v2

    iget v8, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_0
    move v3, v5

    :goto_1
    if-ge v3, v4, :cond_4

    mul-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v3

    aget v8, p2, v8

    move v10, v5

    move v9, v6

    :goto_2
    if-eqz v9, :cond_2

    mul-int/lit8 v11, v1, 0x3

    if-ge v10, v11, :cond_2

    aget v11, p2, v10

    if-ne v8, v11, :cond_1

    move v9, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    if-nez v9, :cond_3

    div-int/lit8 v8, v10, 0x3

    rem-int/lit8 v10, v10, 0x3

    aget-object v8, p1, v8

    iget-object v9, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->vertNum:[B

    aget-byte v9, v9, v10

    iget v8, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->tSpacesOffs:I

    aget-object v10, p1, v2

    iget-object v11, v10, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->vertNum:[B

    aget-byte v11, v11, v3

    iget v10, v10, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->tSpacesOffs:I

    add-int/2addr v10, v11

    add-int/2addr v8, v9

    aget-object v8, p0, v8

    aput-object v8, p0, v10

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v2, v5

    :goto_4
    if-ge v2, v1, :cond_b

    aget-object v7, p1, v2

    iget v8, v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_a

    iget-object v8, v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->vertNum:[B

    aget-byte v9, v8, v5

    shl-int v9, v6, v9

    aget-byte v10, v8, v6

    shl-int v10, v6, v10

    or-int/2addr v9, v10

    aget-byte v10, v8, v3

    shl-int v10, v6, v10

    or-int/2addr v9, v10

    and-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_6

    move v9, v6

    goto :goto_5

    :cond_6
    and-int/lit8 v10, v9, 0x4

    if-nez v10, :cond_7

    move v9, v3

    goto :goto_5

    :cond_7
    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_8

    move v9, v4

    goto :goto_5

    :cond_8
    move v9, v5

    :goto_5
    iget v7, v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->orgFaceNumber:I

    invoke-static {v7, v9}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->makeIndex(II)I

    move-result v10

    invoke-static {v0, v10}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v10

    move v12, v5

    move v11, v6

    :goto_6
    if-eqz v11, :cond_a

    if-ge v12, v4, :cond_a

    aget-byte v13, v8, v12

    invoke-static {v7, v13}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->makeIndex(II)I

    move-result v14

    invoke-static {v0, v14}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    aget-object v11, p1, v2

    iget v11, v11, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->tSpacesOffs:I

    add-int v14, v11, v9

    add-int/2addr v11, v13

    aget-object v11, p0, v11

    aput-object v11, p0, v14

    move v11, v5

    goto :goto_6

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    return-void
.end method

.method public static MergeVertsFast([I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;Lcom/jme3/util/mikktspace/MikkTSpaceContext;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x3

    new-array v6, v5, [F

    new-array v7, v5, [F

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v5, :cond_0

    aget-object v10, v1, v3

    iget-object v10, v10, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;->vert:[F

    aget v10, v10, v9

    aput v10, v6, v9

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v9, v3, 0x1

    :goto_1
    if-gt v9, v4, :cond_4

    move v10, v8

    :goto_2
    if-ge v10, v5, :cond_3

    aget v11, v6, v10

    aget-object v12, v1, v9

    iget-object v12, v12, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;->vert:[F

    aget v12, v12, v10

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    aput v12, v6, v10

    goto :goto_3

    :cond_1
    aget v11, v7, v10

    cmpg-float v11, v11, v12

    if-gez v11, :cond_2

    aput v12, v7, v10

    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    aget v5, v7, v8

    aget v9, v6, v8

    sub-float/2addr v5, v9

    const/4 v9, 0x1

    aget v10, v7, v9

    aget v11, v6, v9

    sub-float/2addr v10, v11

    const/4 v11, 0x2

    aget v12, v7, v11

    aget v13, v6, v11

    sub-float/2addr v12, v13

    cmpl-float v13, v10, v5

    if-lez v13, :cond_5

    cmpl-float v10, v10, v12

    if-lez v10, :cond_5

    move v11, v9

    goto :goto_4

    :cond_5
    cmpl-float v5, v12, v5

    if-lez v5, :cond_6

    goto :goto_4

    :cond_6
    move v11, v8

    :goto_4
    aget v5, v7, v11

    aget v6, v6, v11

    add-float v7, v5, v6

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    cmpl-float v5, v7, v5

    if-gez v5, :cond_13

    cmpg-float v5, v7, v6

    if-gtz v5, :cond_7

    goto/16 :goto_b

    :cond_7
    move v5, v3

    move v6, v4

    :cond_8
    :goto_5
    if-ge v5, v6, :cond_f

    move v10, v8

    :cond_9
    :goto_6
    if-nez v10, :cond_b

    if-ge v5, v6, :cond_b

    aget-object v10, v1, v5

    iget-object v10, v10, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;->vert:[F

    aget v10, v10, v11

    cmpl-float v10, v10, v7

    if-ltz v10, :cond_a

    move v10, v9

    goto :goto_7

    :cond_a
    move v10, v8

    :goto_7
    if-nez v10, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    move v12, v8

    :cond_c
    :goto_8
    if-nez v12, :cond_e

    if-ge v5, v6, :cond_e

    aget-object v12, v1, v6

    iget-object v12, v12, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;->vert:[F

    aget v12, v12, v11

    cmpg-float v12, v12, v7

    if-gez v12, :cond_d

    move v12, v9

    goto :goto_9

    :cond_d
    move v12, v8

    :goto_9
    if-nez v12, :cond_c

    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    :cond_e
    if-eqz v10, :cond_8

    if-eqz v12, :cond_8

    aget-object v10, v1, v5

    aget-object v12, v1, v6

    aput-object v12, v1, v5

    aput-object v10, v1, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_f
    if-ne v5, v6, :cond_11

    aget-object v8, v1, v6

    iget-object v8, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;->vert:[F

    aget v8, v8, v11

    cmpg-float v7, v8, v7

    if-gez v7, :cond_10

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_10
    add-int/lit8 v6, v6, -0x1

    :cond_11
    :goto_a
    if-ge v3, v6, :cond_12

    invoke-static {v0, v1, v2, v3, v6}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->MergeVertsFast([I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;Lcom/jme3/util/mikktspace/MikkTSpaceContext;II)V

    :cond_12
    if-ge v5, v4, :cond_17

    invoke-static {v0, v1, v2, v5, v4}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->MergeVertsFast([I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;Lcom/jme3/util/mikktspace/MikkTSpaceContext;II)V

    goto/16 :goto_f

    :cond_13
    :goto_b
    move v5, v3

    :goto_c
    if-gt v5, v4, :cond_17

    aget-object v6, v1, v5

    iget v6, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;->index:I

    aget v7, v0, v6

    invoke-static {v2, v7}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-static {v2, v7}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getNormal(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-static {v2, v7}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v7

    const/4 v12, -0x1

    move v13, v3

    move v14, v9

    :goto_d
    if-ge v13, v5, :cond_15

    if-eqz v14, :cond_15

    aget-object v12, v1, v13

    iget v12, v12, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;->index:I

    aget v15, v0, v12

    invoke-static {v2, v15}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-static {v2, v15}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getNormal(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-static {v2, v15}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v15

    iget v1, v10, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v8, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    iget v1, v10, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v8, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    iget v1, v10, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v8, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    iget v1, v11, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v9, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    iget v1, v11, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v9, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    iget v1, v11, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v9, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    iget v1, v7, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v15, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    iget v1, v7, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v15, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    iget v1, v7, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v15, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    const/4 v14, 0x0

    goto :goto_e

    :cond_14
    add-int/lit8 v13, v13, 0x1

    :goto_e
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_d

    :cond_15
    if-nez v14, :cond_16

    aget v1, v0, v12

    aput v1, v0, v6

    :cond_16
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_c

    :cond_17
    :goto_f
    return-void
.end method

.method public static MergeVertsSlow([ILcom/jme3/util/mikktspace/MikkTSpaceContext;[II)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_3

    aget v2, p2, v1

    aget v3, p0, v2

    invoke-static {p1, v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-static {p1, v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getNormal(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-static {p1, v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, -0x1

    move v8, v0

    :goto_1
    if-ge v8, v1, :cond_1

    if-eqz v6, :cond_1

    aget v7, p2, v8

    aget v9, p0, v7

    invoke-static {p1, v9}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-static {p1, v9}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getNormal(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-static {p1, v9}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v4, v10}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5, v11}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3, v9}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-nez v6, :cond_2

    aget v3, p0, v7

    aput v3, p0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static addTriToGroup(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;I)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->faceIndices:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->nrFaces:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->nrFaces:I

    return-void
.end method

.method public static assignRecur([I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;ILcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;)Z
    .locals 9

    aget-object v0, p1, p2

    iget v1, p3, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->vertexRepresentative:I

    mul-int/lit8 v2, p2, 0x3

    aget v3, p0, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget v3, p0, v3

    if-ne v3, v1, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    add-int/2addr v2, v4

    aget v2, p0, v2

    if-ne v2, v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    iget-object v2, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v3, v2, v1

    if-ne v3, p3, :cond_3

    return v6

    :cond_3
    if-eqz v3, :cond_4

    return v5

    :cond_4
    iget v3, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/lit8 v7, v3, 0x4

    const/16 v8, 0x8

    if-eqz v7, :cond_6

    aget-object v7, v2, v5

    if-nez v7, :cond_6

    aget-object v7, v2, v6

    if-nez v7, :cond_6

    aget-object v2, v2, v4

    if-nez v2, :cond_6

    and-int/lit8 v2, v3, -0x9

    iput v2, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    iget-boolean v3, p3, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->orientationPreserving:Z

    if-eqz v3, :cond_5

    move v3, v8

    goto :goto_1

    :cond_5
    move v3, v5

    :goto_1
    or-int/2addr v2, v3

    iput v2, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    :cond_6
    iget v2, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/2addr v2, v8

    if-eqz v2, :cond_7

    move v2, v6

    goto :goto_2

    :cond_7
    move v2, v5

    :goto_2
    iget-boolean v3, p3, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->orientationPreserving:Z

    if-eq v2, v3, :cond_8

    return v5

    :cond_8
    invoke-static {p3, p2}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->addTriToGroup(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;I)V

    iget-object p2, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aput-object p3, p2, v1

    iget-object p2, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    aget v0, p2, v1

    if-lez v1, :cond_9

    add-int/lit8 v4, v1, -0x1

    :cond_9
    aget p2, p2, v4

    if-ltz v0, :cond_a

    invoke-static {p0, p1, v0, p3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->assignRecur([I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;ILcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;)Z

    :cond_a
    if-ltz p2, :cond_b

    invoke-static {p0, p1, p2, p3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->assignRecur([I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;ILcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;)Z

    :cond_b
    return v6
.end method

.method public static avgTSpace(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;)Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;
    .locals 4

    new-instance v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;-><init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V

    iget v1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iget v2, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    iget v2, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iput p1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iget p1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    iput p1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    iget-object p1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    iget-object p0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iget v2, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iget v1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    iget v3, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    add-float/2addr v1, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    iget-object v1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    iget-object p0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    iget-object p1, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    :goto_0
    return-object v0
.end method

.method public static build4RuleGroups([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;[I[II)I
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p4, :cond_7

    move v4, v0

    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_6

    aget-object v5, p0, v1

    iget v6, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_5

    iget-object v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v6, v5, v4

    if-nez v6, :cond_5

    mul-int/lit8 v6, v1, 0x3

    add-int/2addr v6, v4

    aget v6, p3, v6

    new-instance v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;-><init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V

    aput-object v7, v5, v4

    aget-object v5, p0, v1

    iget-object v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v5, v5, v4

    aput-object v5, p1, v2

    aget-object v5, p0, v1

    iget-object v7, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v7, v7, v4

    iput v6, v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->vertexRepresentative:I

    iget v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    move v5, v0

    :goto_2
    iput-boolean v5, v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->orientationPreserving:Z

    iput v0, v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->nrFaces:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v7, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->addTriToGroup(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;I)V

    aget-object v5, p0, v1

    iget v6, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    iget-object v6, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    aget v7, v6, v4

    if-lez v4, :cond_1

    add-int/lit8 v8, v4, -0x1

    goto :goto_3

    :cond_1
    const/4 v8, 0x2

    :goto_3
    aget v6, v6, v8

    if-ltz v7, :cond_2

    iget-object v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v5, v5, v4

    invoke-static {p3, p0, v7, v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->assignRecur([I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;ILcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;)Z

    aget-object v5, p0, v7

    iget v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    :cond_2
    if-ltz v6, :cond_3

    aget-object v5, p0, v1

    iget-object v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v5, v5, v4

    invoke-static {p3, p0, v6, v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->assignRecur([I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;ILcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;)Z

    aget-object v5, p0, v6

    iget v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    :cond_3
    aget-object v5, p0, v1

    iget-object v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->nrFaces:I

    new-array v6, v5, [I

    move v7, v0

    :goto_4
    if-ge v7, v5, :cond_4

    aget-object v8, p0, v1

    iget-object v8, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->faceIndices:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    aget-object v5, p0, v1

    iget-object v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->nrFaces:I

    invoke-static {v6, v0, p2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p0, v1

    iget-object v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->nrFaces:I

    add-int/2addr v3, v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return v2
.end method

.method public static buildNeighborsFast([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;[II)V
    .locals 25

    move-object/from16 v6, p2

    move/from16 v0, p3

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    const/4 v8, 0x3

    if-ge v1, v0, :cond_4

    move v2, v7

    :goto_1
    if-ge v2, v8, :cond_3

    mul-int/lit8 v3, v1, 0x3

    add-int v4, v3, v2

    aget v5, v6, v4

    const/4 v9, 0x2

    if-ge v2, v9, :cond_0

    add-int/lit8 v9, v2, 0x1

    goto :goto_2

    :cond_0
    move v9, v7

    :goto_2
    add-int/2addr v3, v9

    aget v3, v6, v3

    new-instance v9, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;-><init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V

    aput-object v9, p1, v4

    if-ge v5, v3, :cond_1

    move v10, v5

    goto :goto_3

    :cond_1
    move v10, v3

    :goto_3
    invoke-virtual {v9, v10}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->setI0(I)V

    aget-object v9, p1, v4

    if-lt v5, v3, :cond_2

    goto :goto_4

    :cond_2
    move v5, v3

    :goto_4
    invoke-virtual {v9, v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->setI1(I)V

    aget-object v3, p1, v4

    invoke-virtual {v3, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->setF(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    mul-int/lit8 v9, v0, 0x3

    add-int/lit8 v10, v9, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-wide/32 v11, 0x26065ca

    move-object/from16 v0, p1

    move v2, v10

    move-wide v4, v11

    invoke-static/range {v0 .. v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->quickSortEdges([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;IIIJ)V

    const/4 v13, 0x1

    move v1, v7

    move v14, v13

    :goto_5
    if-ge v14, v9, :cond_6

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI0()I

    move-result v0

    aget-object v2, p1, v14

    invoke-virtual {v2}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI0()I

    move-result v2

    if-eq v0, v2, :cond_5

    add-int/lit8 v2, v14, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-wide v4, v11

    invoke-static/range {v0 .. v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->quickSortEdges([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;IIIJ)V

    move v1, v14

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_6
    if-lez v9, :cond_7

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v2, v10

    move-wide v4, v11

    invoke-static/range {v0 .. v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->quickSortEdges([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;IIIJ)V

    :cond_7
    move v1, v7

    move v14, v13

    :goto_6
    if-ge v14, v9, :cond_a

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI0()I

    move-result v0

    aget-object v2, p1, v14

    invoke-virtual {v2}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI0()I

    move-result v2

    if-ne v0, v2, :cond_8

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI1()I

    move-result v0

    aget-object v2, p1, v14

    invoke-virtual {v2}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI1()I

    move-result v2

    if-eq v0, v2, :cond_9

    :cond_8
    add-int/lit8 v2, v14, -0x1

    const/4 v3, 0x2

    move-object/from16 v0, p1

    move-wide v4, v11

    invoke-static/range {v0 .. v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->quickSortEdges([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;IIIJ)V

    move v1, v14

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    if-lez v9, :cond_b

    const/4 v3, 0x2

    move-object/from16 v0, p1

    move v2, v10

    move-wide v4, v11

    invoke-static/range {v0 .. v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->quickSortEdges([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;IIIJ)V

    :cond_b
    move v0, v7

    :goto_7
    if-ge v0, v9, :cond_11

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI0()I

    move-result v1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI1()I

    move-result v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getF()I

    move-result v3

    new-array v4, v13, [I

    new-array v5, v13, [I

    new-array v10, v13, [I

    new-array v11, v13, [I

    new-array v12, v8, [I

    mul-int/lit8 v14, v3, 0x3

    invoke-static {v6, v14, v12, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move/from16 v18, v1

    move/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getEdge([I[I[I[III)V

    aget-object v14, p0, v3

    iget-object v14, v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    aget v15, v10, v7

    aget v14, v14, v15

    const/4 v15, -0x1

    if-ne v14, v15, :cond_10

    add-int/lit8 v14, v0, 0x1

    move/from16 v20, v13

    :goto_8
    if-ge v14, v9, :cond_e

    aget-object v16, p1, v14

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI0()I

    move-result v15

    if-ne v1, v15, :cond_e

    aget-object v15, p1, v14

    invoke-virtual {v15}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI1()I

    move-result v15

    if-ne v2, v15, :cond_e

    if-eqz v20, :cond_e

    new-array v15, v13, [I

    new-array v7, v13, [I

    aget-object v16, p1, v14

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getF()I

    move-result v22

    mul-int/lit8 v13, v22, 0x3

    move/from16 v23, v1

    const/4 v1, 0x0

    invoke-static {v6, v13, v12, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, p1, v14

    invoke-virtual {v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI0()I

    move-result v18

    aget-object v1, p1, v14

    invoke-virtual {v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getI1()I

    move-result v19

    move v1, v14

    move-object v14, v7

    move-object/from16 v24, v15

    const/4 v13, -0x1

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    invoke-static/range {v14 .. v19}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getEdge([I[I[I[III)V

    aget-object v14, p0, v22

    iget-object v14, v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    const/16 v21, 0x0

    aget v15, v11, v21

    aget v14, v14, v15

    if-ne v14, v13, :cond_c

    const/4 v14, 0x1

    goto :goto_9

    :cond_c
    move/from16 v14, v21

    :goto_9
    aget v15, v4, v21

    aget v8, v24, v21

    if-ne v15, v8, :cond_d

    aget v8, v5, v21

    aget v7, v7, v21

    if-ne v8, v7, :cond_d

    if-eqz v14, :cond_d

    move v14, v1

    const/16 v20, 0x0

    goto :goto_a

    :cond_d
    add-int/lit8 v14, v1, 0x1

    :goto_a
    move v15, v13

    move/from16 v1, v23

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v13, 0x1

    goto :goto_8

    :cond_e
    move v1, v14

    if-nez v20, :cond_f

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->getF()I

    move-result v1

    aget-object v2, p0, v3

    iget-object v2, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    const/4 v4, 0x0

    aget v5, v10, v4

    aput v1, v2, v5

    aget-object v1, p0, v1

    iget-object v1, v1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    aget v2, v11, v4

    aput v3, v1, v2

    goto :goto_b

    :cond_f
    const/4 v4, 0x0

    goto :goto_b

    :cond_10
    move v4, v7

    :goto_b
    add-int/lit8 v0, v0, 0x1

    move v7, v4

    const/4 v8, 0x3

    const/4 v13, 0x1

    goto/16 :goto_7

    :cond_11
    return-void
.end method

.method public static buildNeighborsSlow([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[II)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_8

    move v2, v0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_7

    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    aget v4, v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    mul-int/lit8 v4, v1, 0x3

    add-int v5, v4, v2

    aget v5, p1, v5

    const/4 v6, 0x2

    if-ge v2, v6, :cond_0

    add-int/lit8 v7, v2, 0x1

    goto :goto_2

    :cond_0
    move v7, v0

    :goto_2
    add-int/2addr v4, v7

    aget v4, p1, v4

    move v7, v0

    move v8, v7

    move v9, v8

    :cond_1
    :goto_3
    if-nez v7, :cond_5

    if-ge v8, p2, :cond_5

    if-eq v8, v1, :cond_4

    move v9, v0

    :goto_4
    if-nez v7, :cond_4

    if-ge v9, v3, :cond_4

    mul-int/lit8 v10, v8, 0x3

    add-int v11, v10, v9

    aget v11, p1, v11

    if-ge v9, v6, :cond_2

    add-int/lit8 v12, v9, 0x1

    goto :goto_5

    :cond_2
    move v12, v0

    :goto_5
    add-int/2addr v10, v12

    aget v10, p1, v10

    if-ne v5, v10, :cond_3

    if-ne v4, v11, :cond_3

    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    if-nez v7, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    if-eqz v7, :cond_6

    aget-object v3, p0, v1

    iget-object v3, v3, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    aput v8, v3, v2

    aget-object v3, p0, v8

    iget-object v3, v3, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    aput v1, v3, v9

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static calcTexArea(Lcom/jme3/util/mikktspace/MikkTSpaceContext;[I)F
    .locals 4

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {p0, v0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-static {p0, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {p0, p1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object p0

    iget p1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr p1, v2

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v1, v0

    iget v3, p0, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v3, v2

    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr p0, v0

    mul-float/2addr p1, p0

    mul-float/2addr v1, v3

    sub-float/2addr p1, v1

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    neg-float p1, p1

    :cond_0
    return p1
.end method

.method public static compareSubGroups(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget v1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->nrFaces:I

    iget v2, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->nrFaces:I

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :cond_1
    :goto_0
    iget v4, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->nrFaces:I

    if-ge v2, v4, :cond_3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->triMembers:[I

    aget v3, v3, v2

    iget-object v4, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->triMembers:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_2
    return v0
.end method

.method public static degenPrologue([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[III)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, p3, -0x1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    iget v4, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->orgFaceNumber:I

    add-int/lit8 v5, v1, 0x1

    aget-object v6, p0, v5

    iget v7, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->orgFaceNumber:I

    if-ne v4, v7, :cond_3

    iget v4, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    iget v7, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    xor-int/2addr v3, v5

    if-eqz v3, :cond_2

    or-int/lit8 v3, v4, 0x2

    iput v3, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    iget v2, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_0

    :cond_4
    move v1, v0

    move v2, v3

    move v4, v2

    :cond_5
    :goto_3
    if-ge v1, p2, :cond_c

    if-eqz v2, :cond_c

    aget-object v5, p0, v1

    iget v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/2addr v5, v3

    if-nez v5, :cond_6

    add-int/lit8 v5, v1, 0x2

    if-ge v4, v5, :cond_b

    move v4, v5

    goto :goto_7

    :cond_6
    move v5, v3

    :goto_4
    if-eqz v5, :cond_8

    if-ge v4, p3, :cond_8

    aget-object v6, p0, v4

    iget v6, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/2addr v6, v3

    if-nez v6, :cond_7

    move v5, v0

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v4, 0x1

    if-nez v5, :cond_a

    move v5, v0

    :goto_5
    const/4 v7, 0x3

    if-ge v5, v7, :cond_9

    mul-int/lit8 v7, v1, 0x3

    add-int/2addr v7, v5

    aget v8, p1, v7

    mul-int/lit8 v9, v4, 0x3

    add-int/2addr v9, v5

    aget v10, p1, v9

    aput v10, p1, v7

    aput v8, p1, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    aget-object v5, p0, v1

    aget-object v7, p0, v4

    aput-object v7, p0, v1

    aput-object v5, p0, v4

    :goto_6
    move v4, v6

    goto :goto_7

    :cond_a
    move v2, v0

    goto :goto_6

    :cond_b
    :goto_7
    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method

.method public static evalTspace([II[I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;
    .locals 16

    move-object/from16 v0, p4

    move/from16 v1, p5

    new-instance v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;-><init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V

    const/4 v3, 0x0

    move/from16 v5, p1

    move v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_8

    aget v8, p0, v6

    aget-object v9, p3, v8

    iget v9, v9, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_7

    mul-int/lit8 v9, v8, 0x3

    aget v10, p2, v9

    const/4 v11, 0x2

    if-ne v10, v1, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v9, 0x1

    aget v10, p2, v10

    if-ne v10, v1, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v9, 0x2

    aget v10, p2, v10

    if-ne v10, v1, :cond_2

    move v10, v11

    goto :goto_1

    :cond_2
    const/4 v10, -0x1

    :goto_1
    add-int v12, v9, v10

    aget v13, p2, v12

    invoke-static {v0, v13}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getNormal(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v13

    aget-object v14, p3, v8

    iget-object v14, v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->os:Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v14}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v15

    invoke-virtual {v13, v15}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v14

    aget-object v15, p3, v8

    iget-object v15, v15, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->ot:Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v15}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    invoke-virtual {v13, v4}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v14}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    if-ge v10, v11, :cond_3

    add-int/lit8 v15, v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    add-int/2addr v15, v9

    aget v15, p2, v15

    aget v12, p2, v12

    if-lez v10, :cond_4

    add-int/lit8 v11, v10, -0x1

    :cond_4
    add-int/2addr v9, v11

    aget v9, p2, v9

    invoke-static {v0, v9}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-static {v0, v12}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-static {v0, v15}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-virtual {v9, v10}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v11, v10}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-virtual {v13, v9}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v11

    invoke-virtual {v13, v11}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v10}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v11

    invoke-virtual {v13, v11}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v10}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v9, v10

    if-lez v11, :cond_5

    :goto_3
    move v9, v10

    goto :goto_4

    :cond_5
    const/high16 v10, -0x40800000    # -1.0f

    cmpg-float v11, v9, v10

    if-gez v11, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    double-to-float v9, v9

    aget-object v8, p3, v8

    iget v10, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->magS:F

    iget v8, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->magT:F

    iget-object v11, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    invoke-virtual {v14, v9}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v11, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v9}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v4, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    mul-float/2addr v10, v9

    add-float/2addr v4, v10

    iput v4, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iget v4, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    iput v4, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    add-float/2addr v7, v9

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v0, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v0, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    cmpl-float v0, v7, v3

    if-lez v0, :cond_9

    iget v0, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    div-float/2addr v0, v7

    iput v0, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iget v0, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    div-float/2addr v0, v7

    iput v0, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    :cond_9
    return-object v2
.end method

.method public static findGridCell(FFF)I
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    const/high16 p0, 0x45000000    # 2048.0f

    mul-float/2addr p2, p0

    float-to-int p0, p2

    const/16 p1, 0x800

    if-ge p0, p1, :cond_1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7ff

    :goto_0
    return p0
.end method

.method public static genTangSpace(Lcom/jme3/util/mikktspace/MikkTSpaceContext;F)Z
    .locals 21

    move-object/from16 v8, p0

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-interface/range {p0 .. p0}, Lcom/jme3/util/mikktspace/MikkTSpaceContext;->getNumFaces()I

    move-result v12

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float v0, v0, p1

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v5

    const/4 v13, 0x0

    move v0, v13

    move v7, v0

    :goto_0
    const/4 v14, 0x4

    if-ge v0, v12, :cond_2

    invoke-interface {v8, v0}, Lcom/jme3/util/mikktspace/MikkTSpaceContext;->getNumVerticesOfFace(I)I

    move-result v1

    if-ne v1, v10, :cond_0

    add-int/2addr v7, v11

    goto :goto_1

    :cond_0
    if-ne v1, v14, :cond_1

    add-int/2addr v7, v9

    :cond_1
    :goto_1
    add-int/2addr v0, v11

    goto :goto_0

    :cond_2
    if-gtz v7, :cond_3

    return v13

    :cond_3
    mul-int/lit8 v0, v7, 0x3

    new-array v15, v0, [I

    new-array v6, v7, [Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;

    invoke-static {v6, v15, v8, v7}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->generateInitialVerticesIndexList([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[ILcom/jme3/util/mikktspace/MikkTSpaceContext;I)I

    move-result v0

    invoke-static {v15, v8, v7}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->generateSharedVerticesIndexList([ILcom/jme3/util/mikktspace/MikkTSpaceContext;I)V

    move v1, v13

    move v2, v1

    :goto_2
    if-ge v1, v7, :cond_6

    mul-int/lit8 v3, v1, 0x3

    aget v4, v15, v3

    add-int/lit8 v16, v3, 0x1

    aget v13, v15, v16

    add-int/2addr v3, v9

    aget v3, v15, v3

    invoke-static {v8, v4}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-static {v8, v13}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v13

    invoke-static {v8, v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v4, v13}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v13, v3}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    aget-object v3, v6, v1

    iget v4, v3, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    or-int/2addr v4, v11

    iput v4, v3, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    add-int/2addr v2, v11

    :cond_5
    add-int/2addr v1, v11

    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    sub-int v13, v7, v2

    invoke-static {v6, v15, v13, v7}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->degenPrologue([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[III)V

    invoke-static {v6, v15, v8, v13}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->initTriInfo([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[ILcom/jme3/util/mikktspace/MikkTSpaceContext;I)V

    mul-int/lit8 v1, v13, 0x3

    new-array v2, v1, [Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    new-array v1, v1, [I

    invoke-static {v6, v2, v1, v15, v13}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->build4RuleGroups([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;[I[II)I

    move-result v3

    new-array v4, v0, [Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;

    const/4 v1, 0x0

    :goto_3
    const/high16 v9, 0x3f800000    # 1.0f

    if-ge v1, v0, :cond_7

    new-instance v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;

    const/4 v10, 0x0

    invoke-direct {v14, v10}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;-><init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V

    iget-object v10, v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11, v11}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iput v9, v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iget-object v10, v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v11, v9, v11}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iput v9, v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    aput-object v14, v4, v1

    const/4 v9, 0x1

    add-int/2addr v1, v9

    move v11, v9

    const/4 v10, 0x3

    const/4 v14, 0x4

    goto :goto_3

    :cond_7
    move-object v0, v4

    move-object v1, v6

    move-object v10, v4

    move-object v4, v15

    move-object v11, v6

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->generateTSpaces([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;I[IFLcom/jme3/util/mikktspace/MikkTSpaceContext;)Z

    move-object v0, v10

    move-object v1, v11

    move-object v2, v15

    move-object/from16 v3, p0

    move v4, v13

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->DegenEpilogue([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[ILcom/jme3/util/mikktspace/MikkTSpaceContext;II)V

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v12, :cond_b

    invoke-interface {v8, v11}, Lcom/jme3/util/mikktspace/MikkTSpaceContext;->getNumVerticesOfFace(I)I

    move-result v13

    const/4 v1, 0x3

    const/4 v14, 0x4

    if-eq v13, v1, :cond_8

    if-eq v13, v14, :cond_8

    const/4 v1, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v19, 0x3

    goto/16 :goto_7

    :cond_8
    move v15, v0

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v13, :cond_a

    aget-object v6, v10, v15

    iget-object v0, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    const/4 v5, 0x3

    new-array v4, v5, [F

    const/16 v17, 0x0

    aput v1, v4, v17

    const/4 v1, 0x1

    aput v2, v4, v1

    const/16 v16, 0x2

    aput v0, v4, v16

    iget-object v0, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    new-array v9, v5, [F

    aput v2, v9, v17

    aput v3, v9, v1

    aput v0, v9, v16

    iget v3, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iget v2, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    iget-boolean v1, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->orient:Z

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object v1, v4

    move/from16 v19, v2

    move-object v2, v9

    move-object v9, v4

    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, v18

    move-object v14, v6

    move v6, v11

    move/from16 v20, v7

    invoke-interface/range {v0 .. v7}, Lcom/jme3/util/mikktspace/MikkTSpaceContext;->setTSpace([F[FFFZII)V

    iget-boolean v0, v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->orient:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/high16 v0, -0x40800000    # -1.0f

    move/from16 v2, v20

    goto :goto_6

    :cond_9
    move/from16 v2, v20

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_6
    invoke-interface {v8, v9, v0, v11, v2}, Lcom/jme3/util/mikktspace/MikkTSpaceContext;->setTSpaceBasic([FFII)V

    add-int/2addr v15, v1

    add-int/lit8 v7, v2, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v14, 0x4

    goto :goto_5

    :cond_a
    const/4 v1, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v19, 0x3

    move v0, v15

    :goto_7
    add-int/2addr v11, v1

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public static genTangSpaceDefault(Lcom/jme3/util/mikktspace/MikkTSpaceContext;)Z
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {p0, v0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->genTangSpace(Lcom/jme3/util/mikktspace/MikkTSpaceContext;F)Z

    move-result p0

    return p0
.end method

.method public static generate(Lcom/jme3/scene/Mesh;)V
    .locals 3

    .line 10
    invoke-static {p0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->generateTangents(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Failed to generate tangents for mesh {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static generate(Lcom/jme3/scene/Spatial;)V
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/jme3/scene/Node;

    .line 3
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    .line 4
    invoke-static {v0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->generate(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Lcom/jme3/scene/Geometry;

    .line 7
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->generateTangents(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Failed to generate tangents for geometry {0}"

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static generateInitialVerticesIndexList([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[ILcom/jme3/util/mikktspace/MikkTSpaceContext;I)I
    .locals 16

    move-object/from16 v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/jme3/util/mikktspace/MikkTSpaceContext;->getNumFaces()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-interface {v0, v2}, Lcom/jme3/util/mikktspace/MikkTSpaceContext;->getNumVerticesOfFace(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v7, 0x4

    if-eq v5, v7, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;-><init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V

    aput-object v7, p0, v4

    iput v2, v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->orgFaceNumber:I

    iput v3, v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->tSpacesOffs:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v5, v6, :cond_1

    iget-object v6, v7, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->vertNum:[B

    aput-byte v1, v6, v1

    aput-byte v10, v6, v10

    aput-byte v9, v6, v9

    mul-int/lit8 v6, v4, 0x3

    invoke-static {v2, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->makeIndex(II)I

    move-result v7

    aput v7, p1, v6

    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v10}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->makeIndex(II)I

    move-result v8

    aput v8, p1, v7

    add-int/2addr v6, v9

    invoke-static {v2, v9}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->makeIndex(II)I

    move-result v7

    aput v7, p1, v6

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v7, v4, 0x1

    new-instance v11, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;

    invoke-direct {v11, v8}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;-><init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V

    aput-object v11, p0, v7

    iput v2, v11, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->orgFaceNumber:I

    iput v3, v11, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->tSpacesOffs:I

    invoke-static {v2, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->makeIndex(II)I

    move-result v8

    invoke-static {v2, v10}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->makeIndex(II)I

    move-result v11

    invoke-static {v2, v9}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->makeIndex(II)I

    move-result v12

    invoke-static {v2, v6}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->makeIndex(II)I

    move-result v13

    invoke-static {v0, v8}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-static {v0, v11}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v15

    invoke-static {v0, v12}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-static {v0, v13}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v6, v14}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v6

    invoke-virtual {v9, v15}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v9

    cmpg-float v14, v6, v9

    if-gez v14, :cond_2

    goto :goto_1

    :cond_2
    cmpg-float v6, v9, v6

    if-gez v6, :cond_4

    :cond_3
    const/4 v9, 0x2

    goto :goto_3

    :cond_4
    invoke-static {v0, v8}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-static {v0, v11}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-static {v0, v12}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-static {v0, v13}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v15

    invoke-virtual {v14, v6}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v6

    invoke-virtual {v15, v9}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v9

    cmpl-float v6, v9, v6

    if-ltz v6, :cond_3

    :goto_1
    aget-object v6, p0, v4

    iget-object v6, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->vertNum:[B

    aput-byte v1, v6, v1

    aput-byte v10, v6, v10

    const/4 v9, 0x2

    aput-byte v9, v6, v9

    mul-int/lit8 v6, v4, 0x3

    aput v8, p1, v6

    add-int/lit8 v14, v6, 0x1

    aput v11, p1, v14

    add-int/2addr v6, v9

    aput v12, p1, v6

    aget-object v6, p0, v7

    iget-object v6, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->vertNum:[B

    aput-byte v1, v6, v1

    aput-byte v9, v6, v10

    const/4 v10, 0x3

    aput-byte v10, v6, v9

    mul-int/lit8 v7, v7, 0x3

    aput v8, p1, v7

    add-int/lit8 v6, v7, 0x1

    aput v12, p1, v6

    add-int/2addr v7, v9

    aput v13, p1, v7

    :goto_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    :goto_3
    aget-object v6, p0, v4

    iget-object v6, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->vertNum:[B

    aput-byte v1, v6, v1

    aput-byte v10, v6, v10

    const/4 v14, 0x3

    aput-byte v14, v6, v9

    mul-int/lit8 v6, v4, 0x3

    aput v8, p1, v6

    add-int/lit8 v8, v6, 0x1

    aput v11, p1, v8

    add-int/2addr v6, v9

    aput v13, p1, v6

    aget-object v6, p0, v7

    iget-object v6, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->vertNum:[B

    aput-byte v10, v6, v1

    aput-byte v9, v6, v10

    const/4 v8, 0x3

    aput-byte v8, v6, v9

    mul-int/lit8 v7, v7, 0x3

    aput v11, p1, v7

    add-int/lit8 v6, v7, 0x1

    aput v12, p1, v6

    add-int/2addr v7, v9

    aput v13, p1, v7

    goto :goto_2

    :goto_4
    add-int/2addr v3, v5

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    move/from16 v0, p3

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_6

    aget-object v4, p0, v2

    iput v1, v4, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return v3
.end method

.method public static generateSharedVerticesIndexList([ILcom/jme3/util/mikktspace/MikkTSpaceContext;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v4

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    mul-int/lit8 v7, p2, 0x3

    if-ge v6, v7, :cond_6

    aget v7, v0, v6

    invoke-static {v1, v7}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget v8, v3, Lcom/jme3/math/Vector3f;->x:F

    iget v9, v7, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    iput v9, v3, Lcom/jme3/math/Vector3f;->x:F

    goto :goto_1

    :cond_0
    iget v8, v4, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    iput v9, v4, Lcom/jme3/math/Vector3f;->x:F

    :cond_1
    :goto_1
    iget v8, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v7, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    iput v9, v3, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_2

    :cond_2
    iget v8, v4, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    iput v9, v4, Lcom/jme3/math/Vector3f;->y:F

    :cond_3
    :goto_2
    iget v8, v3, Lcom/jme3/math/Vector3f;->z:F

    iget v7, v7, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_4

    iput v7, v3, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_3

    :cond_4
    iget v8, v4, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v8, v8, v7

    if-gez v8, :cond_5

    iput v7, v4, Lcom/jme3/math/Vector3f;->z:F

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget v8, v3, Lcom/jme3/math/Vector3f;->x:F

    iget v9, v4, Lcom/jme3/math/Vector3f;->x:F

    iget v10, v6, Lcom/jme3/math/Vector3f;->y:F

    iget v11, v6, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v12, v10, v11

    const/4 v13, 0x2

    if-lez v12, :cond_7

    iget v12, v6, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_7

    iget v8, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v4, Lcom/jme3/math/Vector3f;->y:F

    move v3, v5

    goto :goto_4

    :cond_7
    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v6, v6, v11

    if-lez v6, :cond_8

    iget v8, v3, Lcom/jme3/math/Vector3f;->z:F

    iget v9, v4, Lcom/jme3/math/Vector3f;->z:F

    move v3, v13

    goto :goto_4

    :cond_8
    move v3, v2

    :goto_4
    new-array v4, v7, [I

    const/16 v6, 0x800

    new-array v10, v6, [I

    new-array v11, v6, [I

    new-array v12, v6, [I

    move v14, v2

    :goto_5
    if-ge v14, v7, :cond_b

    aget v15, v0, v14

    invoke-static {v1, v15}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v15

    if-nez v3, :cond_9

    iget v15, v15, Lcom/jme3/math/Vector3f;->x:F

    goto :goto_6

    :cond_9
    if-ne v3, v5, :cond_a

    iget v15, v15, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_6

    :cond_a
    iget v15, v15, Lcom/jme3/math/Vector3f;->z:F

    :goto_6
    invoke-static {v8, v9, v15}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->findGridCell(FFF)I

    move-result v15

    aget v16, v10, v15

    add-int/lit8 v16, v16, 0x1

    aput v16, v10, v15

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_b
    aput v2, v11, v2

    move v14, v5

    :goto_7
    if-ge v14, v6, :cond_c

    add-int/lit8 v15, v14, -0x1

    aget v16, v11, v15

    aget v15, v10, v15

    add-int v16, v16, v15

    aput v16, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_c
    move v14, v2

    :goto_8
    if-ge v14, v7, :cond_f

    aget v15, v0, v14

    invoke-static {v1, v15}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v15

    if-nez v3, :cond_d

    iget v15, v15, Lcom/jme3/math/Vector3f;->x:F

    goto :goto_9

    :cond_d
    if-ne v3, v5, :cond_e

    iget v15, v15, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_9

    :cond_e
    iget v15, v15, Lcom/jme3/math/Vector3f;->z:F

    :goto_9
    invoke-static {v8, v9, v15}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->findGridCell(FFF)I

    move-result v15

    aget v16, v11, v15

    aget v17, v12, v15

    add-int v16, v16, v17

    aput v14, v4, v16

    aget v16, v12, v15

    add-int/lit8 v16, v16, 0x1

    aput v16, v12, v15

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_f
    move v3, v2

    :goto_a
    if-ge v3, v6, :cond_10

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_10
    aget v3, v10, v2

    move v7, v5

    :goto_b
    if-ge v7, v6, :cond_12

    aget v8, v10, v7

    if-ge v3, v8, :cond_11

    move v3, v8

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_12
    new-array v3, v3, [Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;

    move v7, v2

    :goto_c
    if-ge v7, v6, :cond_15

    aget v8, v10, v7

    if-ge v8, v13, :cond_13

    move v14, v13

    goto :goto_e

    :cond_13
    move v9, v2

    :goto_d
    if-ge v9, v8, :cond_14

    aget v12, v11, v7

    add-int/2addr v12, v9

    aget v12, v4, v12

    aget v14, v0, v12

    invoke-static {v1, v14}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v14

    new-instance v15, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;-><init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V

    aput-object v15, v3, v9

    iget-object v6, v15, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;->vert:[F

    iget v13, v14, Lcom/jme3/math/Vector3f;->x:F

    aput v13, v6, v2

    iget v13, v14, Lcom/jme3/math/Vector3f;->y:F

    aput v13, v6, v5

    iget v13, v14, Lcom/jme3/math/Vector3f;->z:F

    const/4 v14, 0x2

    aput v13, v6, v14

    iput v12, v15, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;->index:I

    add-int/lit8 v9, v9, 0x1

    move v13, v14

    const/16 v6, 0x800

    goto :goto_d

    :cond_14
    move v14, v13

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v3, v1, v2, v8}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->MergeVertsFast([I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;Lcom/jme3/util/mikktspace/MikkTSpaceContext;II)V

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move v13, v14

    const/16 v6, 0x800

    goto :goto_c

    :cond_15
    return-void
.end method

.method public static generateSharedVerticesIndexListSlow([ILcom/jme3/util/mikktspace/MikkTSpaceContext;I)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    mul-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v4

    aget v7, p0, v6

    invoke-static {v0, v7}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-static {v0, v7}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getNormal(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-static {v0, v7}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v7

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-nez v11, :cond_3

    if-gt v12, v3, :cond_3

    const/4 v13, 0x0

    :goto_3
    if-nez v11, :cond_1

    if-ge v13, v5, :cond_1

    mul-int/lit8 v14, v12, 0x3

    add-int/2addr v14, v13

    aget v14, p0, v14

    invoke-static {v0, v14}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v15

    invoke-static {v0, v14}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getNormal(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v0, v14}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v8, v15}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v9, v1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7, v5}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v11, v1

    move v10, v14

    goto :goto_4

    :cond_0
    add-int/lit8 v13, v13, 0x1

    :goto_4
    const/4 v5, 0x3

    goto :goto_3

    :cond_1
    if-nez v11, :cond_2

    add-int/lit8 v12, v12, 0x1

    :cond_2
    const/4 v5, 0x3

    goto :goto_2

    :cond_3
    aput v10, p0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static generateTSpaces([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;I[IFLcom/jme3/util/mikktspace/MikkTSpaceContext;)Z
    .locals 22

    move/from16 v6, p3

    const/4 v7, 0x0

    move v0, v7

    move v1, v0

    :goto_0
    if-ge v0, v6, :cond_1

    aget-object v2, p2, v0

    iget v2, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->nrFaces:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    if-nez v1, :cond_2

    return v8

    :cond_2
    new-array v9, v1, [Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;

    new-array v10, v1, [Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;

    new-array v11, v1, [I

    move v12, v7

    :goto_1
    if-ge v12, v6, :cond_11

    aget-object v13, p2, v12

    move v14, v7

    move v15, v14

    :goto_2
    iget v0, v13, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->nrFaces:I

    if-ge v14, v0, :cond_10

    iget-object v0, v13, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->faceIndices:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    new-instance v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;-><init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V

    aget-object v2, p1, v16

    iget-object v2, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    aget-object v3, v2, v7

    const/4 v5, 0x2

    if-ne v3, v13, :cond_3

    move/from16 v17, v7

    goto :goto_3

    :cond_3
    aget-object v3, v2, v8

    if-ne v3, v13, :cond_4

    move/from16 v17, v8

    goto :goto_3

    :cond_4
    aget-object v2, v2, v5

    if-ne v2, v13, :cond_5

    move/from16 v17, v5

    goto :goto_3

    :cond_5
    const/4 v2, -0x1

    move/from16 v17, v2

    :goto_3
    mul-int/lit8 v2, v16, 0x3

    add-int v2, v2, v17

    aget v2, p4, v2

    move-object/from16 v4, p6

    invoke-static {v4, v2}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getNormal(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aget-object v3, p1, v16

    iget-object v3, v3, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->os:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aget-object v5, p1, v16

    iget-object v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->ot:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    aget-object v5, p1, v16

    iget v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->orgFaceNumber:I

    move v8, v7

    :goto_4
    iget v4, v13, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->nrFaces:I

    if-ge v8, v4, :cond_a

    iget-object v4, v13, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->faceIndices:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v6, p1, v4

    move/from16 v18, v12

    iget v12, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->orgFaceNumber:I

    iget-object v6, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->os:Lcom/jme3/math/Vector3f;

    move/from16 v19, v14

    invoke-virtual {v2, v6}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v14

    invoke-virtual {v2, v14}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    aget-object v14, p1, v4

    iget-object v14, v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->ot:Lcom/jme3/math/Vector3f;

    move-object/from16 v20, v9

    invoke-virtual {v2, v14}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    invoke-virtual {v2, v9}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v9}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    aget-object v14, p1, v16

    iget v14, v14, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    move-object/from16 v21, v2

    aget-object v2, p1, v4

    iget v2, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    or-int/2addr v2, v14

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-ne v5, v12, :cond_7

    const/4 v12, 0x1

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v3, v6}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v6

    invoke-virtual {v1, v9}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    if-nez v2, :cond_8

    if-nez v12, :cond_8

    cmpl-float v2, v6, p5

    if-lez v2, :cond_9

    cmpl-float v2, v9, p5

    if-lez v2, :cond_9

    :cond_8
    add-int/lit8 v2, v7, 0x1

    aput v4, v11, v7

    move v7, v2

    :cond_9
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, p3

    move/from16 v12, v18

    move/from16 v14, v19

    move-object/from16 v9, v20

    move-object/from16 v2, v21

    goto :goto_4

    :cond_a
    move-object/from16 v20, v9

    move/from16 v18, v12

    move/from16 v19, v14

    iput v7, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->nrFaces:I

    iput-object v11, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->triMembers:[I

    const/4 v1, 0x1

    if-le v7, v1, :cond_b

    add-int/lit8 v1, v7, -0x1

    const-wide/32 v2, 0x26065ca

    const/4 v4, 0x0

    invoke-static {v11, v4, v1, v2, v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->quickSort([IIIJ)V

    :cond_b
    const/4 v4, 0x0

    const/4 v6, 0x0

    :cond_c
    :goto_7
    if-ge v6, v15, :cond_d

    if-nez v4, :cond_d

    aget-object v1, v10, v6

    invoke-static {v0, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->compareSubGroups(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;)Z

    move-result v4

    if-nez v4, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_d
    if-nez v4, :cond_e

    new-array v1, v7, [I

    new-instance v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;-><init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V

    aput-object v2, v10, v15

    iput v7, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->nrFaces:I

    iput-object v1, v2, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->triMembers:[I

    iget-object v2, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->triMembers:[I

    const/4 v8, 0x0

    invoke-static {v2, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$SubGroup;->triMembers:[I

    iget v5, v13, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->vertexRepresentative:I

    move v1, v7

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    const/4 v7, 0x2

    invoke-static/range {v0 .. v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->evalTspace([II[I[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;

    move-result-object v0

    aput-object v0, v20, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_e
    const/4 v7, 0x2

    const/4 v8, 0x0

    :goto_8
    aget-object v0, p1, v16

    iget v1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->tSpacesOffs:I

    iget-object v0, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->vertNum:[B

    aget-byte v0, v0, v17

    add-int/2addr v1, v0

    aget-object v0, p0, v1

    iget v1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->counter:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    aget-object v1, v20, v6

    invoke-static {v0, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->avgTSpace(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;)Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->set(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;)V

    iput v7, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->counter:I

    iget-boolean v1, v13, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->orientationPreserving:Z

    iput-boolean v1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->orient:Z

    goto :goto_9

    :cond_f
    aget-object v1, v20, v6

    invoke-virtual {v0, v1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->set(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;)V

    iput v2, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->counter:I

    iget-boolean v1, v13, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->orientationPreserving:Z

    iput-boolean v1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->orient:Z

    :goto_9
    add-int/lit8 v14, v19, 0x1

    move/from16 v6, p3

    move v7, v8

    move/from16 v12, v18

    move-object/from16 v9, v20

    move v8, v2

    goto/16 :goto_2

    :cond_10
    move v2, v8

    move-object/from16 v20, v9

    move/from16 v18, v12

    move v8, v7

    add-int/lit8 v12, v18, 0x1

    move/from16 v6, p3

    move v8, v2

    goto/16 :goto_1

    :cond_11
    move v2, v8

    return v2
.end method

.method private static generateTangents(Lcom/jme3/scene/Mesh;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    sget-object p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Tangent generation isn\'t implemented for mode={0}"

    invoke-virtual {p0, v1, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :pswitch_0
    sget-object p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Tangent generation does not support mesh mode={0}"

    invoke-virtual {p0, v1, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :pswitch_1
    new-instance v0, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;

    invoke-direct {v0, p0}, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;-><init>(Lcom/jme3/scene/Mesh;)V

    invoke-static {v0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->genTangSpaceDefault(Lcom/jme3/util/mikktspace/MikkTSpaceContext;)Z

    move-result v0

    invoke-static {p0}, Lcom/jme3/util/TangentUtils;->generateBindPoseTangentsIfNecessary(Lcom/jme3/scene/Mesh;)V

    return v0

    :pswitch_2
    sget-object p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Tangent generation requires a mesh with Triangles"

    invoke-virtual {p0, v1, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_1
    :goto_0
    sget-object p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "Tangent generation requires both a normal and texCoord buffer"

    invoke-virtual {p0, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEdge([I[I[I[III)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, p2, v1

    aget v0, p3, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, p4, :cond_1

    if-ne v0, p5, :cond_0

    goto :goto_0

    :cond_0
    aput v3, p2, v1

    aget p2, p3, v3

    aput p2, p0, v1

    aget p0, p3, v2

    aput p0, p1, v1

    goto :goto_2

    :cond_1
    :goto_0
    aget v0, p3, v3

    if-eq v0, p4, :cond_3

    if-ne v0, p5, :cond_2

    goto :goto_1

    :cond_2
    aput v2, p2, v1

    aget p2, p3, v2

    aput p2, p0, v1

    aget p0, p3, v1

    aput p0, p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    aput v1, p2, v1

    aget p2, p3, v1

    aput p2, p0, v1

    aput v0, p1, v1

    :goto_2
    return-void
.end method

.method public static getNormal(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x3

    new-array v3, v3, [F

    invoke-static {v1, v2, p1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->indexToData([I[II)V

    const/4 p1, 0x0

    aget v1, v1, p1

    aget v2, v2, p1

    invoke-interface {p0, v3, v1, v2}, Lcom/jme3/util/mikktspace/MikkTSpaceContext;->getNormal([FII)V

    new-instance p0, Lcom/jme3/math/Vector3f;

    aget p1, v3, p1

    aget v0, v3, v0

    const/4 v1, 0x2

    aget v1, v3, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object p0
.end method

.method public static getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x3

    new-array v3, v3, [F

    invoke-static {v1, v2, p1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->indexToData([I[II)V

    const/4 p1, 0x0

    aget v1, v1, p1

    aget v2, v2, p1

    invoke-interface {p0, v3, v1, v2}, Lcom/jme3/util/mikktspace/MikkTSpaceContext;->getPosition([FII)V

    new-instance p0, Lcom/jme3/math/Vector3f;

    aget p1, v3, p1

    aget v0, v3, v0

    const/4 v1, 0x2

    aget v1, v3, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object p0
.end method

.method public static getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-static {v1, v2, p1}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->indexToData([I[II)V

    const/4 p1, 0x0

    aget v1, v1, p1

    aget v2, v2, p1

    invoke-interface {p0, v3, v1, v2}, Lcom/jme3/util/mikktspace/MikkTSpaceContext;->getTexCoord([FII)V

    new-instance p0, Lcom/jme3/math/Vector3f;

    aget p1, v3, p1

    aget v0, v3, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object p0
.end method

.method private static indexToData([I[II)V
    .locals 2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x0

    aput v0, p1, v1

    shr-int/lit8 p1, p2, 0x2

    aput p1, p0, v1

    return-void
.end method

.method public static initTriInfo([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[ILcom/jme3/util/mikktspace/MikkTSpaceContext;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v3, :cond_1

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    aget-object v8, v0, v5

    iget-object v9, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    const/4 v10, -0x1

    aput v10, v9, v7

    iget-object v8, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    const/4 v9, 0x0

    aput-object v9, v8, v7

    aget-object v8, v0, v5

    iget-object v9, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->os:Lcom/jme3/math/Vector3f;

    iput v6, v9, Lcom/jme3/math/Vector3f;->x:F

    iput v6, v9, Lcom/jme3/math/Vector3f;->y:F

    iput v6, v9, Lcom/jme3/math/Vector3f;->z:F

    iget-object v9, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->ot:Lcom/jme3/math/Vector3f;

    iput v6, v9, Lcom/jme3/math/Vector3f;->x:F

    iput v6, v9, Lcom/jme3/math/Vector3f;->y:F

    iput v6, v9, Lcom/jme3/math/Vector3f;->z:F

    iput v6, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->magS:F

    iput v6, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->magT:F

    iget v9, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_2
    const/16 v7, 0x8

    if-ge v5, v3, :cond_7

    mul-int/lit8 v8, v5, 0x3

    aget v9, v1, v8

    invoke-static {v2, v9}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    aget v11, v1, v10

    invoke-static {v2, v11}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v11

    add-int/lit8 v12, v8, 0x2

    aget v13, v1, v12

    invoke-static {v2, v13}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getPosition(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v13

    aget v8, v1, v8

    invoke-static {v2, v8}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v8

    aget v10, v1, v10

    invoke-static {v2, v10}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v10

    aget v12, v1, v12

    invoke-static {v2, v12}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->getTexCoord(Lcom/jme3/util/mikktspace/MikkTSpaceContext;I)Lcom/jme3/math/Vector3f;

    move-result-object v12

    iget v14, v10, Lcom/jme3/math/Vector3f;->x:F

    iget v15, v8, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v14, v15

    iget v10, v10, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v8, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v10, v8

    iget v4, v12, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v4, v15

    iget v12, v12, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v12, v8

    invoke-virtual {v11, v9}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v13, v9}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    mul-float v11, v14, v12

    mul-float v13, v10, v4

    sub-float/2addr v11, v13

    invoke-virtual {v8, v12}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v12

    invoke-virtual {v9, v10}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v10

    neg-float v4, v4

    invoke-virtual {v8, v4}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v9, v14}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aget-object v8, v0, v5

    iget v9, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    cmpl-float v12, v11, v6

    if-lez v12, :cond_2

    move v12, v7

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    :goto_3
    or-int/2addr v9, v12

    iput v9, v8, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    invoke-static {v11}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->isNotZero(F)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {v10}, Lcom/jme3/math/Vector3f;->length()F

    move-result v9

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->length()F

    move-result v11

    aget-object v12, v0, v5

    iget v12, v12, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/2addr v7, v12

    if-nez v7, :cond_3

    const/high16 v7, -0x40800000    # -1.0f

    goto :goto_4

    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_4
    invoke-static {v9}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->isNotZero(F)Z

    move-result v12

    if-eqz v12, :cond_4

    aget-object v12, v0, v5

    div-float v13, v7, v9

    invoke-virtual {v10, v13}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v10

    iput-object v10, v12, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->os:Lcom/jme3/math/Vector3f;

    :cond_4
    invoke-static {v11}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->isNotZero(F)Z

    move-result v10

    if-eqz v10, :cond_5

    aget-object v10, v0, v5

    div-float/2addr v7, v11

    invoke-virtual {v4, v7}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iput-object v4, v10, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->ot:Lcom/jme3/math/Vector3f;

    :cond_5
    aget-object v4, v0, v5

    div-float/2addr v9, v8

    iput v9, v4, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->magS:F

    div-float/2addr v11, v8

    iput v11, v4, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->magT:F

    invoke-static {v9}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->isNotZero(F)Z

    move-result v4

    if-eqz v4, :cond_6

    aget-object v4, v0, v5

    iget v4, v4, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->magT:F

    invoke-static {v4}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->isNotZero(F)Z

    move-result v4

    if-eqz v4, :cond_6

    aget-object v4, v0, v5

    iget v7, v4, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/lit8 v7, v7, -0x5

    iput v7, v4, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_13

    aget-object v5, v0, v4

    iget v6, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->orgFaceNumber:I

    add-int/lit8 v8, v4, 0x1

    aget-object v9, v0, v8

    iget v10, v9, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->orgFaceNumber:I

    if-ne v6, v10, :cond_12

    iget v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/lit8 v6, v5, 0x1

    const/4 v10, 0x1

    if-eqz v6, :cond_8

    move v6, v10

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    iget v9, v9, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_9

    move v11, v10

    goto :goto_7

    :cond_9
    const/4 v11, 0x0

    :goto_7
    if-nez v6, :cond_11

    if-eqz v11, :cond_a

    goto :goto_d

    :cond_a
    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_b

    move v5, v10

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    and-int/lit8 v6, v9, 0x8

    if-eqz v6, :cond_c

    move v6, v10

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    :goto_9
    if-eq v5, v6, :cond_11

    and-int/lit8 v5, v9, 0x4

    if-eqz v5, :cond_d

    goto :goto_a

    :cond_d
    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v6, v5, 0x3

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    invoke-static {v2, v5}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->calcTexArea(Lcom/jme3/util/mikktspace/MikkTSpaceContext;[I)F

    move-result v5

    mul-int/lit8 v6, v8, 0x3

    add-int/lit8 v9, v6, 0x3

    invoke-static {v1, v6, v9}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v6

    invoke-static {v2, v6}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->calcTexArea(Lcom/jme3/util/mikktspace/MikkTSpaceContext;[I)F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_e

    goto :goto_a

    :cond_e
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_f

    move v5, v4

    goto :goto_b

    :cond_f
    move v5, v8

    :goto_b
    if-eqz v10, :cond_10

    goto :goto_c

    :cond_10
    move v8, v4

    :goto_c
    aget-object v6, v0, v8

    iget v8, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/lit8 v8, v8, -0x9

    iput v8, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    aget-object v5, v0, v5

    iget v5, v5, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    and-int/2addr v5, v7

    or-int/2addr v5, v8

    iput v5, v6, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->flag:I

    :cond_11
    :goto_d
    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    :cond_12
    move v4, v8

    goto :goto_5

    :cond_13
    mul-int/lit8 v2, v3, 0x3

    new-array v2, v2, [Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;

    invoke-static {v0, v2, v1, v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->buildNeighborsFast([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;[II)V

    return-void
.end method

.method private static isNotZero(F)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeIndex(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x2

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static quickSort([IIIJ)V
    .locals 6

    const-wide/16 v0, 0x1f

    and-long/2addr v0, p3

    long-to-int v2, v0

    shl-long v2, p3, v2

    const-wide/16 v4, 0x20

    sub-long/2addr v4, v0

    long-to-int v0, v4

    shr-long v0, p3, v0

    or-long/2addr v0, v2

    add-long/2addr p3, v0

    const-wide/16 v0, 0x3

    add-long/2addr p3, v0

    const-wide v0, 0xffffffffL

    and-long v2, p3, v0

    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    and-long/2addr p3, v0

    int-to-long v0, v4

    rem-long/2addr p3, v0

    long-to-int p3, p3

    add-int/2addr p3, p1

    aget p3, p0, p3

    move p4, p1

    move v0, p2

    :cond_0
    :goto_0
    aget v1, p0, p4

    if-ge v1, p3, :cond_1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    aget v1, p0, v0

    if-le v1, p3, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-gt p4, v0, :cond_3

    aget v4, p0, p4

    aput v1, p0, p4

    aput v4, p0, v0

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_3
    if-le p4, v0, :cond_0

    if-ge p1, v0, :cond_4

    invoke-static {p0, p1, v0, v2, v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->quickSort([IIIJ)V

    :cond_4
    if-ge p4, p2, :cond_5

    invoke-static {p0, p4, p2, v2, v3}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->quickSort([IIIJ)V

    :cond_5
    return-void
.end method

.method public static quickSortEdges([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;IIIJ)V
    .locals 9

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    if-ne v0, v1, :cond_2

    aget-object p4, p0, p1

    iget-object p5, p4, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    aget p5, p5, p3

    aget-object v0, p0, p2

    iget-object v1, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    aget p3, v1, p3

    if-le p5, p3, :cond_1

    aput-object v0, p0, p1

    aput-object p4, p0, p2

    :cond_1
    return-void

    :cond_2
    const-wide/16 v1, 0x1f

    and-long/2addr v1, p4

    long-to-int v3, v1

    shl-long v3, p4, v3

    const-wide/16 v5, 0x20

    sub-long/2addr v5, v1

    long-to-int v1, v5

    shr-long v1, p4, v1

    or-long/2addr v1, v3

    add-long/2addr p4, v1

    const-wide/16 v1, 0x3

    add-long/2addr p4, v1

    const-wide v1, 0xffffffffL

    and-long/2addr p4, v1

    int-to-long v0, v0

    rem-long v0, p4, v0

    long-to-int v0, v0

    add-int/2addr v0, p1

    aget-object v0, p0, v0

    iget-object v0, v0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    aget v0, v0, p3

    move v1, p1

    move v2, p2

    :cond_3
    :goto_0
    aget-object v3, p0, v1

    iget-object v3, v3, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    aget v3, v3, p3

    if-ge v3, v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    aget-object v3, p0, v2

    iget-object v4, v3, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    aget v4, v4, p3

    if-le v4, v0, :cond_5

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    if-gt v1, v2, :cond_6

    aget-object v4, p0, v1

    aput-object v3, p0, v1

    aput-object v4, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_6
    if-le v1, v2, :cond_3

    if-ge p1, v2, :cond_7

    move-object v3, p0

    move v4, p1

    move v5, v2

    move v6, p3

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->quickSortEdges([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;IIIJ)V

    :cond_7
    if-ge v1, p2, :cond_8

    move-object v3, p0

    move v4, v1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;->quickSortEdges([Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;IIIJ)V

    :cond_8
    return-void
.end method

.class public LGb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGb/c$a;
    }
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:I

.field public d:I

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>(DDII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "length",
            "radius",
            "stacks",
            "slices"
        }
    .end annotation

    .line 1
    sget-object v7, LGb/c$a;->VERTICAL:LGb/c$a;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, LGb/c;-><init>(DDIILGb/c$a;)V

    return-void
.end method

.method public constructor <init>(DDIILGb/c$a;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "length",
            "radius",
            "stacks",
            "slices",
            "orientation"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object v5, v0, LGb/c;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v7, v1, v5

    move-wide/from16 v9, p1

    .line 4
    invoke-static {v7, v8, v9, v10}, LNc/b;->L(DD)D

    move-result-wide v7

    .line 5
    iput-wide v7, v0, LGb/c;->b:D

    .line 6
    iput-wide v1, v0, LGb/c;->a:D

    .line 7
    iput v3, v0, LGb/c;->c:I

    .line 8
    iput v4, v0, LGb/c;->d:I

    .line 9
    new-instance v9, LGb/e;

    invoke-direct {v9, v1, v2, v3, v4}, LGb/e;-><init>(DII)V

    .line 10
    invoke-virtual {v9}, LGb/e;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    .line 11
    new-instance v9, Lvc/q;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v10

    invoke-direct {v9, v10}, Lvc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    .line 12
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v10

    .line 13
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v11

    .line 14
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v3

    mul-int/lit8 v12, v3, 0x3

    .line 15
    new-instance v13, Lvc/q;

    mul-int/lit8 v14, v11, 0x2

    invoke-direct {v13, v14}, Lvc/q;-><init>(I)V

    .line 16
    new-instance v15, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 v5, v3, 0x6

    invoke-direct {v15, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    .line 17
    new-instance v6, Lvc/q;

    add-int/lit8 v18, v4, 0x1

    const/4 v0, 0x2

    move/from16 p1, v5

    mul-int/lit8 v5, v18, 0x2

    invoke-direct {v6, v5}, Lvc/q;-><init>(I)V

    .line 18
    new-instance v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 v4, v4, 0x6

    invoke-direct {v5, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/high16 v18, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v11, :cond_1

    .line 19
    invoke-virtual {v9, v4}, Lvc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v19

    .line 20
    invoke-virtual/range {v19 .. v19}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v20

    cmpg-float v20, v20, v18

    if-gez v20, :cond_0

    .line 21
    invoke-virtual/range {v19 .. v19}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v18

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v7, v7, v16

    sub-double/2addr v7, v1

    double-to-float v1, v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v11, :cond_3

    .line 22
    invoke-virtual {v9, v2}, Lvc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v8

    .line 23
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    .line 24
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v16

    add-float v7, v16, v1

    move-object/from16 v16, v5

    .line 25
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    .line 26
    invoke-virtual {v13, v0, v7, v5}, Lvc/q;->s(FFF)V

    .line 27
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    sub-float v8, v8, v18

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v17, 0x38d1b717    # 1.0E-4f

    cmpg-float v8, v8, v17

    if-gtz v8, :cond_2

    .line 28
    invoke-virtual {v6, v0, v7, v5}, Lvc/q;->s(FFF)V

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v16

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    move-object/from16 v16, v5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v11, :cond_5

    .line 29
    invoke-virtual {v9, v0}, Lvc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    .line 31
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    neg-float v7, v7

    sub-float/2addr v7, v1

    .line 32
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    .line 33
    invoke-virtual {v13, v5, v7, v8}, Lvc/q;->s(FFF)V

    .line 34
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    sub-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v17, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v2, v17

    if-gtz v2, :cond_4

    .line 35
    invoke-virtual {v6, v5, v7, v8}, Lvc/q;->s(FFF)V

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v12, :cond_6

    .line 36
    invoke-virtual {v10, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v1

    .line 37
    invoke-virtual {v15, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_7

    mul-int/lit8 v1, v0, 0x3

    .line 38
    invoke-virtual {v10, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v2

    add-int/lit8 v5, v1, 0x1

    .line 39
    invoke-virtual {v10, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v5

    const/4 v7, 0x2

    add-int/2addr v1, v7

    .line 40
    invoke-virtual {v10, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v1

    add-int/2addr v1, v11

    .line 41
    invoke-virtual {v15, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    add-int/2addr v5, v11

    .line 42
    invoke-virtual {v15, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    add-int/2addr v2, v11

    .line 43
    invoke-virtual {v15, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 44
    :cond_7
    div-int/lit8 v0, v4, 0x2

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_8

    add-int v3, v14, v2

    add-int/lit8 v5, v3, 0x1

    add-int v7, v14, v0

    add-int/2addr v7, v2

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v9, v16

    .line 45
    invoke-virtual {v9, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    .line 46
    invoke-virtual {v9, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    .line 47
    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    .line 48
    invoke-virtual {v9, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    .line 49
    invoke-virtual {v9, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    .line 50
    invoke-virtual {v9, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v9, v16

    mul-int/lit8 v1, v1, 0x6

    .line 51
    new-instance v0, Lvc/q;

    add-int v2, v14, v4

    invoke-direct {v0, v2}, Lvc/q;-><init>(I)V

    .line 52
    new-instance v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int v5, p1, v1

    invoke-direct {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v14, :cond_9

    .line 53
    invoke-virtual {v13, v5}, Lvc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    invoke-virtual {v0, v7}, Lvc/q;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_a

    .line 54
    invoke-virtual {v6, v5}, Lvc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    invoke-virtual {v0, v7}, Lvc/q;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    move/from16 v4, p1

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_b

    .line 55
    invoke-virtual {v15, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_c

    .line 56
    invoke-virtual {v9, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 57
    :cond_c
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_f

    const/4 v7, 0x2

    if-eq v1, v7, :cond_e

    :cond_d
    move-object/from16 v1, p0

    goto :goto_c

    .line 58
    :cond_e
    invoke-static {v4, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->n(FFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_d

    .line 59
    invoke-virtual {v0, v4}, Lvc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    .line 60
    invoke-virtual {v1, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 61
    invoke-virtual {v0, v4, v5}, Lvc/q;->C(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 62
    :cond_f
    invoke-static {v5, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->n(FFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_d

    .line 63
    invoke-virtual {v0, v4}, Lvc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    .line 64
    invoke-virtual {v1, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 65
    invoke-virtual {v0, v4, v5}, Lvc/q;->C(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 66
    :goto_c
    iget-object v2, v1, LGb/c;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->r2(Lvc/q;)V

    .line 67
    iget-object v0, v1, LGb/c;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    .line 68
    iget-object v0, v1, LGb/c;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LGb/c;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

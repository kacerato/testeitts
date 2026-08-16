.class LJAVARuntime/GizmoPath$Line;
.super LJAVARuntime/GizmoPath$Entry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/GizmoPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Line"
.end annotation


# static fields
.field private static final LENGTH_EPSILON:F = 1.0E-6f

.field private static final PRISM_SIDES:I = 0x3

.field private static final SCALE_EPSILON:F = 1.0E-6f


# instance fields
.field public a:LJAVARuntime/Vector3;

.field private addedLoc:I

.field public b:LJAVARuntime/Vector3;

.field private transient rightX:F

.field private transient rightY:F

.field private transient rightZ:F

.field final synthetic this$0:LJAVARuntime/GizmoPath;

.field private transient tubeBasisValid:Z

.field private transient upX:F

.field private transient upY:F

.field private transient upZ:F


# direct methods
.method public constructor <init>(LJAVARuntime/GizmoPath;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "a",
            "b"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/GizmoPath$Line;->this$0:LJAVARuntime/GizmoPath;

    invoke-direct {p0, p1}, LJAVARuntime/GizmoPath$Entry;-><init>(LJAVARuntime/GizmoPath;)V

    iput-object p2, p0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    iput-object p3, p0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    return-void
.end method

.method private buildTubeBasis()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v1}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    iget-object v2, v0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    iget-object v3, v0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v3}, LJAVARuntime/Vector3;->getZ()F

    move-result v3

    iget-object v4, v0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v4}, LJAVARuntime/Vector3;->getX()F

    move-result v4

    iget-object v5, v0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v5}, LJAVARuntime/Vector3;->getY()F

    move-result v5

    iget-object v6, v0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v6}, LJAVARuntime/Vector3;->getZ()F

    move-result v6

    iget-object v7, v0, LJAVARuntime/GizmoPath$Line;->this$0:LJAVARuntime/GizmoPath;

    invoke-static {v7}, LJAVARuntime/GizmoPath;->access$000(LJAVARuntime/GizmoPath;)LJAVARuntime/Vector3;

    move-result-object v7

    invoke-virtual {v7}, LJAVARuntime/Vector3;->getX()F

    move-result v7

    invoke-static {v7}, LJAVARuntime/Math;->abs(F)F

    move-result v7

    iget-object v8, v0, LJAVARuntime/GizmoPath$Line;->this$0:LJAVARuntime/GizmoPath;

    invoke-static {v8}, LJAVARuntime/GizmoPath;->access$000(LJAVARuntime/GizmoPath;)LJAVARuntime/Vector3;

    move-result-object v8

    invoke-virtual {v8}, LJAVARuntime/Vector3;->getY()F

    move-result v8

    invoke-static {v8}, LJAVARuntime/Math;->abs(F)F

    move-result v8

    iget-object v9, v0, LJAVARuntime/GizmoPath$Line;->this$0:LJAVARuntime/GizmoPath;

    invoke-static {v9}, LJAVARuntime/GizmoPath;->access$000(LJAVARuntime/GizmoPath;)LJAVARuntime/Vector3;

    move-result-object v9

    invoke-virtual {v9}, LJAVARuntime/Vector3;->getZ()F

    move-result v9

    invoke-static {v9}, LJAVARuntime/Math;->abs(F)F

    move-result v9

    const v10, 0x358637bd    # 1.0E-6f

    cmpg-float v11, v7, v10

    if-gez v11, :cond_0

    move v7, v10

    :cond_0
    cmpg-float v11, v8, v10

    if-gez v11, :cond_1

    move v8, v10

    :cond_1
    cmpg-float v11, v9, v10

    if-gez v11, :cond_2

    move v9, v10

    :cond_2
    sub-float/2addr v4, v1

    mul-float/2addr v4, v7

    sub-float/2addr v5, v2

    mul-float/2addr v5, v8

    sub-float/2addr v6, v3

    mul-float/2addr v6, v9

    mul-float v1, v4, v4

    mul-float v2, v5, v5

    add-float/2addr v1, v2

    mul-float v2, v6, v6

    add-float/2addr v1, v2

    const v2, 0x2b8cbccc    # 1.0E-12f

    cmpg-float v3, v1, v2

    const/4 v10, 0x0

    if-gtz v3, :cond_3

    iput-boolean v10, v0, LJAVARuntime/GizmoPath$Line;->tubeBasisValid:Z

    return v10

    :cond_3
    invoke-static {v1}, LJAVARuntime/Math;->sqrt(F)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v1, v3, v1

    mul-float/2addr v4, v1

    mul-float/2addr v5, v1

    mul-float/2addr v6, v1

    invoke-static {v5}, LJAVARuntime/Math;->abs(F)F

    move-result v1

    const v11, 0x3f7d70a4    # 0.99f

    cmpg-float v1, v1, v11

    const/4 v12, 0x0

    if-gez v1, :cond_4

    move v1, v12

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    invoke-static {v5}, LJAVARuntime/Math;->abs(F)F

    move-result v13

    cmpg-float v11, v13, v11

    if-gez v11, :cond_5

    move v11, v3

    goto :goto_1

    :cond_5
    move v11, v12

    :goto_1
    mul-float v13, v5, v12

    mul-float v14, v6, v11

    sub-float v14, v13, v14

    mul-float v15, v6, v1

    mul-float v16, v4, v12

    sub-float v15, v15, v16

    mul-float/2addr v11, v4

    mul-float/2addr v1, v5

    sub-float/2addr v11, v1

    mul-float v1, v14, v14

    mul-float v17, v15, v15

    add-float v1, v1, v17

    mul-float v17, v11, v11

    add-float v1, v1, v17

    cmpg-float v17, v1, v2

    if-gtz v17, :cond_6

    mul-float v1, v5, v3

    mul-float/2addr v12, v6

    sub-float v14, v1, v12

    mul-float v1, v4, v3

    sub-float v15, v12, v1

    sub-float v11, v16, v13

    mul-float v1, v14, v14

    mul-float v12, v15, v15

    add-float/2addr v1, v12

    mul-float v12, v11, v11

    add-float/2addr v1, v12

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_6

    iput-boolean v10, v0, LJAVARuntime/GizmoPath$Line;->tubeBasisValid:Z

    return v10

    :cond_6
    invoke-static {v1}, LJAVARuntime/Math;->sqrt(F)F

    move-result v1

    div-float/2addr v3, v1

    mul-float/2addr v14, v3

    mul-float/2addr v15, v3

    mul-float/2addr v11, v3

    mul-float v1, v5, v11

    mul-float v2, v6, v15

    sub-float/2addr v1, v2

    mul-float/2addr v6, v14

    mul-float v2, v4, v11

    sub-float/2addr v6, v2

    mul-float/2addr v4, v15

    mul-float/2addr v5, v14

    sub-float/2addr v4, v5

    div-float/2addr v14, v7

    iput v14, v0, LJAVARuntime/GizmoPath$Line;->rightX:F

    div-float/2addr v15, v8

    iput v15, v0, LJAVARuntime/GizmoPath$Line;->rightY:F

    div-float/2addr v11, v9

    iput v11, v0, LJAVARuntime/GizmoPath$Line;->rightZ:F

    div-float/2addr v1, v7

    iput v1, v0, LJAVARuntime/GizmoPath$Line;->upX:F

    div-float/2addr v6, v8

    iput v6, v0, LJAVARuntime/GizmoPath$Line;->upY:F

    div-float/2addr v4, v9

    iput v4, v0, LJAVARuntime/GizmoPath$Line;->upZ:F

    const/4 v1, 0x1

    iput-boolean v1, v0, LJAVARuntime/GizmoPath$Line;->tubeBasisValid:Z

    return v1
.end method

.method private isLineRenderable()Z
    .locals 4

    iget-object v0, p0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v0}, LJAVARuntime/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v1}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v1}, LJAVARuntime/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v3}, LJAVARuntime/Vector3;->getZ()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    const v1, 0x2b8cbccc    # 1.0E-12f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTubeRenderable()Z
    .locals 8

    iget-object v0, p0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v0}, LJAVARuntime/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v1}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v1}, LJAVARuntime/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v3}, LJAVARuntime/Vector3;->getZ()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, LJAVARuntime/GizmoPath$Line;->this$0:LJAVARuntime/GizmoPath;

    invoke-static {v3}, LJAVARuntime/GizmoPath;->access$000(LJAVARuntime/GizmoPath;)LJAVARuntime/Vector3;

    move-result-object v3

    invoke-virtual {v3}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    invoke-static {v3}, LJAVARuntime/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, LJAVARuntime/GizmoPath$Line;->this$0:LJAVARuntime/GizmoPath;

    invoke-static {v4}, LJAVARuntime/GizmoPath;->access$000(LJAVARuntime/GizmoPath;)LJAVARuntime/Vector3;

    move-result-object v4

    invoke-virtual {v4}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    invoke-static {v4}, LJAVARuntime/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, LJAVARuntime/GizmoPath$Line;->this$0:LJAVARuntime/GizmoPath;

    invoke-static {v5}, LJAVARuntime/GizmoPath;->access$000(LJAVARuntime/GizmoPath;)LJAVARuntime/Vector3;

    move-result-object v5

    invoke-virtual {v5}, LJAVARuntime/Vector3;->getZ()F

    move-result v5

    invoke-static {v5}, LJAVARuntime/Math;->abs(F)F

    move-result v5

    const v6, 0x358637bd    # 1.0E-6f

    cmpg-float v7, v3, v6

    if-gez v7, :cond_0

    move v3, v6

    :cond_0
    cmpg-float v7, v4, v6

    if-gez v7, :cond_1

    move v4, v6

    :cond_1
    cmpg-float v7, v5, v6

    if-gez v7, :cond_2

    move v5, v6

    :cond_2
    mul-float/2addr v0, v3

    mul-float/2addr v1, v4

    mul-float/2addr v2, v5

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    const v1, 0x2b8cbccc    # 1.0E-12f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public indicesCount(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thickness"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    invoke-direct {p0}, LJAVARuntime/GizmoPath$Line;->isTubeRenderable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x18

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public insertIndices(LJAVARuntime/NativeIntBuffer;IF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeIntBuffer",
            "offset",
            "thickness"
        }
    .end annotation

    const/4 p2, 0x0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    iget p2, p0, LJAVARuntime/GizmoPath$Line;->addedLoc:I

    invoke-virtual {p1, p2}, LJAVARuntime/NativeIntBuffer;->put(I)V

    iget p2, p0, LJAVARuntime/GizmoPath$Line;->addedLoc:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, LJAVARuntime/NativeIntBuffer;->put(I)V

    iget p2, p0, LJAVARuntime/GizmoPath$Line;->addedLoc:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, LJAVARuntime/NativeIntBuffer;->put(I)V

    iget p2, p0, LJAVARuntime/GizmoPath$Line;->addedLoc:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, LJAVARuntime/NativeIntBuffer;->put(I)V

    return-void

    :cond_0
    iget-boolean p2, p0, LJAVARuntime/GizmoPath$Line;->tubeBasisValid:Z

    if-nez p2, :cond_1

    invoke-direct {p0}, LJAVARuntime/GizmoPath$Line;->buildTubeBasis()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget p2, p0, LJAVARuntime/GizmoPath$Line;->addedLoc:I

    add-int/lit8 p3, p2, 0x3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v2, v1, 0x3

    add-int v3, p2, v0

    add-int v4, p2, v2

    add-int/2addr v0, p3

    add-int/2addr v2, p3

    invoke-virtual {p1, v3}, LJAVARuntime/NativeIntBuffer;->put(I)V

    invoke-virtual {p1, v4}, LJAVARuntime/NativeIntBuffer;->put(I)V

    invoke-virtual {p1, v2}, LJAVARuntime/NativeIntBuffer;->put(I)V

    invoke-virtual {p1, v3}, LJAVARuntime/NativeIntBuffer;->put(I)V

    invoke-virtual {p1, v2}, LJAVARuntime/NativeIntBuffer;->put(I)V

    invoke-virtual {p1, v0}, LJAVARuntime/NativeIntBuffer;->put(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v2, p2, 0x4

    add-int/lit8 v3, p2, 0x5

    invoke-virtual {p1, p2}, LJAVARuntime/NativeIntBuffer;->put(I)V

    invoke-virtual {p1, v1}, LJAVARuntime/NativeIntBuffer;->put(I)V

    invoke-virtual {p1, v0}, LJAVARuntime/NativeIntBuffer;->put(I)V

    invoke-virtual {p1, p3}, LJAVARuntime/NativeIntBuffer;->put(I)V

    invoke-virtual {p1, v2}, LJAVARuntime/NativeIntBuffer;->put(I)V

    invoke-virtual {p1, v3}, LJAVARuntime/NativeIntBuffer;->put(I)V

    return-void
.end method

.method public insertVertices(LJAVARuntime/NativeFloatBuffer;IF)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeFloatBuffer",
            "offset",
            "thickness"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iput v2, v0, LJAVARuntime/GizmoPath$Line;->addedLoc:I

    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_0

    iget-object v2, v0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    iget-object v2, v0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    iget-object v2, v0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getZ()F

    move-result v2

    invoke-virtual {v1, v2}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    iget-object v2, v0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    iget-object v2, v0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    iget-object v2, v0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getZ()F

    move-result v2

    invoke-virtual {v1, v2}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, LJAVARuntime/GizmoPath$Line;->buildTubeBasis()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, p3

    iget-object v3, v0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v3}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    iget-object v4, v0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v4}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    iget-object v5, v0, LJAVARuntime/GizmoPath$Line;->a:LJAVARuntime/Vector3;

    invoke-virtual {v5}, LJAVARuntime/Vector3;->getZ()F

    move-result v5

    iget-object v6, v0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v6}, LJAVARuntime/Vector3;->getX()F

    move-result v6

    iget-object v7, v0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v7}, LJAVARuntime/Vector3;->getY()F

    move-result v7

    iget-object v8, v0, LJAVARuntime/GizmoPath$Line;->b:LJAVARuntime/Vector3;

    invoke-virtual {v8}, LJAVARuntime/Vector3;->getZ()F

    move-result v8

    const/4 v9, 0x3

    new-array v10, v9, [F

    new-array v11, v9, [F

    new-array v12, v9, [F

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v9, :cond_2

    int-to-float v15, v14

    const v16, 0x40060a92

    mul-float v15, v15, v16

    invoke-static {v15}, LJAVARuntime/Math;->cos(F)F

    move-result v16

    invoke-static {v15}, LJAVARuntime/Math;->sin(F)F

    move-result v15

    iget v13, v0, LJAVARuntime/GizmoPath$Line;->rightX:F

    mul-float v13, v13, v16

    iget v9, v0, LJAVARuntime/GizmoPath$Line;->upX:F

    mul-float/2addr v9, v15

    add-float/2addr v13, v9

    mul-float/2addr v13, v2

    aput v13, v10, v14

    iget v9, v0, LJAVARuntime/GizmoPath$Line;->rightY:F

    mul-float v9, v9, v16

    iget v13, v0, LJAVARuntime/GizmoPath$Line;->upY:F

    mul-float/2addr v13, v15

    add-float/2addr v9, v13

    mul-float/2addr v9, v2

    aput v9, v11, v14

    iget v9, v0, LJAVARuntime/GizmoPath$Line;->rightZ:F

    mul-float v9, v9, v16

    iget v13, v0, LJAVARuntime/GizmoPath$Line;->upZ:F

    mul-float/2addr v13, v15

    add-float/2addr v9, v13

    mul-float/2addr v9, v2

    aput v9, v12, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x3

    goto :goto_0

    :cond_2
    move v2, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_3

    aget v2, v10, v9

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    aget v2, v11, v9

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    aget v2, v12, v9

    add-float/2addr v2, v5

    invoke-virtual {v1, v2}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v2, :cond_4

    aget v3, v10, v13

    add-float/2addr v3, v6

    invoke-virtual {v1, v3}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    aget v3, v11, v13

    add-float/2addr v3, v7

    invoke-virtual {v1, v3}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    aget v3, v12, v13

    add-float/2addr v3, v8

    invoke-virtual {v1, v3}, LJAVARuntime/NativeFloatBuffer;->put(F)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public verticesCount(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thickness"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    invoke-direct {p0}, LJAVARuntime/GizmoPath$Line;->isTubeRenderable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

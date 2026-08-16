.class public LGb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:I

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxAngle",
            "length",
            "radialVertices"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LGb/d;->c:F

    iput p2, p0, LGb/d;->d:F

    iput p3, p0, LGb/d;->b:I

    invoke-virtual {p0}, LGb/d;->a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, LGb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method


# virtual methods
.method public final a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 11

    iget v0, p0, LGb/d;->c:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iget v2, p0, LGb/d;->d:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v5, p0, LGb/d;->d:F

    invoke-direct {v3, v4, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, LGb/d;->b:I

    if-ge v4, v5, :cond_0

    const-wide v6, 0x4076800000000000L    # 360.0

    int-to-double v8, v5

    div-double/2addr v6, v8

    int-to-double v8, v4

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v0

    mul-double/2addr v7, v9

    double-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    double-to-float v5, v5

    iget v6, p0, LGb/d;->d:F

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v8, v7, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_1
    iget v4, p0, LGb/d;->b:I

    if-ge v0, v4, :cond_1

    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    rem-int v4, v0, v4

    add-int/lit8 v4, v4, 0x2

    new-instance v6, LJAVARuntime/Point3;

    invoke-direct {v6, v3, v4, v5}, LJAVARuntime/Point3;-><init>(III)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    iget v0, p0, LGb/d;->b:I

    if-ge v3, v0, :cond_2

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    rem-int v0, v3, v0

    add-int/lit8 v0, v0, 0x2

    new-instance v5, LJAVARuntime/Point3;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v4, v0}, LJAVARuntime/Point3;-><init>(III)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-static {v1, v0}, LIb/h;->K(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-static {v2, v0}, LIb/h;->E(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LGb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

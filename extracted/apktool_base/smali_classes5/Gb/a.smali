.class public LGb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>(FFII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxAngle",
            "length",
            "sideSegments",
            "baseSegments"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, LGb/a;->a(FFII)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, LGb/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method


# virtual methods
.method public final a(FFII)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxAngle",
            "length",
            "sideSegments",
            "baseSegments"
        }
    .end annotation

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v3, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p4, :cond_0

    const-wide v4, 0x4076800000000000L    # 360.0

    int-to-double v6, p4

    div-double/2addr v4, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    float-to-double v8, p1

    mul-double/2addr v6, v8

    double-to-float v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-float v4, v4

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v6, v4, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_1
    if-ge p1, p3, :cond_1

    div-int p2, p4, p3

    mul-int v3, p1, p2

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 p1, p1, 0x1

    rem-int v4, p1, p3

    mul-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x2

    new-instance p2, LJAVARuntime/Point3;

    invoke-direct {p2, v2, v4, v3}, LJAVARuntime/Point3;-><init>(III)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, p4, :cond_2

    add-int/lit8 p1, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    rem-int p2, v2, p4

    add-int/lit8 p2, p2, 0x2

    new-instance p3, LJAVARuntime/Point3;

    const/4 v3, 0x1

    invoke-direct {p3, v3, p1, p2}, LJAVARuntime/Point3;-><init>(III)V

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-static {v0, p1}, LIb/h;->K(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-static {v1, p1}, LIb/h;->E(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-object p1
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LGb/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

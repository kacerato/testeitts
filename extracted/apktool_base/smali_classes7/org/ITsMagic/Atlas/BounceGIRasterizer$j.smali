.class public Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/BounceGIRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public final a:F

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cellSize"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->b:Ljava/util/HashMap;

    iput p1, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->a:F

    return-void
.end method

.method public static synthetic a(Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic b(Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;)F
    .locals 0

    iget p0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->a:F

    return p0
.end method


# virtual methods
.method public c(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surfels",
            "surfelIndex"
        }
    .end annotation

    iget-object v0, p1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->f(F)I

    move-result v0

    iget-object v1, p1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->f(F)I

    move-result v1

    iget-object p1, p1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->f(F)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->d(III)J

    move-result-wide v0

    iget-object p1, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->b:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->b:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(III)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    int-to-long v0, p1

    const-wide/32 v2, 0x1fffff

    and-long/2addr v0, v2

    int-to-long p1, p2

    and-long/2addr p1, v2

    int-to-long v4, p3

    and-long/2addr v2, v4

    const/16 p3, 0x2a

    shl-long/2addr v0, p3

    const/16 p3, 0x15

    shl-long/2addr p1, p3

    or-long/2addr p1, v0

    or-long/2addr p1, v2

    return-wide p1
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "F)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->a:F

    div-float/2addr p2, v1

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    const/4 v1, 0x1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->f(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p0, v2}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->f(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->f(F)I

    move-result p1

    sub-int v3, p1, p2

    :goto_0
    add-int v4, p1, p2

    if-gt v3, v4, :cond_3

    sub-int v4, v2, p2

    :goto_1
    add-int v5, v2, p2

    if-gt v4, v5, :cond_2

    sub-int v5, v1, p2

    :goto_2
    add-int v6, v1, p2

    if-gt v5, v6, :cond_1

    iget-object v6, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v5, v4, v3}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->d(III)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final f(F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->a:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

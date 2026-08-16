.class public LGb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGb/e$a;
    }
.end annotation


# instance fields
.field public a:D

.field public b:I

.field public c:I

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>(DII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "radius",
            "stacks",
            "slices"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object v0, p0, LGb/e;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-wide p1, p0, LGb/e;->a:D

    iput p3, p0, LGb/e;->b:I

    iput p4, p0, LGb/e;->c:I

    invoke-virtual {p0}, LGb/e;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, LGb/e;->a()Ljava/util/List;

    move-result-object p2

    new-instance p3, Lvc/q;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-direct {p3, p4}, Lvc/q;-><init>(I)V

    new-instance p4, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p4, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lvc/q;->r(I)V

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGb/e$a;

    iget-wide v1, v0, LGb/e$a;->c:D

    double-to-float v1, v1

    iget-wide v2, v0, LGb/e$a;->b:D

    double-to-float v2, v2

    iget-wide v3, v0, LGb/e$a;->a:D

    double-to-float v0, v3

    invoke-virtual {p3, v1, v2, v0}, Lvc/q;->s(FFF)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, LGb/e;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->r2(Lvc/q;)V

    iget-object p1, p0, LGb/e;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iget-object p1, p0, LGb/e;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->K1()V

    iget-object p1, p0, LGb/e;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, LGb/e;->b:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, LGb/e;->c:I

    if-ge v3, v4, :cond_0

    add-int/lit8 v5, v4, 0x1

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LGb/e$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v0, LGb/e;->b:I

    if-gt v3, v4, :cond_1

    int-to-double v5, v3

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    mul-int/lit8 v4, v4, 0x2

    int-to-double v9, v4

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move v6, v2

    :goto_1
    iget v11, v0, LGb/e;->c:I

    if-gt v6, v11, :cond_0

    mul-int/lit8 v12, v6, 0x2

    int-to-double v12, v12

    mul-double/2addr v12, v7

    int-to-double v14, v11

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    mul-double/2addr v14, v9

    new-instance v13, LGb/e$a;

    iget-wide v7, v0, LGb/e;->a:D

    mul-double v17, v11, v7

    mul-double v19, v4, v7

    mul-double v21, v14, v7

    move-object/from16 v16, v13

    invoke-direct/range {v16 .. v22}, LGb/e$a;-><init>(DDD)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LGb/e;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

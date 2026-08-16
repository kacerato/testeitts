.class public Lmc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJAVARuntime/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LJAVARuntime/Color;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v1, v1}, LJAVARuntime/Color;-><init>(III)V

    sput-object v0, Lmc/b;->a:LJAVARuntime/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lub/p;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Screen;->getWidth()I

    move-result v0

    invoke-static {}, LJAVARuntime/Screen;->getHeight()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-gt v2, v7, :cond_0

    move v2, v6

    goto :goto_3

    :cond_0
    const/4 v8, 0x4

    if-gt v2, v8, :cond_1

    move v2, v7

    goto :goto_3

    :cond_1
    move v7, v4

    :goto_0
    mul-int v8, v5, v3

    if-ge v8, v2, :cond_3

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_1
    xor-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move v7, v3

    :goto_2
    mul-int v3, v5, v7

    sub-int/2addr v3, v5

    if-le v3, v2, :cond_4

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_4
    move v2, v7

    move v7, v5

    :goto_3
    div-int/2addr v0, v7

    div-int/2addr v1, v2

    move v0, v4

    move v1, v0

    move v3, v1

    :goto_4
    if-ge v0, v2, :cond_8

    move v5, v4

    :goto_5
    if-ge v5, v7, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_5

    move v3, v6

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameBuffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LTb/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmc/b;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static c(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameBuffers",
            "texturesExtra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LTb/a;",
            ">;",
            "Ljava/util/List<",
            "Lub/p;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LTb/a;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, LTb/a;->s()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    :goto_1
    invoke-virtual {v3}, LTb/a;->b()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, LTb/a;->m(I)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, LTb/a;->t()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, LTb/a;->n()Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, LTb/a;->n()Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-static {v0}, Lmc/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public static varargs d([LTb/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameBuffers"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-object v3, p0, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, LTb/a;->s()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    :goto_1
    invoke-virtual {v3}, LTb/a;->b()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, LTb/a;->m(I)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, LTb/a;->t()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, LTb/a;->n()Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lmc/b;->a(Ljava/util/List;)V

    return-void
.end method

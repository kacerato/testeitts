.class public Lbb/e;
.super Lbb/c;
.source "SourceFile"


# instance fields
.field public i:F

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public k:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbb/c;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lbb/e;->i:F

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lbb/e;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lbb/e;->k:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointSize"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lbb/c;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lbb/e;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lbb/e;->k:F

    .line 8
    iput p1, p0, Lbb/e;->i:F

    return-void
.end method

.method public constructor <init>(Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "points",
            "pointSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;F)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lbb/c;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lbb/e;->j:Ljava/util/List;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lbb/e;->k:F

    .line 12
    iput p2, p0, Lbb/e;->i:F

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "points",
            "continuous",
            "pointSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;ZF)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lbb/c;-><init>(Ljava/util/List;Z)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lbb/e;->j:Ljava/util/List;

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lbb/e;->k:F

    .line 20
    iput p3, p0, Lbb/e;->i:F

    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "continuous",
            "pointSize"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lbb/c;-><init>(Z)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lbb/e;->j:Ljava/util/List;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lbb/e;->k:F

    .line 16
    iput p2, p0, Lbb/e;->i:F

    return-void
.end method


# virtual methods
.method public r()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lbb/e;->k:F

    iget v1, p0, Lbb/e;->i:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lbb/e;->j:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    iput v1, p0, Lbb/e;->k:F

    invoke-virtual {p0}, Lbb/e;->v()F

    move-result v0

    iget v1, p0, Lbb/e;->i:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lbb/c;->g(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbb/e;->j:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lbb/e;->j:Ljava/util/List;

    return-object v0
.end method

.method public s(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lbb/e;->r()Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbb/e;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lbb/e;->j:Ljava/util/List;

    return-object p1
.end method

.method public t()F
    .locals 1

    iget v0, p0, Lbb/e;->i:F

    return v0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbb/e;->j:Ljava/util/List;

    return-void
.end method

.method public final v()F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lbb/c;->m()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lbb/c;->k(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lbb/c;->k(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public w(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointSize"
        }
    .end annotation

    iput p1, p0, Lbb/e;->i:F

    return-void
.end method

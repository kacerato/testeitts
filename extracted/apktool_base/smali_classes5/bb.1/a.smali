.class public Lbb/a;
.super Lbb/e;
.source "SourceFile"


# instance fields
.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldb/a;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lbb/e;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lbb/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lbb/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lbb/a;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointSize"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lbb/e;-><init>(F)V

    .line 6
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object p1, p0, Lbb/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 7
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lbb/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 8
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lbb/a;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;F)V
    .locals 1
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
    invoke-direct {p0, p1, p2}, Lbb/e;-><init>(Ljava/util/List;F)V

    .line 10
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object p1, p0, Lbb/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 11
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lbb/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 12
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lbb/a;->l:Ljava/util/List;

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
    invoke-direct {p0, p1, p2, p3}, Lbb/e;-><init>(Ljava/util/List;ZF)V

    .line 18
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object p1, p0, Lbb/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 19
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lbb/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 20
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lbb/a;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 1
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
    invoke-direct {p0, p1, p2}, Lbb/e;-><init>(ZF)V

    .line 14
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object p1, p0, Lbb/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 15
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lbb/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 16
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lbb/a;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public x()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldb/a;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lbb/e;->r()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbb/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v5, Ldb/a;

    invoke-direct {v5}, Ldb/a;-><init>()V

    iput-object v2, v5, Ldb/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->j0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    iput-object v2, v5, Ldb/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, v5, Ldb/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v2, v6, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iget-object v3, p0, Lbb/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lbb/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v4, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->triangleNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iput-object v3, v5, Ldb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v2, p0, Lbb/a;->l:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v2, Ldb/a;

    invoke-direct {v2}, Ldb/a;-><init>()V

    iput-object v0, v2, Ldb/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->j0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    iput-object v0, v2, Ldb/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v2, Ldb/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v0, v4, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iget-object v1, p0, Lbb/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lbb/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v3, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->triangleNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    invoke-direct {v1, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iput-object v1, v2, Ldb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, Lbb/a;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lbb/a;->l:Ljava/util/List;

    return-object v0
.end method

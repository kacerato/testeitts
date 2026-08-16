.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bc:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public bl:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public br:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cc:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cl:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cr:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tc:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tl:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tr:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;-><init>()V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    return-object v0
.end method

.method public b(Landroid/content/Context;LT9/a;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LT9/a;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;LT9/a;)V

    const p2, 0x7f0c00cf

    const/4 v2, 0x0

    invoke-direct {p1, v1, p2, v2}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public c()F
    .locals 4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_3
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    if-eqz v3, :cond_5

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_5
    if-lez v0, :cond_6

    int-to-float v0, v0

    div-float v2, v1, v0

    :cond_6
    return v2
.end method

.method public d()F
    .locals 4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_3
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    if-eqz v3, :cond_5

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_5
    if-lez v0, :cond_6

    int-to-float v0, v0

    div-float v2, v1, v0

    :cond_6
    return v2
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    return v0
.end method

.method public n(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bc"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    return-void
.end method

.method public o(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bl"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    return-void
.end method

.method public p(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "br"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    return-void
.end method

.method public q(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cc"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    return-void
.end method

.method public r(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cl"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    return-void
.end method

.method public s(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cr"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    return-void
.end method

.method public t(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tc"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    return-void
.end method

.method public u(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tl"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    return-void
.end method

.method public v(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tr"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    return-void
.end method

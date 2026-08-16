.class public Lo6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lo6/i;

.field public final c:Lo6/i;

.field public final d:Lo6/i;


# direct methods
.method public constructor <init>(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameID"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo6/i;

    const-string v1, "Types"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo6/i;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo6/b;->b:Lo6/i;

    new-instance v1, Lo6/i;

    const-string v3, "repeat"

    invoke-direct {v1, v3, v2}, Lo6/i;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lo6/b;->c:Lo6/i;

    new-instance v3, Lo6/i;

    const-string v4, "parallel"

    invoke-direct {v3, v4, v2}, Lo6/i;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lo6/b;->d:Lo6/i;

    iput-wide p1, p0, Lo6/b;->a:J

    invoke-virtual {v0, v2}, Lo6/i;->o(Z)V

    invoke-virtual {v1, v2}, Lo6/i;->o(Z)V

    invoke-virtual {v3, v2}, Lo6/i;->o(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, LR8/f;->A()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-static {v1}, LR8/f;->z(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lo6/b;->b:Lo6/i;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lo6/i;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lo6/b;->a:J

    return-wide v0
.end method

.method public c()D
    .locals 2

    iget-object v0, p0, Lo6/b;->d:Lo6/i;

    invoke-virtual {v0}, Lo6/i;->h()D

    move-result-wide v0

    return-wide v0
.end method

.method public d()Lo6/i;
    .locals 1

    iget-object v0, p0, Lo6/b;->d:Lo6/i;

    return-object v0
.end method

.method public e()D
    .locals 2

    iget-object v0, p0, Lo6/b;->c:Lo6/i;

    invoke-virtual {v0}, Lo6/i;->h()D

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lo6/i;
    .locals 1

    iget-object v0, p0, Lo6/b;->c:Lo6/i;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lo6/b;->b:Lo6/i;

    invoke-virtual {v0}, Lo6/i;->g()I

    move-result v0

    return v0
.end method

.method public h()D
    .locals 4

    invoke-virtual {p0}, Lo6/b;->e()D

    move-result-wide v0

    invoke-virtual {p0}, Lo6/b;->c()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lo6/b;->b:Lo6/i;

    invoke-virtual {v0}, Lo6/i;->k()I

    move-result v0

    return v0
.end method

.method public j()Lo6/i;
    .locals 1

    iget-object v0, p0, Lo6/b;->b:Lo6/i;

    return-object v0
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "elapsedNanos"
        }
    .end annotation

    iget-object v0, p0, Lo6/b;->d:Lo6/i;

    invoke-virtual {v0, p1, p2, p3}, Lo6/i;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;J)V

    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "elapsedNanos"
        }
    .end annotation

    iget-object v0, p0, Lo6/b;->c:Lo6/i;

    invoke-virtual {v0, p1, p2, p3}, Lo6/i;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;J)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lo6/b;->b:Lo6/i;

    invoke-virtual {v0}, Lo6/i;->l()V

    iget-object v0, p0, Lo6/b;->c:Lo6/i;

    invoke-virtual {v0}, Lo6/i;->l()V

    iget-object v0, p0, Lo6/b;->d:Lo6/i;

    invoke-virtual {v0}, Lo6/i;->l()V

    return-void
.end method

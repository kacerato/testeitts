.class public Lcom/google/android/filament/Scene;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Scene$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Lcom/google/android/filament/Skybox;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/google/android/filament/IndirectLight;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Scene;->a:J

    return-void
.end method

.method private static native nAddEntities(J[I)V
.end method

.method private static native nAddEntity(JI)V
.end method

.method private static native nGetEntities(J[II)Z
.end method

.method private static native nGetEntityCount(J)I
.end method

.method private static native nGetLightCount(J)I
.end method

.method private static native nGetRenderableCount(J)I
.end method

.method private static native nHasEntity(JI)Z
.end method

.method private static native nRemove(JI)V
.end method

.method private static native nRemoveEntities(J[I)V
.end method

.method private static native nSetIndirectLight(JJ)V
.end method

.method private static native nSetSkybox(JJ)V
.end method


# virtual methods
.method public a([I)V
    .locals 2
    .param p1    # [I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Scene;->nAddEntities(J[I)V

    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Scene;->nAddEntity(JI)V

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Scene;->a:J

    return-void
.end method

.method public d(Lcom/google/android/filament/Scene$a;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Scene$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/Scene;->f([I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-interface {p1, v3}, Lcom/google/android/filament/Scene$a;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()[I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/Scene;->f([I)[I

    move-result-object v0

    return-object v0
.end method

.method public f([I)[I
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->g()I

    move-result v0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array p1, v0, [I

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/Scene;->nGetEntities(J[II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error retriving Scene\'s entities"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Scene;->nGetEntityCount(J)I

    move-result v0

    return v0
.end method

.method public h()Lcom/google/android/filament/IndirectLight;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Scene;->c:Lcom/google/android/filament/IndirectLight;

    return-object v0
.end method

.method public i()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Scene;->nGetLightCount(J)I

    move-result v0

    return v0
.end method

.method public j()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Scene;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Scene"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Scene;->nGetRenderableCount(J)I

    move-result v0

    return v0
.end method

.method public l()Lcom/google/android/filament/Skybox;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Scene;->b:Lcom/google/android/filament/Skybox;

    return-object v0
.end method

.method public m(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Scene;->nHasEntity(JI)Z

    move-result p1

    return p1
.end method

.method public n(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/filament/Scene;->p(I)V

    return-void
.end method

.method public o([I)V
    .locals 2
    .param p1    # [I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Scene;->nRemoveEntities(J[I)V

    return-void
.end method

.method public p(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Scene;->nRemove(JI)V

    return-void
.end method

.method public q(Lcom/google/android/filament/IndirectLight;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/IndirectLight;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/Scene;->c:Lcom/google/android/filament/IndirectLight;

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/filament/Scene;->c:Lcom/google/android/filament/IndirectLight;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/IndirectLight;->q()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Scene;->nSetIndirectLight(JJ)V

    return-void
.end method

.method public r(Lcom/google/android/filament/Skybox;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Skybox;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/Scene;->b:Lcom/google/android/filament/Skybox;

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/filament/Scene;->b:Lcom/google/android/filament/Skybox;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Scene;->nSetSkybox(JJ)V

    return-void
.end method

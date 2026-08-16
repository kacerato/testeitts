.class public Lkn/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkn/f$b;,
        Lkn/f$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public b:Lkn/f$a;

.field public c:Z

.field public d:Lkn/o;

.field public e:Lkn/m;

.field public f:F

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkn/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public h:F

.field public i:[F

.field public j:[F

.field public k:[F

.field public l:[F

.field public m:[F

.field public n:Lkn/h;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljn/S;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lkn/f$b;

.field public q:J

.field public r:[F

.field public s:Lkn/q;

.field public t:Z

.field public u:F

.field public v:F

.field public w:Lkn/g;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkn/f;->g:Ljava/util/List;

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/f;->i:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/f;->j:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/f;->k:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/f;->l:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/f;->m:[F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lkn/f;->o:Ljava/util/List;

    new-array v0, v0, [F

    iput-object v0, p0, Lkn/f;->r:[F

    int-to-long v0, p1

    iput-wide v0, p0, Lkn/f;->a:J

    new-instance p1, Lkn/o;

    invoke-direct {p1}, Lkn/o;-><init>()V

    iput-object p1, p0, Lkn/f;->d:Lkn/o;

    new-instance p1, Lkn/m;

    invoke-direct {p1}, Lkn/m;-><init>()V

    iput-object p1, p0, Lkn/f;->e:Lkn/m;

    new-instance p1, Lkn/g;

    invoke-direct {p1}, Lkn/g;-><init>()V

    iput-object p1, p0, Lkn/f;->w:Lkn/g;

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 10

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lkn/f;->o:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljn/S;

    invoke-virtual {v3}, Ljn/S;->b()[F

    move-result-object v3

    iget-object v5, p0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/S;

    invoke-virtual {v1}, Ljn/S;->b()[F

    move-result-object v1

    iget-object v5, p0, Lkn/f;->i:[F

    invoke-static {v3, v5}, Ljn/g;->W([F[F)[F

    move-result-object v3

    iget-object v5, p0, Lkn/f;->i:[F

    invoke-static {v1, v5}, Ljn/g;->W([F[F)[F

    move-result-object v1

    const/4 v5, 0x0

    aput v5, v3, v2

    aput v5, v1, v2

    invoke-static {v3}, Ljn/g;->K([F)F

    move-result v6

    invoke-static {v1}, Ljn/g;->K([F)F

    move-result v7

    const v8, 0x3a83126f    # 0.001f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_0

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v7

    invoke-static {v1, v8}, Ljn/g;->T([FF)[F

    move-result-object v1

    :cond_0
    aget v7, v3, v4

    aget v8, v1, v4

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v0, v4

    aput v5, v0, v2

    const/4 v2, 0x2

    aget v3, v3, v2

    aget v1, v1, v2

    mul-float/2addr v1, v6

    mul-float/2addr v1, v9

    sub-float/2addr v3, v1

    aput v3, v0, v2

    invoke-static {v0}, Ljn/g;->R([F)V

    :cond_1
    return-object v0
.end method

.method public b()[F
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lkn/f;->o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/S;

    invoke-virtual {v0}, Ljn/S;->b()[F

    move-result-object v0

    iget-object v1, p0, Lkn/f;->i:[F

    invoke-static {v0, v1}, Ljn/g;->W([F[F)[F

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Ljn/g;->R([F)V

    :cond_0
    return-object v0
.end method

.method public c(F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    iget-object v0, p0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/S;

    invoke-virtual {v0}, Ljn/S;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkn/f;->i:[F

    iget-object v1, p0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/S;

    invoke-virtual {v1}, Ljn/S;->b()[F

    move-result-object v1

    invoke-static {v0, v1}, Ljn/g;->B([F[F)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_1
    return p1
.end method

.method public d(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dt"
        }
    .end annotation

    iget-object v0, p0, Lkn/f;->n:Lkn/h;

    iget v0, v0, Lkn/h;->c:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lkn/f;->l:[F

    iget-object v2, p0, Lkn/f;->m:[F

    invoke-static {v1, v2}, Ljn/g;->W([F[F)[F

    move-result-object v1

    invoke-static {v1}, Ljn/g;->K([F)F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljn/g;->T([FF)[F

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lkn/f;->m:[F

    invoke-static {v0, v1}, Ljn/g;->v([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lkn/f;->m:[F

    invoke-static {v0}, Ljn/g;->K([F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lkn/f;->i:[F

    iget-object v1, p0, Lkn/f;->m:[F

    invoke-static {v0, v1, p1}, Ljn/g;->O([F[FF)[F

    move-result-object p1

    iput-object p1, p0, Lkn/f;->i:[F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lkn/f;->m:[F

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0}, Ljn/g;->U([FFFF)V

    :goto_0
    return-void
.end method

.method public e(F)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    iget-object v0, p0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/S;

    invoke-virtual {v0}, Ljn/S;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkn/f;->i:[F

    iget-object v2, p0, Lkn/f;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/S;

    invoke-virtual {v2}, Ljn/S;->b()[F

    move-result-object v2

    invoke-static {v0, v2}, Ljn/g;->C([F[F)F

    move-result v0

    mul-float/2addr p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public f(J[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "pos"
        }
    .end annotation

    iput-wide p1, p0, Lkn/f;->q:J

    iget-object p1, p0, Lkn/f;->r:[F

    invoke-static {p1, p3}, Ljn/g;->w([F[F)V

    const/4 p1, 0x0

    iput-object p1, p0, Lkn/f;->s:Lkn/q;

    iget-wide p1, p0, Lkn/f;->q:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    sget-object p1, Lkn/f$b;->DT_CROWDAGENT_TARGET_REQUESTING:Lkn/f$b;

    iput-object p1, p0, Lkn/f;->p:Lkn/f$b;

    goto :goto_0

    :cond_0
    sget-object p1, Lkn/f$b;->DT_CROWDAGENT_TARGET_FAILED:Lkn/f$b;

    iput-object p1, p0, Lkn/f;->p:Lkn/f$b;

    :goto_0
    return-void
.end method

.class public Lcom/google/android/filament/ColorGrading$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/ColorGrading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/ColorGrading$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/ColorGrading$a$a;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/ColorGrading;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    new-instance v2, Lcom/google/android/filament/ColorGrading$a$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/ColorGrading$a$a;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/ColorGrading$a;->a:Lcom/google/android/filament/ColorGrading$a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/ColorGrading;
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/ColorGrading;->a(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/ColorGrading;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/ColorGrading;-><init>(J)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create ColorGrading"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([F[F[F)Lcom/google/android/filament/ColorGrading$a;
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/filament/c;->f([F)V

    invoke-static {p2}, Lcom/google/android/filament/c;->f([F)V

    invoke-static {p3}, Lcom/google/android/filament/c;->f([F)V

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->b(J[F[F[F)V

    return-object p0
.end method

.method public c(F)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->c(JF)V

    return-object p0
.end method

.method public d([F[F[F)Lcom/google/android/filament/ColorGrading$a;
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/filament/c;->f([F)V

    invoke-static {p2}, Lcom/google/android/filament/c;->f([F)V

    invoke-static {p3}, Lcom/google/android/filament/c;->f([F)V

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->d(J[F[F[F)V

    return-object p0
.end method

.method public e(Ljava/nio/Buffer;I)Lcom/google/android/filament/ColorGrading$a;
    .locals 2
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/ColorGrading;->e(JLjava/nio/Buffer;I)V

    return-object p0
.end method

.method public f(I)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->f(JI)V

    return-object p0
.end method

.method public g(F)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->g(JF)V

    return-object p0
.end method

.method public h(Z)Lcom/google/android/filament/ColorGrading$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->h(JZ)V

    return-object p0
.end method

.method public i(Lcom/google/android/filament/ColorGrading$b;)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->i(JI)V

    return-object p0
.end method

.method public j(Z)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->j(JZ)V

    return-object p0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    return-wide v0
.end method

.method public l(Z)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->k(JZ)V

    return-object p0
.end method

.method public m(F)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->l(JF)V

    return-object p0
.end method

.method public n(Lcom/google/android/filament/ColorGrading$c;)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->m(JI)V

    return-object p0
.end method

.method public o(F)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->n(JF)V

    return-object p0
.end method

.method public p([F[F[F[F)Lcom/google/android/filament/ColorGrading$a;
    .locals 6
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/filament/c;->h([F)V

    invoke-static {p2}, Lcom/google/android/filament/c;->h([F)V

    invoke-static {p3}, Lcom/google/android/filament/c;->h([F)V

    invoke-static {p4}, Lcom/google/android/filament/c;->h([F)V

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/ColorGrading;->o(J[F[F[F[F)V

    return-object p0
.end method

.method public q([F[F[F)Lcom/google/android/filament/ColorGrading$a;
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/filament/c;->f([F)V

    invoke-static {p2}, Lcom/google/android/filament/c;->f([F)V

    invoke-static {p3}, Lcom/google/android/filament/c;->f([F)V

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->p(J[F[F[F)V

    return-object p0
.end method

.method public r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/ToneMapper;->q()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/ColorGrading;->q(JJ)V

    return-object p0
.end method

.method public s(Lcom/google/android/filament/ColorGrading$d;)Lcom/google/android/filament/ColorGrading$a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->r(JI)V

    return-object p0
.end method

.method public t(F)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->s(JF)V

    return-object p0
.end method

.method public u(FF)Lcom/google/android/filament/ColorGrading$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/ColorGrading;->t(JFF)V

    return-object p0
.end method

.class public Lcom/google/android/filament/utils/Manipulator$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/Manipulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/Manipulator$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/utils/Manipulator$a$a;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/utils/Manipulator;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    new-instance v2, Lcom/google/android/filament/utils/Manipulator$a$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/utils/Manipulator$a$a;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/utils/Manipulator$a;->a:Lcom/google/android/filament/utils/Manipulator$a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/utils/Manipulator$d;)Lcom/google/android/filament/utils/Manipulator;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->a(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/utils/Manipulator;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator;-><init>(JLn0/n;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Manipulator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(F)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->b(JF)V

    return-object p0
.end method

.method public c(F)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->c(JF)V

    return-object p0
.end method

.method public d(F)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->d(JF)V

    return-object p0
.end method

.method public e(FF)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->e(JFF)V

    return-object p0
.end method

.method public f(I)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->f(JI)V

    return-object p0
.end method

.method public g(FF)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->g(JFF)V

    return-object p0
.end method

.method public h(FFF)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->h(JFFF)V

    return-object p0
.end method

.method public i(F)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->i(JF)V

    return-object p0
.end method

.method public j(Lcom/google/android/filament/utils/Manipulator$b;)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->j(JI)V

    return-object p0
.end method

.method public k(FFFF)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/utils/Manipulator;->k(JFFFF)V

    return-object p0
.end method

.method public l(FF)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->l(JFF)V

    return-object p0
.end method

.method public m(F)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->m(JF)V

    return-object p0
.end method

.method public n(FFF)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->n(JFFF)V

    return-object p0
.end method

.method public o(FF)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->o(JFF)V

    return-object p0
.end method

.method public p(Ljava/lang/Boolean;)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->p(JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public q(FFF)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->q(JFFF)V

    return-object p0
.end method

.method public r(FFF)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->r(JFFF)V

    return-object p0
.end method

.method public s(II)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->s(JII)V

    return-object p0
.end method

.method public t(F)Lcom/google/android/filament/utils/Manipulator$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->t(JF)V

    return-object p0
.end method

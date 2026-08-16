.class public final Lkotlin/time/I$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/g;


# annotations
.annotation runtime LLf/h;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/I$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lnf/T0;
    markerClass = {
        Lkotlin/time/o;
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.9"
.end annotation


# instance fields
.field public final b:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/I$b$a;->b:J

    return-void
.end method

.method public static final synthetic d(J)Lkotlin/time/I$b$a;
    .locals 1

    new-instance v0, Lkotlin/time/I$b$a;

    invoke-direct {v0, p0, p1}, Lkotlin/time/I$b$a;-><init>(J)V

    return-object v0
.end method

.method public static final e(JJ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlin/time/I$b$a;->r(JJ)J

    move-result-wide p0

    sget-object p2, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p2}, Lkotlin/time/h$a;->W()J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lkotlin/time/h;->m(JJ)I

    move-result p0

    return p0
.end method

.method public static g(JLkotlin/time/g;)I
    .locals 1
    .param p2    # Lkotlin/time/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/time/I$b$a;->d(J)Lkotlin/time/I$b$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lkotlin/time/I$b$a;->n0(Lkotlin/time/g;)I

    move-result p0

    return p0
.end method

.method public static h(J)J
    .locals 0

    return-wide p0
.end method

.method public static i(J)J
    .locals 1

    sget-object v0, Lkotlin/time/F;->b:Lkotlin/time/F;

    invoke-virtual {v0, p0, p1}, Lkotlin/time/F;->d(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static j(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lkotlin/time/I$b$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lkotlin/time/I$b$a;

    invoke-virtual {p2}, Lkotlin/time/I$b$a;->y()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final k(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(J)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/I$b$a;->i(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/h;->T(J)Z

    move-result p0

    return p0
.end method

.method public static o(J)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/I$b$a;->i(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/h;->T(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static q(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static final r(JJ)J
    .locals 1

    sget-object v0, Lkotlin/time/F;->b:Lkotlin/time/F;

    invoke-virtual {v0, p0, p1, p2, p3}, Lkotlin/time/F;->c(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static t(JJ)J
    .locals 1

    sget-object v0, Lkotlin/time/F;->b:Lkotlin/time/F;

    invoke-static {p2, p3}, Lkotlin/time/h;->l0(J)J

    move-result-wide p2

    invoke-virtual {v0, p0, p1, p2, p3}, Lkotlin/time/F;->b(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static u(JLkotlin/time/g;)J
    .locals 3
    .param p2    # Lkotlin/time/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lkotlin/time/I$b$a;

    if-eqz v0, :cond_0

    check-cast p2, Lkotlin/time/I$b$a;

    invoke-virtual {p2}, Lkotlin/time/I$b$a;->y()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/I$b$a;->r(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtracting or comparing time marks from different time sources is not possible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lkotlin/time/I$b$a;->x(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(JJ)J
    .locals 1

    sget-object v0, Lkotlin/time/F;->b:Lkotlin/time/F;

    invoke-virtual {v0, p0, p1, p2, p3}, Lkotlin/time/F;->b(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static x(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueTimeMark(reading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/I$b$a;->b:J

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Z
    .locals 2

    iget-wide v0, p0, Lkotlin/time/I$b$a;->b:J

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->m(J)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    iget-wide v0, p0, Lkotlin/time/I$b$a;->b:J

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->o(J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/time/g;

    invoke-virtual {p0, p1}, Lkotlin/time/I$b$a;->n0(Lkotlin/time/g;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lkotlin/time/I$b$a;->b:J

    invoke-static {v0, v1, p1}, Lkotlin/time/I$b$a;->j(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic f(J)Lkotlin/time/H;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lkotlin/time/I$b$a;->v(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/time/I$b$a;->d(J)Lkotlin/time/I$b$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(J)Lkotlin/time/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlin/time/I$b$a;->v(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/time/I$b$a;->d(J)Lkotlin/time/I$b$a;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/time/I$b$a;->b:J

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->q(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic l(J)Lkotlin/time/H;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lkotlin/time/I$b$a;->s(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/time/I$b$a;->d(J)Lkotlin/time/I$b$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(J)Lkotlin/time/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlin/time/I$b$a;->s(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/time/I$b$a;->d(J)Lkotlin/time/I$b$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge n0(Lkotlin/time/g;)I
    .locals 0
    .param p1    # Lkotlin/time/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/time/g$a;->a(Lkotlin/time/g;Lkotlin/time/g;)I

    move-result p1

    return p1
.end method

.method public p(Lkotlin/time/g;)J
    .locals 2
    .param p1    # Lkotlin/time/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lkotlin/time/I$b$a;->b:J

    invoke-static {v0, v1, p1}, Lkotlin/time/I$b$a;->u(JLkotlin/time/g;)J

    move-result-wide v0

    return-wide v0
.end method

.method public s(J)J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/I$b$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/I$b$a;->t(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lkotlin/time/I$b$a;->b:J

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->x(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(J)J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/I$b$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/I$b$a;->w(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic y()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/I$b$a;->b:J

    return-wide v0
.end method

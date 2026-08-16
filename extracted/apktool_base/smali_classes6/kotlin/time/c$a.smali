.class public final Lkotlin/time/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,210:1\n80#2:211\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n*L\n67#1:211\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,210:1\n80#2:211\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n*L\n67#1:211\n*E\n"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Lkotlin/time/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>(JLkotlin/time/c;J)V
    .locals 1

    const-string v0, "timeSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/c$a;->b:J

    iput-object p3, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    iput-wide p4, p0, Lkotlin/time/c$a;->d:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/time/c;JLkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lkotlin/time/c$a;-><init>(JLkotlin/time/c;J)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    iget-object v0, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    invoke-static {v0}, Lkotlin/time/c;->c(Lkotlin/time/c;)J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/c$a;->b:J

    iget-object v4, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    invoke-virtual {v4}, Lkotlin/time/c;->e()Lkotlin/time/k;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/time/C;->h(JJLkotlin/time/k;)J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/c$a;->d:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/h;->V(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge b()Z
    .locals 1

    invoke-static {p0}, Lkotlin/time/g$a;->b(Lkotlin/time/g;)Z

    move-result v0

    return v0
.end method

.method public bridge c()Z
    .locals 1

    invoke-static {p0}, Lkotlin/time/g$a;->c(Lkotlin/time/g;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/time/g;

    invoke-virtual {p0, p1}, Lkotlin/time/c$a;->n0(Lkotlin/time/g;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lkotlin/time/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    move-object v1, p1

    check-cast v1, Lkotlin/time/c$a;

    iget-object v1, v1, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/time/g;

    invoke-virtual {p0, p1}, Lkotlin/time/c$a;->p(Lkotlin/time/g;)J

    move-result-wide v0

    sget-object p1, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p1}, Lkotlin/time/h$a;->W()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/h;->u(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic f(J)Lkotlin/time/H;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlin/time/c$a;->f(J)Lkotlin/time/g;

    move-result-object p1

    return-object p1
.end method

.method public f(J)Lkotlin/time/g;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    invoke-virtual {v0}, Lkotlin/time/c;->e()Lkotlin/time/k;

    move-result-object v0

    .line 3
    invoke-static {p1, p2}, Lkotlin/time/h;->S(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-wide v1, p0, Lkotlin/time/c$a;->b:J

    invoke-static {v1, v2, v0, p1, p2}, Lkotlin/time/C;->d(JLkotlin/time/k;J)J

    move-result-wide v4

    .line 5
    new-instance p1, Lkotlin/time/c$a;

    iget-object v6, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    sget-object p2, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p2}, Lkotlin/time/h$a;->W()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lkotlin/time/c$a;-><init>(JLkotlin/time/c;JLkotlin/jvm/internal/x;)V

    return-object p1

    .line 6
    :cond_0
    invoke-static {p1, p2, v0}, Lkotlin/time/h;->k0(JLkotlin/time/k;)J

    move-result-wide v1

    .line 7
    invoke-static {p1, p2, v1, v2}, Lkotlin/time/h;->V(JJ)J

    move-result-wide p1

    iget-wide v3, p0, Lkotlin/time/c$a;->d:J

    invoke-static {p1, p2, v3, v4}, Lkotlin/time/h;->W(JJ)J

    move-result-wide p1

    .line 8
    iget-wide v3, p0, Lkotlin/time/c$a;->b:J

    invoke-static {v3, v4, v0, v1, v2}, Lkotlin/time/C;->d(JLkotlin/time/k;J)J

    move-result-wide v1

    .line 9
    invoke-static {p1, p2, v0}, Lkotlin/time/h;->k0(JLkotlin/time/k;)J

    move-result-wide v3

    .line 10
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/time/C;->d(JLkotlin/time/k;J)J

    move-result-wide v1

    .line 11
    invoke-static {p1, p2, v3, v4}, Lkotlin/time/h;->V(JJ)J

    move-result-wide p1

    .line 12
    invoke-static {p1, p2}, Lkotlin/time/h;->D(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    xor-long v7, v1, v3

    cmp-long v5, v7, v5

    if-gez v5, :cond_1

    .line 13
    invoke-static {v3, v4}, LRf/d;->V(J)I

    move-result v3

    invoke-static {v3, v0}, Lkotlin/time/j;->O(ILkotlin/time/k;)J

    move-result-wide v3

    .line 14
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/time/C;->d(JLkotlin/time/k;J)J

    move-result-wide v1

    .line 15
    invoke-static {p1, p2, v3, v4}, Lkotlin/time/h;->V(JJ)J

    move-result-wide p1

    :cond_1
    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    or-long/2addr v3, v5

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 16
    sget-object p1, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p1}, Lkotlin/time/h$a;->W()J

    move-result-wide p1

    :cond_2
    move-wide v4, p1

    .line 17
    new-instance p1, Lkotlin/time/c$a;

    iget-object v3, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/time/c$a;-><init>(JLkotlin/time/c;JLkotlin/jvm/internal/x;)V

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lkotlin/time/c$a;->d:J

    invoke-static {v0, v1}, Lkotlin/time/h;->O(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lkotlin/time/c$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic l(J)Lkotlin/time/H;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lkotlin/time/c$a;->l(J)Lkotlin/time/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge l(J)Lkotlin/time/g;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/time/g$a;->d(Lkotlin/time/g;J)Lkotlin/time/g;

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
    .locals 6
    .param p1    # Lkotlin/time/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlin/time/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    move-object v1, p1

    check-cast v1, Lkotlin/time/c$a;

    iget-object v2, v1, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lkotlin/time/c$a;->b:J

    iget-wide v4, v1, Lkotlin/time/c$a;->b:J

    iget-object p1, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    invoke-virtual {p1}, Lkotlin/time/c;->e()Lkotlin/time/k;

    move-result-object p1

    invoke-static {v2, v3, v4, v5, p1}, Lkotlin/time/C;->h(JJLkotlin/time/k;)J

    move-result-wide v2

    iget-wide v4, p0, Lkotlin/time/c$a;->d:J

    iget-wide v0, v1, Lkotlin/time/c$a;->d:J

    invoke-static {v4, v5, v0, v1}, Lkotlin/time/h;->V(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lkotlin/time/h;->W(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtracting or comparing time marks from different time sources is not possible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongTimeMark("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/time/c$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    invoke-virtual {v1}, Lkotlin/time/c;->e()Lkotlin/time/k;

    move-result-object v1

    invoke-static {v1}, Lkotlin/time/n;->i(Lkotlin/time/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/time/c$a;->d:J

    invoke-static {v1, v2}, Lkotlin/time/h;->h0(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/time/c$a;->c:Lkotlin/time/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

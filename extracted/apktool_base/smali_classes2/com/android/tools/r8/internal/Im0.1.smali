.class public Lcom/android/tools/r8/internal/Im0;
.super Lcom/android/tools/r8/internal/Bm0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Bh;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Bm0;-><init>()V

    iput-wide p1, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    return-wide v0
.end method

.method public final G()Lcom/android/tools/r8/internal/Bh;
    .locals 0

    return-object p0
.end method

.method public final R()I
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v0, v0

    return v0
.end method

.method public final S()I
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v0, v0

    not-int v0, v0

    return v0
.end method

.method public final V()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final Z()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)Lcom/android/tools/r8/internal/qh;
    .locals 3

    .line 23
    invoke-interface {p3}, Lcom/android/tools/r8/internal/DV;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-interface {p3}, Lcom/android/tools/r8/internal/DV;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    invoke-interface {p3}, Lcom/android/tools/r8/internal/DV;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    .line 24
    sget-boolean v2, Lcom/android/tools/r8/internal/Im0;->d:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 26
    new-instance v2, Lcom/android/tools/r8/internal/ph;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ph;-><init>()V

    .line 27
    invoke-interface {p2, v0, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 28
    iput-object p2, v2, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {v2, p3, p1}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ph;

    iget-wide p2, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 30
    iput-wide p2, p1, Lcom/android/tools/r8/internal/ph;->d:J

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    return-object p1
.end method

.method public final a([I)Lcom/android/tools/r8/internal/t40;
    .locals 5

    .line 5
    iget-wide v0, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v0, v0

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 7
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    if-ne v4, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Z
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v0, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 4
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Bh;)Z
    .locals 3

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    instance-of v1, v0, Lcom/android/tools/r8/internal/Jj;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 12
    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/Im0;

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Bh;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 14
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/Im0;->d:Z

    if-nez v1, :cond_4

    .line 15
    instance-of v1, v0, Lcom/android/tools/r8/internal/x10;

    if-nez v1, :cond_4

    .line 16
    instance-of v0, v0, Lcom/android/tools/r8/internal/y10;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_4
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Bh;->k()Lcom/android/tools/r8/internal/F00;

    move-result-object p1

    .line 19
    iget-wide v0, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v0, v0

    .line 20
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/Bh;->a(I)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/Im0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    const/4 p2, 0x1

    .line 22
    new-array p2, p2, [Lcom/android/tools/r8/internal/zE;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    return-object p2
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    return-object p0
.end method

.method public final c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;
    .locals 0

    return-object p0
.end method

.method public final c0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Im0;->Z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Im0;->h0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h0()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j0()Z
    .locals 7

    sget-boolean v0, Lcom/android/tools/r8/internal/Im0;->d:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Im0;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Im0;->c:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleNumberValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

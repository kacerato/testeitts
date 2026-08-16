.class public final Lcom/android/tools/r8/graph/D0;
.super Lcom/android/tools/r8/graph/d4;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;
.implements Lcom/android/tools/r8/internal/YS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/d4;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/D0;",
        ">;",
        "Lcom/android/tools/r8/internal/YS;"
    }
.end annotation


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/graph/L2;

.field public final f:Lcom/android/tools/r8/graph/I2;

.field public final g:Lcom/android/tools/r8/graph/C2;

.field public final h:Ljava/util/List;

.field public i:Lcom/android/tools/r8/graph/f1;

.field public j:Lcom/android/tools/r8/graph/A2;

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/C2;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/graph/d4;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/graph/D0;->i:Lcom/android/tools/r8/graph/f1;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/graph/D0;->k:I

    sget-boolean v0, Lcom/android/tools/r8/graph/D0;->l:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    iput-object p2, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iput-object p3, p0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    iput-object p4, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/D0;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/graph/D0;->j:Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/D0;
    .locals 4

    .line 9
    iget v0, p4, Lcom/android/tools/r8/internal/Qz;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/If;

    .line 11
    iget p1, p4, Lcom/android/tools/r8/internal/Qz;->a:I

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bootstrap handle invalid: tag == "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    :goto_0
    invoke-static {p4, p0, p1}, Lcom/android/tools/r8/graph/C2;->a(Lcom/android/tools/r8/internal/Qz;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/C2;

    move-result-object p4

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    array-length v1, p5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p5, v2

    .line 16
    invoke-static {v3, p0, p1, p6}, Lcom/android/tools/r8/graph/R2;->a(Ljava/lang/Object;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/R2;

    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 19
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/h4;->c(Ljava/lang/String;)Lcom/android/tools/r8/graph/I2;

    move-result-object p0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance p1, Lcom/android/tools/r8/graph/D0;

    invoke-direct {p1, p2, p0, p4, v0}, Lcom/android/tools/r8/graph/D0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/C2;Ljava/util/List;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/H6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/H6;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/I6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/I6;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/J6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/J6;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/K6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/K6;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/L6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/L6;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/M6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/M6;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->h(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/D0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/graph/D0;->k:I

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/D0;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/D0;)Lcom/android/tools/r8/graph/I2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    return-object p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/graph/D0;)Lcom/android/tools/r8/graph/C2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    return-object p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/graph/D0;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final R()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;)I
    .locals 0

    .line 35
    iget-object p1, p1, Lcom/android/tools/r8/graph/w5;->k:Lcom/android/tools/r8/internal/gd0;

    .line 36
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 34
    check-cast p1, Lcom/android/tools/r8/graph/D0;

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/D0;->m0()Lcom/android/tools/r8/graph/f1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/f1;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 2

    .line 22
    invoke-interface {p2, p0}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/D0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-interface {p2, v0}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-interface {p2, v0}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 28
    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/C2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/R2;

    .line 31
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final i0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/D0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k0()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public l0()Lcom/android/tools/r8/graph/C2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/N6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/N6;-><init>()V

    return-object v0
.end method

.method public final m0()Lcom/android/tools/r8/graph/f1;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->i:Lcom/android/tools/r8/graph/f1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/android/tools/r8/graph/R2;

    new-instance v2, Lcom/android/tools/r8/graph/X2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/graph/X2;-><init>(Lcom/android/tools/r8/graph/C2;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/tools/r8/graph/R2$k;

    iget-object v3, p0, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/tools/r8/graph/Y2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/graph/Y2;-><init>(Lcom/android/tools/r8/graph/I2;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/R2;

    add-int/lit8 v4, v1, 0x1

    aput-object v3, v0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/graph/f1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/f1;-><init>([Lcom/android/tools/r8/graph/R2;)V

    iput-object v1, p0, Lcom/android/tools/r8/graph/D0;->i:Lcom/android/tools/r8/graph/f1;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->i:Lcom/android/tools/r8/graph/f1;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallSite: { Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Proto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, ", Args: "

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/n1;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/tools/r8/graph/O0$d;
.super Lcom/android/tools/r8/graph/O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final d:I

.field public final e:Lcom/android/tools/r8/graph/L2;

.field public final f:Lcom/android/tools/r8/graph/M2;

.field public final g:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/O0;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/O0$d;->d:I

    iput-object p2, p0, Lcom/android/tools/r8/graph/O0$d;->e:Lcom/android/tools/r8/graph/L2;

    iput-object p3, p0, Lcom/android/tools/r8/graph/O0$d;->f:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/graph/O0$d;->g:Lcom/android/tools/r8/graph/L2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/O0$d;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/tools/r8/graph/O0$d;->d:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/S9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/S9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/T9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/T9;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/U9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/U9;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/V9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/V9;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/O0$d;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/O0$d;->e:Lcom/android/tools/r8/graph/L2;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/O0$d;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/O0$d;->f:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/O0$d;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/O0$d;->g:Lcom/android/tools/r8/graph/L2;

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/O0;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/O0$d;->g:Lcom/android/tools/r8/graph/L2;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/u;->b(I)V

    .line 8
    iget v0, p0, Lcom/android/tools/r8/graph/O0$d;->d:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/u;->c(I)V

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/graph/O0$d;->e:Lcom/android/tools/r8/graph/L2;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/dex/u;->c(I)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v2, p1, Lcom/android/tools/r8/dex/u;->a:Lcom/android/tools/r8/graph/w5;

    .line 12
    iget-object v2, v2, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    .line 13
    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/u;->c(I)V

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/O0$d;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-nez p2, :cond_2

    .line 16
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/dex/u;->c(I)V

    goto :goto_2

    .line 17
    :cond_2
    iget-object p3, p1, Lcom/android/tools/r8/dex/u;->a:Lcom/android/tools/r8/graph/w5;

    .line 18
    iget-object p3, p3, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    .line 19
    invoke-static {p2, p3}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/u;->c(I)V

    .line 21
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/graph/O0$d;->g:Lcom/android/tools/r8/graph/L2;

    if-eqz p2, :cond_3

    .line 22
    iget-object p3, p1, Lcom/android/tools/r8/dex/u;->a:Lcom/android/tools/r8/graph/w5;

    .line 23
    iget-object p3, p3, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    .line 24
    invoke-static {p2, p3}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 25
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/u;->c(I)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/V0;)V
    .locals 0

    .line 33
    invoke-interface {p1, p0}, Lcom/android/tools/r8/graph/V0;->a(Lcom/android/tools/r8/graph/O0$d;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/graph/O0$d;->e:Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {p3, v0}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/O0$d;->f:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/O0$d;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 30
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/graph/O0$d;->g:Lcom/android/tools/r8/graph/L2;

    if-eqz p1, :cond_2

    .line 32
    invoke-interface {p3, p1}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    :cond_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/O0$d;

    new-instance v0, Lcom/android/tools/r8/graph/R9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/R9;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/R9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/R9;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/O0$d;->d:I

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/tools/r8/graph/O0$d;->e:Lcom/android/tools/r8/graph/L2;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/graph/O0$d;->f:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/graph/O0$d;->g:Lcom/android/tools/r8/graph/L2;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v1, v0

    return v1
.end method

.method public final n0()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/graph/O0$d;->d:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START_LOCAL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

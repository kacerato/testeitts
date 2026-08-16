.class public final Lcom/android/tools/r8/graph/X0;
.super Lcom/android/tools/r8/graph/W0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/Z0;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/W0;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/X0;->e:I

    iput p2, p0, Lcom/android/tools/r8/graph/X0;->f:I

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/X0;)I
    .locals 0

    .line 5
    iget p0, p0, Lcom/android/tools/r8/graph/X0;->e:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/graph/Qb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Qb;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Rb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Rb;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/X0;)I
    .locals 0

    iget p0, p0, Lcom/android/tools/r8/graph/X0;->f:I

    return p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/W0;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/graph/X0;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W0;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W0;->m0()Lcom/android/tools/r8/graph/X0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/Pb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Pb;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/W0;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W0;->n0()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/c;->b(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/X0;->a(Lcom/android/tools/r8/graph/W0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 11
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/Z0;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 4

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/u;->c(I)V

    .line 13
    iget v0, p0, Lcom/android/tools/r8/graph/X0;->e:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/u;->c(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 14
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/graph/X0;->e:I

    if-ge v1, v2, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/u;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p2, Lcom/android/tools/r8/graph/w5;->b:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->r:Lcom/android/tools/r8/graph/O0$b;

    .line 19
    sget-boolean v2, Lcom/android/tools/r8/graph/O0;->c:Z

    if-nez v2, :cond_1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    :cond_1
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/tools/r8/graph/O0$b;->a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    move v1, v0

    .line 22
    :goto_1
    iget v2, p0, Lcom/android/tools/r8/graph/X0;->f:I

    if-ge v1, v2, :cond_3

    .line 23
    iget-object v2, p2, Lcom/android/tools/r8/graph/w5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 24
    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->s:Lcom/android/tools/r8/graph/O0$b;

    .line 25
    sget-boolean v3, Lcom/android/tools/r8/graph/O0;->c:Z

    if-nez v3, :cond_2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    :cond_2
    invoke-virtual {v2, p1, p3, p4}, Lcom/android/tools/r8/graph/O0$b;->a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/u;->b(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/graph/Pb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Pb;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final h0()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/graph/X0;->e:I

    iget v1, p0, Lcom/android/tools/r8/graph/X0;->f:I

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v4

    add-int/2addr v4, v3

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    return v3
.end method

.method public final k0()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/X0;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/graph/X0;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final m0()Lcom/android/tools/r8/graph/X0;
    .locals 0

    return-object p0
.end method

.method public final n0()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final o0()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/X0;->e:I

    return v0
.end method

.method public final p0()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final s0()Lcom/android/tools/r8/graph/W0;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/graph/X0;->e:I

    iget v1, p0, Lcom/android/tools/r8/graph/X0;->f:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PcBasedDebugInfo (params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max-pc: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

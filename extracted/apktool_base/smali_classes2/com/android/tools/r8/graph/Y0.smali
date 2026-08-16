.class public final Lcom/android/tools/r8/graph/Y0;
.super Lcom/android/tools/r8/graph/W0$a;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/Z0;


# static fields
.field public static final synthetic i:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/graph/Y0;->i:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->r0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0$a;->l0()Lcom/android/tools/r8/graph/W0$a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    invoke-static {v0}, Lcom/android/tools/r8/internal/to;->a([Lcom/android/tools/r8/graph/O0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/Z0;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 5

    .line 10
    iget p2, p0, Lcom/android/tools/r8/graph/W0$a;->e:I

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/u;->c(I)V

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    array-length p2, p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/u;->c(I)V

    .line 12
    iget-object p2, p0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    if-nez v3, :cond_0

    .line 13
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/dex/u;->c(I)V

    goto :goto_1

    .line 14
    :cond_0
    iget-object v4, p1, Lcom/android/tools/r8/dex/u;->a:Lcom/android/tools/r8/graph/w5;

    .line 15
    iget-object v4, v4, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    .line 16
    invoke-static {v3, v4}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 17
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/dex/u;->c(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v0, p2

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    .line 19
    sget-boolean v4, Lcom/android/tools/r8/graph/O0;->c:Z

    if-nez v4, :cond_3

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O0;->o0()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_3
    :goto_3
    invoke-virtual {v3, p1, p3, p4}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/dex/u;->b(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 2
    invoke-interface {p3, v4}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final h0()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/W0$a;->e:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    array-length v1, v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

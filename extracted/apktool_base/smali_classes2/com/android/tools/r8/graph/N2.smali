.class public Lcom/android/tools/r8/graph/N2;
.super Lcom/android/tools/r8/graph/r0;
.source "SourceFile"


# instance fields
.field public final f:I

.field public final g:Lcom/android/tools/r8/internal/tu0;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/e1;ILcom/android/tools/r8/internal/tu0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    iput p3, p0, Lcom/android/tools/r8/graph/N2;->f:I

    iput-object p4, p0, Lcom/android/tools/r8/graph/N2;->g:Lcom/android/tools/r8/internal/tu0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 1

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Should not collect type annotation in DEX"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not collect type annotation in DEX"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/C9;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/C9;-><init>(Lcom/android/tools/r8/graph/N2;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/D9;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/D9;-><init>(Lcom/android/tools/r8/graph/N2;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->d(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/E9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/E9;-><init>()V

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final synthetic d(Lcom/android/tools/r8/graph/r0;)I
    .locals 0

    iget p1, p0, Lcom/android/tools/r8/graph/N2;->f:I

    return p1
.end method

.method public final e(Lcom/android/tools/r8/graph/r0;)[I
    .locals 6

    iget-object p1, p0, Lcom/android/tools/r8/graph/N2;->g:Lcom/android/tools/r8/internal/tu0;

    iget-object v0, p1, Lcom/android/tools/r8/internal/tu0;->a:[B

    iget p1, p1, Lcom/android/tools/r8/internal/tu0;->b:I

    aget-byte p1, v0, p1

    mul-int/lit8 p1, p1, 0x2

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lcom/android/tools/r8/graph/N2;->g:Lcom/android/tools/r8/internal/tu0;

    iget-object v4, v3, Lcom/android/tools/r8/internal/tu0;->a:[B

    iget v3, v3, Lcom/android/tools/r8/internal/tu0;->b:I

    add-int/2addr v3, v2

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v4, v5

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, v4, v3

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final k0()Lcom/android/tools/r8/graph/N2;
    .locals 0

    return-object p0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/B9;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/B9;-><init>(Lcom/android/tools/r8/graph/N2;)V

    return-object v0
.end method

.method public final n0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

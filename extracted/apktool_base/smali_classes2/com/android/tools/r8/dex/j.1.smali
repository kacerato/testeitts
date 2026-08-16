.class public final Lcom/android/tools/r8/dex/j;
.super Lcom/android/tools/r8/dex/X;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/naming/r0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/r0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/dex/X;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/j;->a:Lcom/android/tools/r8/naming/r0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/s0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/O2;)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/Z0;)Z
    .locals 0

    .line 4
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f1;)Z
    .locals 3

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/graph/f1;->b:[Lcom/android/tools/r8/graph/R2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->V0()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 5
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/r0;)Z
    .locals 0

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e1;->l0()V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u0;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/dex/j;->a:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/naming/r0;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/z5;)Z
    .locals 0

    .line 6
    const/4 p1, 0x1

    return p1
.end method

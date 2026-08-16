.class public abstract Lcom/android/tools/r8/dex/X;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/s0;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;)Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/O2;)Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/Z0;)Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/f1;)Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/j1;)Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/r0;)Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/u0;)Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/z5;)Z
.end method

.method public b(Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->R0()Lcom/android/tools/r8/graph/f3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/dex/X;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/u0;)Z

    iget-object v0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;[Lcom/android/tools/r8/graph/n1;)V

    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    iget-object v0, p1, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;[Lcom/android/tools/r8/graph/n1;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/z5;)Z

    return-void
.end method

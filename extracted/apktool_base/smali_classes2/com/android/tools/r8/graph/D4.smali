.class public interface abstract Lcom/android/tools/r8/graph/D4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/I4;


# virtual methods
.method public a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract d()Lcom/android/tools/r8/graph/j1;
.end method

.method public e()Lcom/android/tools/r8/graph/D4;
    .locals 0

    return-object p0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract getHolder()Lcom/android/tools/r8/graph/E0;
.end method

.method public abstract getReference()Lcom/android/tools/r8/graph/A2;
.end method

.method public abstract l()Lcom/android/tools/r8/graph/H0;
.end method

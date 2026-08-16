.class public interface abstract Lcom/android/tools/r8/graph/n5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# virtual methods
.method public a(Lcom/android/tools/r8/graph/n5;Lcom/android/tools/r8/naming/r0;)I
    .locals 3

    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->E()Lcom/android/tools/r8/internal/Mq0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/n5;

    new-instance v1, Lcom/android/tools/r8/graph/af;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/af;-><init>()V

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/sf;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/sf;-><init>(Lcom/android/tools/r8/naming/r0;)V

    invoke-interface {v1, v0, p1, v2}, Lcom/android/tools/r8/internal/Kq0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

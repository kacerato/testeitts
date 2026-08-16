.class public abstract Lcom/android/tools/r8/internal/aS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/p;
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->z:Lcom/android/tools/r8/internal/bS;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/bS;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object p1, p1, Lcom/android/tools/r8/kotlin/g;->c:Lcom/android/tools/r8/kotlin/d;

    iget-object p1, p1, Lcom/android/tools/r8/kotlin/d;->d:Lcom/android/tools/r8/graph/A2;

    if-eq v0, p1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object p1, p1, Lcom/android/tools/r8/kotlin/g;->c:Lcom/android/tools/r8/kotlin/d;

    iget-object p1, p1, Lcom/android/tools/r8/kotlin/d;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/aS;->a:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object p0, p0, Lcom/android/tools/r8/graph/G1;->p:Lcom/android/tools/r8/internal/QC;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    return-object p0
.end method

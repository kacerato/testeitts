.class public abstract Lcom/android/tools/r8/internal/dD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Gx;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/q81;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/q81;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Gx;->b(Ljava/util/function/Consumer;)V

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/r81;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r81;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Gx;->c(Ljava/util/function/Consumer;)V

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/s81;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/s81;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Gx;->a(Ljava/util/function/Consumer;)V

    .line 6
    new-instance p0, Lcom/android/tools/r8/internal/t81;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/t81;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ix;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Kx;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/Jx;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/Jx;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/dD;->a:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Jx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

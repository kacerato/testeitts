.class public abstract Lcom/android/tools/r8/internal/i6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 3

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/Pd1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/Pd1;-><init>(Lcom/android/tools/r8/internal/i6;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/i6;->a(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/i6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Yx0;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Yx0;)Ljava/util/Set;
    .locals 1

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/i6;->a:Z

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 14
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/oB0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/oB0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/i6;->a(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p2, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    return-object p1
.end method

.method public final synthetic a(Ljava/util/Set;Ljava/util/List;Ljava/lang/Object;)V
    .locals 1

    .line 6
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/i6;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    .line 8
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public abstract a(Ljava/util/function/Consumer;)V
.end method

.method public abstract a(Ljava/util/function/Consumer;Ljava/lang/Object;)V
.end method

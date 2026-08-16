.class public abstract Lcom/android/tools/r8/internal/xK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/util/Iterator;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/wy1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/wy1;-><init>(Lcom/android/tools/r8/internal/IH;)V

    invoke-interface {p0, v1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 2

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 15
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 2

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/ListIterator;)Ljava/lang/Object;
    .locals 2

    .line 8
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    .line 11
    sget-boolean v1, Lcom/android/tools/r8/internal/xK;->a:Z

    if-nez v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/EE;I)V
    .locals 1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le v0, p1, :cond_1

    .line 17
    invoke-interface {p0}, Lcom/android/tools/r8/internal/AE;->previous()Lcom/android/tools/r8/internal/zE;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/IH;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IH;->c()V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Z5;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/util/ListIterator;)Ljava/lang/Object;
    .locals 2

    .line 4
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/internal/xK;->a:Z

    if-nez v1, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

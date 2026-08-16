.class public interface abstract Lcom/android/tools/r8/internal/C40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ev;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/tools/r8/internal/C40<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/ev<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/B40;->a:Z

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/tools/r8/internal/C40<",
            "TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static c(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/tools/r8/internal/C40<",
            "TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-object p0

    :cond_2
    return-object p1
.end method

.method public static d(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/tools/r8/internal/C40<",
            "TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/C40;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/B40;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-eq p0, p1, :cond_3

    .line 2
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->compareTo(Lcom/android/tools/r8/internal/C40;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 3
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/android/tools/r8/internal/C40;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->compareTo(Lcom/android/tools/r8/internal/C40;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/android/tools/r8/internal/C40;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->compareTo(Lcom/android/tools/r8/internal/C40;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract compareTo(Lcom/android/tools/r8/internal/C40;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/C40;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->compareTo(Lcom/android/tools/r8/internal/C40;)I

    move-result p1

    return p1
.end method

.method public d(Lcom/android/tools/r8/internal/C40;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->compareTo(Lcom/android/tools/r8/internal/C40;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Lcom/android/tools/r8/internal/C40;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->compareTo(Lcom/android/tools/r8/internal/C40;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic isEqualTo(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/C40;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->a(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    return p1
.end method

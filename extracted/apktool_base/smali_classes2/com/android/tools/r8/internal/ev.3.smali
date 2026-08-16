.class public interface abstract Lcom/android/tools/r8/internal/ev;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/dv;->a:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/tools/r8/internal/ev<",
            "TT;>;>(TT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    sget-boolean v0, Lcom/android/tools/r8/internal/dv;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    check-cast p1, Lcom/android/tools/r8/internal/ev;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/ev;->isEqualTo(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract isEqualTo(Ljava/lang/Object;)Z
.end method

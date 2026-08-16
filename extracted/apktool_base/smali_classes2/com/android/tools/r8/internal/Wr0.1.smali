.class public interface abstract Lcom/android/tools/r8/internal/Wr0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static a()Lcom/android/tools/r8/internal/Wr0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcom/android/tools/r8/internal/Wr0<",
            "TT;TE;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/v11;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/v11;-><init>()V

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/RuntimeException;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 5
    :goto_0
    throw p1
.end method

.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

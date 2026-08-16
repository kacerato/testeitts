.class public abstract Lcom/android/tools/r8/internal/Zr0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/as0;)I
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zr0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zr0;->b()I

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/as0;->a()I

    move-result p1

    return p1
.end method

.method public a(Ljava/util/function/IntConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntConsumer;",
            ")V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zr0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zr0;->b()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract b()I
.end method

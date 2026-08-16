.class public interface abstract Lcom/android/tools/r8/internal/Yx;
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
.method public static synthetic a(Lcom/android/tools/r8/internal/ZH;Lcom/android/tools/r8/internal/IH;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IH;->b()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/ZH;->a(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/ZH;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/I31;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/I31;-><init>(Lcom/android/tools/r8/internal/ZH;Lcom/android/tools/r8/internal/IH;)V

    invoke-interface {p0, v1}, Lcom/android/tools/r8/internal/Yx;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation
.end method

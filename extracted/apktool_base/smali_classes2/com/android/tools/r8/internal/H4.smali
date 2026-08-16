.class public abstract Lcom/android/tools/r8/internal/H4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0

    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/function/Consumer;)Ljava/util/function/Function;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/oG0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/oG0;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)Ljava/util/function/Supplier;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/pG0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pG0;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

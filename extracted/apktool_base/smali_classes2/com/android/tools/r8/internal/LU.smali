.class public abstract Lcom/android/tools/r8/internal/LU;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/naming/Q;Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/naming/Q;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/Q;

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/KU;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/KU;-><init>(Lcom/android/tools/r8/naming/Q;Lcom/android/tools/r8/naming/Q;)V

    return-object p2
.end method

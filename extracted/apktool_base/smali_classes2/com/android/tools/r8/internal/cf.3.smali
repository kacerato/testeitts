.class public abstract Lcom/android/tools/r8/internal/cf;
.super Lcom/android/tools/r8/internal/bf;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Iterable;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

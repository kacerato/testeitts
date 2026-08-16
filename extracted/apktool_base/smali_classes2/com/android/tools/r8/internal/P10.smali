.class public abstract Lcom/android/tools/r8/internal/P10;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)Z
    .locals 2

    const-wide/16 v0, -0x8000

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x7fff

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.class public abstract Lcom/android/tools/r8/internal/pg0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/ng0;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ng0;->b()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/ng0;->a(Z)V

    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

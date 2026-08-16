.class public abstract Lcom/android/tools/r8/naming/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/naming/T0;
    .locals 2

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p0, Lcom/android/tools/r8/naming/T0;

    const-string v0, "SourceFile"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/naming/T0;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "SourceFile"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

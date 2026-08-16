.class public abstract Lcom/android/tools/r8/internal/ml0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/Uq0;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ll1;

    const-string v1, "Using an artificial version newer than any known version for selecting Proguard configurations embedded under META-INF/. This means that all rules with a \'-upto-\' qualifier will be excluded and all rules with a -from- qualifier will be included."

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/internal/ll1;-><init>(Lcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;Ljava/lang/String;)V

    .line 2
    instance-of p0, v0, Ljava/io/Serializable;

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Lcom/android/tools/r8/internal/Wq0;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Wq0;-><init>(Lcom/android/tools/r8/internal/Uq0;)V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/Xq0;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Xq0;-><init>(Lcom/android/tools/r8/internal/Uq0;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;Ljava/lang/String;)Lcom/android/tools/r8/internal/ll0;
    .locals 3

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/tools/r8/Version;->getMajorVersion()I

    move-result p0

    .line 6
    invoke-static {}, Lcom/android/tools/r8/Version;->getMinorVersion()I

    move-result v0

    .line 7
    invoke-static {}, Lcom/android/tools/r8/Version;->getPatchVersion()I

    move-result v1

    .line 8
    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/internal/ll0;->a(III)Lcom/android/tools/r8/internal/ll0;

    move-result-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ll0;->a()I

    move-result v0

    if-gez v0, :cond_2

    const p0, 0x7fffffff

    .line 10
    invoke-static {p0, p0, p0}, Lcom/android/tools/r8/internal/ll0;->a(III)Lcom/android/tools/r8/internal/ll0;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1

    .line 12
    const-string p2, ""

    goto :goto_0

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running R8 version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", which cannot be represented as a semantic version."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

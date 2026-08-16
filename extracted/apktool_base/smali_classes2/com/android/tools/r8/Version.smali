.class public final Lcom/android/tools/r8/Version;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LABEL:Ljava/lang/String; = "8.10.21"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 2

    .line 2
    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v0, 0x2e

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    .line 5
    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-dev"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 3

    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x2d

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getMajorVersion()I
    .locals 1

    const-string v0, "8.10.21"

    invoke-static {v0}, Lcom/android/tools/r8/Version;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMinorVersion()I
    .locals 1

    const-string v0, "8.10.21"

    invoke-static {v0}, Lcom/android/tools/r8/Version;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPatchVersion()I
    .locals 1

    const-string v0, "8.10.21"

    invoke-static {v0}, Lcom/android/tools/r8/Version;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPreReleaseString()Ljava/lang/String;
    .locals 1

    const-string v0, "8.10.21"

    invoke-static {v0}, Lcom/android/tools/r8/Version;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/Ww0;->c:Lcom/android/tools/r8/internal/Ww0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ww0;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8.10.21 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDevelopmentVersion()Z
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/Ww0;->c:Lcom/android/tools/r8/internal/Ww0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ww0;->c()Z

    move-result v0

    const-string v1, "8.10.21"

    invoke-static {v1, v0}, Lcom/android/tools/r8/Version;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.class public final Lcom/android/tools/r8/internal/HQ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:Lcom/android/tools/r8/internal/GQ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KmVersionRequirement(kind="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/tools/r8/internal/HQ;->a:I

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const-string v3, "null"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v7, 0x4

    if-eq v1, v7, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_1
    const-string v1, "API_VERSION"

    goto :goto_0

    :cond_2
    const-string v1, "COMPILER_VERSION"

    goto :goto_0

    :cond_3
    const-string v1, "LANGUAGE_VERSION"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/HQ;->b:I

    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "HIDDEN"

    goto :goto_1

    :cond_5
    const-string v3, "ERROR"

    goto :goto_1

    :cond_6
    const-string v3, "WARNING"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HQ;->e:Lcom/android/tools/r8/internal/GQ;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HQ;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HQ;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "version"

    invoke-static {v0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string v0, "level"

    invoke-static {v0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    throw v2

    :cond_9
    const-string v0, "kind"

    invoke-static {v0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    throw v2
.end method

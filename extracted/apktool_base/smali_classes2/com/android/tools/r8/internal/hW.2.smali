.class public final Lcom/android/tools/r8/internal/hW;
.super Lcom/android/tools/r8/internal/E;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:I

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "SHA-256"

    invoke-direct {p0}, Lcom/android/tools/r8/internal/E;-><init>()V

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object v0, p0, Lcom/android/tools/r8/internal/hW;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    iput v1, p0, Lcom/android/tools/r8/internal/hW;->c:I

    const-string v1, "Hashing.sha256()"

    iput-object v1, p0, Lcom/android/tools/r8/internal/hW;->e:Ljava/lang/String;

    :try_start_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/hW;->d:Z

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/lA;
    .locals 3

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hW;->d:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/android/tools/r8/internal/gW;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hW;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    iget v2, p0, Lcom/android/tools/r8/internal/hW;->c:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/gW;-><init>(Ljava/security/MessageDigest;I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/gW;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hW;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    iget v2, p0, Lcom/android/tools/r8/internal/hW;->c:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/gW;-><init>(Ljava/security/MessageDigest;I)V

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hW;->e:Ljava/lang/String;

    return-object v0
.end method

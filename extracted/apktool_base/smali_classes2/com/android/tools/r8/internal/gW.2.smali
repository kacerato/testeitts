.class public final Lcom/android/tools/r8/internal/gW;
.super Lcom/android/tools/r8/internal/l;
.source "SourceFile"


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:I

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/l;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gW;->b:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/android/tools/r8/internal/gW;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/fA;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gW;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/gW;->d:Z

    iget v0, p0, Lcom/android/tools/r8/internal/gW;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/gW;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/gW;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/gA;->b:[C

    new-instance v1, Lcom/android/tools/r8/internal/fA;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/fA;-><init>([B)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/gW;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/gW;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/gA;->b:[C

    new-instance v1, Lcom/android/tools/r8/internal/fA;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/fA;-><init>([B)V

    return-object v1
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/gW;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

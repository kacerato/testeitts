.class public final Lcom/android/tools/r8/internal/vr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/ba0;

.field public final b:[B

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ba0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vr0;->a:Lcom/android/tools/r8/internal/ba0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ba0;->a()Lcom/android/tools/r8/internal/O0;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/O0;->a()I

    move-result v0

    new-array v1, v0, [B

    new-instance v2, Lcom/android/tools/r8/internal/He;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/He;-><init>(I[B)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/O0;->a(Lcom/android/tools/r8/internal/He;)V

    iget p1, v2, Lcom/android/tools/r8/internal/He;->c:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, p1

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/android/tools/r8/internal/vr0;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/vr0;->c:I

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/internal/vr0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/vr0;->b:[B

    check-cast p1, Lcom/android/tools/r8/internal/vr0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/vr0;->b:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/vr0;->c:I

    return v0
.end method

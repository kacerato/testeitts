.class public final Lcom/android/tools/r8/internal/cV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/bV;


# instance fields
.field public final b:Lcom/android/tools/r8/naming/MapVersion;

.field public final c:Lcom/android/tools/r8/internal/AW;

.field public final d:Lcom/android/tools/r8/internal/wW;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/AW;Lcom/android/tools/r8/internal/wW;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cV;->b:Lcom/android/tools/r8/naming/MapVersion;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cV;->c:Lcom/android/tools/r8/internal/AW;

    iput-object p3, p0, Lcom/android/tools/r8/internal/cV;->d:Lcom/android/tools/r8/internal/wW;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cV;->c:Lcom/android/tools/r8/internal/AW;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AW;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/naming/MapVersion;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cV;->b:Lcom/android/tools/r8/naming/MapVersion;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Lcom/android/tools/r8/internal/wW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cV;->d:Lcom/android/tools/r8/internal/wW;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getBytes()[B
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v2, Lcom/android/tools/r8/internal/bV;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/android/tools/r8/internal/ZU;->e:Lcom/android/tools/r8/internal/ZU;

    iget v2, v2, Lcom/android/tools/r8/internal/ZU;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/cV;->b:Lcom/android/tools/r8/naming/MapVersion;

    invoke-virtual {v2}, Lcom/android/tools/r8/naming/MapVersion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/cV;->c:Lcom/android/tools/r8/internal/AW;

    const-string v3, ";"

    iget-object v2, v2, Lcom/android/tools/r8/internal/AW;->a:Ljava/util/Collection;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/xl0;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/cV;->d:Lcom/android/tools/r8/internal/wW;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/wW;->a(Ljava/io/DataOutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.class public Lcom/android/tools/r8/dex/D;
.super Lcom/android/tools/r8/dex/m;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/Ms;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/ProgramResource;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Uo0;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/dex/m;-><init>(Lcom/android/tools/r8/origin/Origin;[B)V

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/D;->a(Lcom/android/tools/r8/dex/s;I)Lcom/android/tools/r8/internal/Ms;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/D;->d:Lcom/android/tools/r8/internal/Ms;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/dex/m;-><init>(Lcom/android/tools/r8/origin/Origin;[B)V

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/dex/D;->a(Lcom/android/tools/r8/dex/s;I)Lcom/android/tools/r8/internal/Ms;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/D;->d:Lcom/android/tools/r8/internal/Ms;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;[BI)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/dex/m;-><init>(Lcom/android/tools/r8/origin/Origin;[B)V

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/dex/D;->a(Lcom/android/tools/r8/dex/s;I)Lcom/android/tools/r8/internal/Ms;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/D;->d:Lcom/android/tools/r8/internal/Ms;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/dex/s;I)Lcom/android/tools/r8/internal/Ms;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    iget-object v1, p1, Lcom/android/tools/r8/dex/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/android/tools/r8/dex/t;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-byte v5, v1, v4

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/s;->a(I)B

    move-result p2

    if-eq p2, v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dex file has invalid header, expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Next bytes are "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 p2, 0xa

    if-ge v3, p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/If;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/dex/m;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {p1, v1, p2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move p2, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/s;->a(I)B

    move-result v2

    int-to-char v2, v2

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/dex/s;->a(I)B

    move-result v1

    int-to-char v1, v1

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/dex/s;->a(I)B

    move-result v3

    int-to-char v3, v3

    invoke-static {v2, v1, v3}, Lcom/android/tools/r8/internal/Ms;->a(CCC)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/s;->a(I)B

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ms;

    return-object p1

    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Dex file has invalid header"

    iget-object v1, p0, Lcom/android/tools/r8/dex/m;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {p1, v1, p2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/If;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported DEX file version: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/dex/m;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {p1, v1, p2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Dex file is empty"

    iget-object v1, p0, Lcom/android/tools/r8/dex/m;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {p1, v1, p2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.class public abstract Lcom/android/tools/r8/internal/l8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/ET;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/ET;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ET;-><init>([B)V

    sput-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ET;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/tools/r8/internal/ET;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ET;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/util/Iterator;I)Lcom/android/tools/r8/internal/l8;
    .locals 2

    .line 42
    sget-boolean v0, Lcom/android/tools/r8/internal/l8;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/l8;

    return-object p0

    :cond_2
    ushr-int/lit8 v0, p1, 0x1

    .line 44
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/l8;->a(Ljava/util/Iterator;I)Lcom/android/tools/r8/internal/l8;

    move-result-object v1

    sub-int/2addr p1, v0

    .line 45
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/l8;->a(Ljava/util/Iterator;I)Lcom/android/tools/r8/internal/l8;

    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcom/android/tools/r8/internal/j8;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(III)I
.end method

.method public final a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;
    .locals 7

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    int-to-long v2, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/Jk0;->j:[I

    .line 6
    instance-of v1, p0, Lcom/android/tools/r8/internal/Jk0;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/Jk0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v2

    if-nez v2, :cond_2

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x80

    const/4 v4, 0x0

    if-ge v3, v2, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int v2, v0, v1

    .line 12
    new-array v2, v2, [B

    .line 13
    invoke-virtual {p0, v2, v4, v4, v0}, Lcom/android/tools/r8/internal/l8;->a([BIII)V

    .line 14
    invoke-virtual {p1, v2, v4, v0, v1}, Lcom/android/tools/r8/internal/l8;->a([BIII)V

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/ET;

    invoke-direct {p1, v2}, Lcom/android/tools/r8/internal/ET;-><init>([B)V

    return-object p1

    :cond_3
    if-eqz v1, :cond_4

    .line 16
    iget-object v5, v1, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v6

    add-int/2addr v6, v5

    if-ge v6, v2, :cond_4

    .line 17
    iget-object v0, v1, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v2

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v3

    add-int v5, v2, v3

    .line 20
    new-array v5, v5, [B

    .line 21
    invoke-virtual {v0, v5, v4, v4, v2}, Lcom/android/tools/r8/internal/l8;->a([BIII)V

    .line 22
    invoke-virtual {p1, v5, v4, v2, v3}, Lcom/android/tools/r8/internal/l8;->a([BIII)V

    .line 23
    new-instance p1, Lcom/android/tools/r8/internal/ET;

    invoke-direct {p1, v5}, Lcom/android/tools/r8/internal/ET;-><init>([B)V

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/Jk0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Jk0;-><init>(Lcom/android/tools/r8/internal/l8;Lcom/android/tools/r8/internal/l8;)V

    return-object v0

    :cond_4
    if-eqz v1, :cond_5

    .line 25
    iget-object v2, v1, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/l8;->a()I

    move-result v2

    iget-object v4, v1, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/l8;->a()I

    move-result v4

    if-le v2, v4, :cond_5

    .line 26
    iget v2, v1, Lcom/android/tools/r8/internal/Jk0;->h:I

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->a()I

    move-result v4

    if-le v2, v4, :cond_5

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/Jk0;

    iget-object v2, v1, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    invoke-direct {v0, v2, p1}, Lcom/android/tools/r8/internal/Jk0;-><init>(Lcom/android/tools/r8/internal/l8;Lcom/android/tools/r8/internal/l8;)V

    .line 29
    new-instance p1, Lcom/android/tools/r8/internal/Jk0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    invoke-direct {p1, v1, v0}, Lcom/android/tools/r8/internal/Jk0;-><init>(Lcom/android/tools/r8/internal/l8;Lcom/android/tools/r8/internal/l8;)V

    return-object p1

    .line 30
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l8;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->a()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 31
    aget v0, v0, v1

    if-lt v3, v0, :cond_6

    .line 32
    new-instance v0, Lcom/android/tools/r8/internal/Jk0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Jk0;-><init>(Lcom/android/tools/r8/internal/l8;Lcom/android/tools/r8/internal/l8;)V

    return-object v0

    .line 33
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/Gk0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gk0;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Gk0;->a(Lcom/android/tools/r8/internal/l8;)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Gk0;->a(Lcom/android/tools/r8/internal/l8;)V

    .line 36
    iget-object p1, v0, Lcom/android/tools/r8/internal/Gk0;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/l8;

    .line 37
    :goto_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/Gk0;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 38
    iget-object v1, v0, Lcom/android/tools/r8/internal/Gk0;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/l8;

    .line 39
    new-instance v2, Lcom/android/tools/r8/internal/Jk0;

    .line 40
    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/Jk0;-><init>(Lcom/android/tools/r8/internal/l8;Lcom/android/tools/r8/internal/l8;)V

    move-object p1, v2

    goto :goto_1

    :cond_7
    return-object p1

    .line 41
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ByteString would be too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Ljava/io/OutputStream;II)V
.end method

.method public final a([BIII)V
    .locals 3

    const/16 v0, 0x1e

    if-ltz p2, :cond_5

    if-ltz p3, :cond_4

    if-ltz p4, :cond_3

    add-int v0, p2, p4

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    const/16 v2, 0x22

    if-gt v0, v1, :cond_2

    add-int v0, p3, p4

    .line 48
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-lez p4, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/l8;->b([BIII)V

    :cond_0
    return-void

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Target end offset < 0: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source end offset < 0: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x17

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Length < 0: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Target offset < 0: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Source offset < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b(III)I
.end method

.method public abstract b([BIII)V
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract g()I
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l8;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

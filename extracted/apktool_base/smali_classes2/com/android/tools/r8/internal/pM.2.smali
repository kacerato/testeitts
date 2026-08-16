.class public abstract Lcom/android/tools/r8/internal/pM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/yv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/yv;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yv;-><init>()V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->a:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->b:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->c:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->d:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->e:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->f:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->g:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->h:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->i:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->j:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->k:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->l:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->m:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sget-object v1, Lcom/android/tools/r8/internal/oM;->n:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yv;->a(Lcom/android/tools/r8/internal/Wy;)V

    sput-object v0, Lcom/android/tools/r8/internal/pM;->a:Lcom/android/tools/r8/internal/yv;

    return-void
.end method

.method public static a(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lcom/android/tools/r8/internal/VL;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/VL;

    sget-object v1, Lcom/android/tools/r8/internal/pM;->a:Lcom/android/tools/r8/internal/yv;

    .line 2
    sget-object v2, Lcom/android/tools/r8/internal/nM;->i:Lcom/android/tools/r8/internal/hM;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 p0, 0x0

    goto :goto_3

    :cond_0
    and-int/lit16 v5, v3, 0x80

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit8 v3, v3, 0x7f

    const/4 v5, 0x7

    :goto_0
    const/16 v6, 0x20

    const-string v7, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    if-ge v5, v6, :cond_4

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v6, v4, :cond_3

    and-int/lit8 v7, v6, 0x7f

    shl-int/2addr v7, v5

    or-int/2addr v3, v7

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x7

    goto :goto_0

    .line 5
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/LJ;

    invoke-direct {p0, v7}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_1
    const/16 v6, 0x40

    if-ge v5, v6, :cond_7

    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v6, v4, :cond_6

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_5

    .line 8
    :goto_2
    new-instance v4, Lcom/android/tools/r8/internal/L0;

    invoke-direct {v4, p0, v3}, Lcom/android/tools/r8/internal/L0;-><init>(Ljava/io/ByteArrayInputStream;I)V

    .line 9
    invoke-virtual {v2, v4, v1}, Lcom/android/tools/r8/internal/j1;->a(Ljava/io/InputStream;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object p0

    .line 10
    :goto_3
    invoke-static {p0}, Lcom/android/tools/r8/internal/j1;->a(Lcom/android/tools/r8/internal/O0;)Lcom/android/tools/r8/internal/O0;

    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/tools/r8/internal/nM;

    .line 12
    const-string v1, "parseDelimitedFrom(...)"

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/VL;-><init>(Lcom/android/tools/r8/internal/nM;[Ljava/lang/String;)V

    return-object v0

    :cond_5
    add-int/lit8 v5, v5, 0x7

    goto :goto_1

    .line 13
    :cond_6
    :try_start_2
    new-instance p0, Lcom/android/tools/r8/internal/LJ;

    invoke-direct {p0, v7}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 14
    throw p0

    .line 15
    :cond_7
    new-instance p0, Lcom/android/tools/r8/internal/LJ;

    const-string p1, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 17
    :goto_4
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/VL;)Ljava/lang/String;
    .locals 2

    .line 18
    iget v0, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 19
    iget p0, p0, Lcom/android/tools/r8/internal/M90;->j:I

    .line 20
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 21
    sget-object p1, Lcom/android/tools/r8/internal/kd;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "L"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/16 v1, 0x24

    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.class public Lorg/openjdk/tools/javac/util/SharedNameTable;
.super Lorg/openjdk/tools/javac/util/Name$Table;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;
    }
.end annotation


# static fields
.field private static freelist:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/openjdk/tools/javac/util/SharedNameTable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public bytes:[B

.field private hashMask:I

.field private hashes:[Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

.field private nc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/SharedNameTable;->freelist:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Names;)V
    .locals 2

    const v0, 0x8000

    const/high16 v1, 0x20000

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/util/SharedNameTable;-><init>(Lorg/openjdk/tools/javac/util/Names;II)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Names;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Name$Table;-><init>(Lorg/openjdk/tools/javac/util/Names;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->nc:I

    add-int/lit8 p1, p2, -0x1

    .line 3
    iput p1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->hashMask:I

    .line 4
    new-array p1, p2, [Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    .line 5
    new-array p1, p3, [B

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->bytes:[B

    return-void
.end method

.method public static declared-synchronized create(Lorg/openjdk/tools/javac/util/Names;)Lorg/openjdk/tools/javac/util/SharedNameTable;
    .locals 3

    const-class v0, Lorg/openjdk/tools/javac/util/SharedNameTable;

    monitor-enter v0

    :cond_0
    :try_start_0
    sget-object v1, Lorg/openjdk/tools/javac/util/SharedNameTable;->freelist:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/util/SharedNameTable;->freelist:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/SharedNameTable;

    sget-object v2, Lorg/openjdk/tools/javac/util/SharedNameTable;->freelist:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    sput-object v2, Lorg/openjdk/tools/javac/util/SharedNameTable;->freelist:Lorg/openjdk/tools/javac/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lorg/openjdk/tools/javac/util/SharedNameTable;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/util/SharedNameTable;-><init>(Lorg/openjdk/tools/javac/util/Names;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static declared-synchronized dispose(Lorg/openjdk/tools/javac/util/SharedNameTable;)V
    .locals 3

    const-class v0, Lorg/openjdk/tools/javac/util/SharedNameTable;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lorg/openjdk/tools/javac/util/SharedNameTable;->freelist:Lorg/openjdk/tools/javac/util/List;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    sput-object p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->freelist:Lorg/openjdk/tools/javac/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 3
    invoke-static {p0}, Lorg/openjdk/tools/javac/util/SharedNameTable;->dispose(Lorg/openjdk/tools/javac/util/SharedNameTable;)V

    return-void
.end method

.method public fromChars([CII)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    iget v0, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->nc:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->bytes:[B

    mul-int/lit8 v2, p3, 0x3

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->bytes:[B

    invoke-static {p1, p2, v1, v0, p3}, Lorg/openjdk/tools/javac/util/Convert;->chars2utf([CI[BII)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {v1, v0, p1}, Lorg/openjdk/tools/javac/util/Name$Table;->hashValue([BII)I

    move-result p2

    iget p3, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->hashMask:I

    and-int/2addr p2, p3

    iget-object p3, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    aget-object p3, p3, p2

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->getByteLength()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget v2, p3, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->index:I

    invoke-static {v1, v2, v1, v0, p1}, Lorg/openjdk/tools/javac/util/Name$Table;->equals([BI[BII)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object p3, p3, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->next:Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    invoke-direct {p3, p0}, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;-><init>(Lorg/openjdk/tools/javac/util/SharedNameTable;)V

    iput v0, p3, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->index:I

    iput p1, p3, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->length:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    aget-object v2, v1, p2

    iput-object v2, p3, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->next:Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    aput-object p3, v1, p2

    add-int/2addr v0, p1

    iput v0, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->nc:I

    if-nez p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->nc:I

    :cond_2
    return-object p3
.end method

.method public fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;
    .locals 4

    invoke-static {p1, p2, p3}, Lorg/openjdk/tools/javac/util/Name$Table;->hashValue([BII)I

    move-result v0

    iget v1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->hashMask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->bytes:[B

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->getByteLength()I

    move-result v3

    if-ne v3, p3, :cond_0

    iget v3, v1, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->index:I

    invoke-static {v2, v3, p1, p2, p3}, Lorg/openjdk/tools/javac/util/Name$Table;->equals([BI[BII)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->next:Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    iget v1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->nc:I

    add-int v3, v1, p3

    invoke-static {v2, v3}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([BI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->bytes:[B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;-><init>(Lorg/openjdk/tools/javac/util/SharedNameTable;)V

    iput v1, p1, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->index:I

    iput p3, p1, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->length:I

    iget-object p2, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    aget-object v1, p2, v0

    iput-object v1, p1, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->next:Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;

    aput-object p1, p2, v0

    iput v3, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->nc:I

    if-nez p3, :cond_2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/openjdk/tools/javac/util/SharedNameTable;->nc:I

    :cond_2
    move-object v1, p1

    :cond_3
    return-object v1
.end method

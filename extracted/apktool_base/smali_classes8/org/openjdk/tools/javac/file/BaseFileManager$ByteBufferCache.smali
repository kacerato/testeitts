.class Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/BaseFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteBufferCache"
.end annotation


# instance fields
.field private cached:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/BaseFileManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/nio/ByteBuffer;
    .locals 1

    const/16 v0, 0x5000

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;->cached:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-lt v0, p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;->cached:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    add-int/2addr p1, p1

    shr-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;->cached:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;->cached:Ljava/nio/ByteBuffer;

    return-void
.end method

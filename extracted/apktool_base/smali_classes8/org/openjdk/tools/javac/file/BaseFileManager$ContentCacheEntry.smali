.class public Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/BaseFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentCacheEntry"
.end annotation


# instance fields
.field final ref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/nio/CharBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final timestamp:J


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/nio/CharBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->getLastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;->timestamp:J

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;->ref:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/nio/CharBuffer;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;->ref:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    return-object v0
.end method

.method public isValid(Lorg/openjdk/javax/tools/JavaFileObject;)Z
    .locals 4

    iget-wide v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;->timestamp:J

    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->getLastModified()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

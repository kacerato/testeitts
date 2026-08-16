.class Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageCacheEntry"
.end annotation


# instance fields
.field fileSize:J

.field lastModified:J

.field packageSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;


# direct methods
.method public constructor <init>(JJLorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;->lastModified:J

    iput-wide p3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;->fileSize:J

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;->packageSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    return-void
.end method

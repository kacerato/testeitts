.class final Lorg/openjdk/tools/sjavac/Source$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/sjavac/Source;->scanRoot(Ljava/io/File;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$currentModule:Lorg/openjdk/tools/sjavac/Module;

.field final synthetic val$excludeMatchers:Ljava/util/List;

.field final synthetic val$foundFiles:Ljava/util/Map;

.field final synthetic val$inGensrc:Z

.field final synthetic val$inLinksrc:Z

.field final synthetic val$includeMatchers:Ljava/util/List;

.field final synthetic val$root:Ljava/io/File;

.field final synthetic val$suffixes:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$root:Ljava/io/File;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$includeMatchers:Ljava/util/List;

    iput-object p3, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$excludeMatchers:Ljava/util/List;

    iput-object p4, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$suffixes:Ljava/util/Set;

    iput-object p5, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$foundFiles:Ljava/util/Map;

    iput-object p6, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$currentModule:Lorg/openjdk/tools/sjavac/Module;

    iput-boolean p7, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$inLinksrc:Z

    iput-boolean p8, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$inGensrc:Z

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/Path;Ljava/nio/file/PathMatcher;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/sjavac/Source$1;->lambda$visitFile$0(Ljava/nio/file/Path;Ljava/nio/file/PathMatcher;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/nio/file/Path;Ljava/nio/file/PathMatcher;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/sjavac/Source$1;->lambda$visitFile$1(Ljava/nio/file/Path;Ljava/nio/file/PathMatcher;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$visitFile$0(Ljava/nio/file/Path;Ljava/nio/file/PathMatcher;)Z
    .locals 0

    invoke-interface {p1, p0}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$visitFile$1(Ljava/nio/file/Path;Ljava/nio/file/PathMatcher;)Z
    .locals 0

    invoke-interface {p1, p0}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/sjavac/Source$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$root:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$includeMatchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/sjavac/j;

    invoke-direct {v1, p2}, Lorg/openjdk/tools/sjavac/j;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$excludeMatchers:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/sjavac/k;

    invoke-direct {v1, p2}, Lorg/openjdk/tools/sjavac/k;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$suffixes:Ljava/util/Set;

    .line 5
    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Util;->fileSuffix(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 6
    iget-object p2, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$foundFiles:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/sjavac/Source;

    .line 7
    const-string v0, " from "

    if-nez p2, :cond_5

    .line 8
    iget-object p2, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$currentModule:Lorg/openjdk/tools/sjavac/Module;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/sjavac/Module;->lookupSource(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Source;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 9
    iget-boolean v1, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$inLinksrc:Z

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p2}, Lorg/openjdk/tools/sjavac/Source;->isLinkedOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$foundFiles:Ljava/util/Map;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You have already added the link only file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/openjdk/tools/sjavac/Source;->file()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: Double add of file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/openjdk/tools/sjavac/Source;->file()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_2
    new-instance p2, Lorg/openjdk/tools/sjavac/Source;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$currentModule:Lorg/openjdk/tools/sjavac/Module;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lorg/openjdk/tools/sjavac/Source;-><init>(Lorg/openjdk/tools/sjavac/Module;Ljava/lang/String;Ljava/io/File;)V

    .line 15
    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$inGensrc:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p2}, Lorg/openjdk/tools/sjavac/Source;->markAsGenerated()V

    .line 17
    :cond_3
    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$inLinksrc:Z

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p2}, Lorg/openjdk/tools/sjavac/Source;->markAsLinkedOnly()V

    .line 19
    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/Source;->access$000(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$currentModule:Lorg/openjdk/tools/sjavac/Module;

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/Module;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$foundFiles:Ljava/util/Map;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lorg/openjdk/tools/sjavac/Source$1;->val$currentModule:Lorg/openjdk/tools/sjavac/Module;

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/sjavac/Module;->addSource(Ljava/lang/String;Lorg/openjdk/tools/sjavac/Source;)V

    goto :goto_0

    .line 23
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You have already added the file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/openjdk/tools/sjavac/Source;->file()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_6
    :goto_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

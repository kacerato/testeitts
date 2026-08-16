.class public Lorg/openjdk/tools/sjavac/Source;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/openjdk/tools/sjavac/Source;",
        ">;"
    }
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private isGenerated:Z

.field private lastModified:J

.field private linkedOnly:Z

.field private name:Ljava/lang/String;

.field private pkg:Lorg/openjdk/tools/sjavac/Package;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/Module;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/openjdk/tools/sjavac/Source;->name:Ljava/lang/String;

    .line 3
    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/Source;->suffix:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/Source;->suffix:Ljava/lang/String;

    .line 6
    :goto_0
    iput-object p3, p0, Lorg/openjdk/tools/sjavac/Source;->file:Ljava/io/File;

    .line 7
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/openjdk/tools/sjavac/Source;->lastModified:J

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/Source;->linkedOnly:Z

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/sjavac/Package;Ljava/lang/String;J)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/openjdk/tools/sjavac/Source;->pkg:Lorg/openjdk/tools/sjavac/Package;

    .line 11
    iput-object p2, p0, Lorg/openjdk/tools/sjavac/Source;->name:Ljava/lang/String;

    .line 12
    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/Source;->suffix:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/Source;->suffix:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lorg/openjdk/tools/sjavac/Source;->file:Ljava/io/File;

    .line 16
    iput-wide p3, p0, Lorg/openjdk/tools/sjavac/Source;->lastModified:J

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/Source;->linkedOnly:Z

    const/16 p1, 0x2f

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    return-void
.end method

.method public static synthetic access$000(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/sjavac/Source;->packageOfJavaFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createPathMatchers(Ljava/nio/file/FileSystem;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/FileSystem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/PathMatcher;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glob:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid pattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object v0
.end method

.method public static load(Lorg/openjdk/tools/sjavac/Package;Ljava/lang/String;Z)Lorg/openjdk/tools/sjavac/Source;
    .locals 8

    const/16 v0, 0x20

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_4

    const/4 v2, 0x0

    :goto_0
    new-instance p1, Lorg/openjdk/tools/sjavac/Source;

    invoke-direct {p1, p0, v1, v4, v5}, Lorg/openjdk/tools/sjavac/Source;-><init>(Lorg/openjdk/tools/sjavac/Package;Ljava/lang/String;J)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p0, p1, Lorg/openjdk/tools/sjavac/Source;->file:Ljava/io/File;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/Source;->markAsGenerated()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/Source;->markAsLinkedOnly()V

    :cond_3
    return-object p1

    :cond_4
    return-object v3
.end method

.method private static packageOfJavaFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "."

    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private save(Ljava/lang/StringBuilder;)V
    .locals 3

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/Source;->linkedOnly:Z

    if-eqz v0, :cond_0

    const-string v0, "L"

    goto :goto_0

    :cond_0
    const-string v0, "C"

    :goto_0
    iget-boolean v1, p0, Lorg/openjdk/tools/sjavac/Source;->isGenerated:Z

    if-eqz v1, :cond_1

    const-string v1, "G"

    goto :goto_1

    :cond_1
    const-string v1, "S"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static saveSources(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/sjavac/Source;

    invoke-direct {v1, p1}, Lorg/openjdk/tools/sjavac/Source;->save(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static scanRoot(Ljava/io/File;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Module;",
            ">;",
            "Lorg/openjdk/tools/sjavac/Module;",
            "ZZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/openjdk/tools/sjavac/ProblemException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "**"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p3

    :goto_0
    invoke-static {v0, v1}, Lorg/openjdk/tools/sjavac/Source;->createPathMatchers(Ljava/nio/file/FileSystem;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v1, p2

    invoke-static {v0, p2}, Lorg/openjdk/tools/sjavac/Source;->createPathMatchers(Ljava/nio/file/FileSystem;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    new-instance v10, Lorg/openjdk/tools/sjavac/Source$1;

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p9

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/openjdk/tools/sjavac/Source$1;-><init>(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZ)V

    invoke-static {v9, v10}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/sjavac/Source;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/Source;->compareTo(Lorg/openjdk/tools/sjavac/Source;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/openjdk/tools/sjavac/Source;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/Source;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/sjavac/Source;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source;->name:Ljava/lang/String;

    check-cast p1, Lorg/openjdk/tools/sjavac/Source;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/Source;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public file()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source;->file:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGenerated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/Source;->isGenerated:Z

    return v0
.end method

.method public isLinkedOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/Source;->linkedOnly:Z

    return v0
.end method

.method public lastModified()J
    .locals 2

    iget-wide v0, p0, Lorg/openjdk/tools/sjavac/Source;->lastModified:J

    return-wide v0
.end method

.method public markAsGenerated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/Source;->isGenerated:Z

    return-void
.end method

.method public markAsLinkedOnly()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/Source;->linkedOnly:Z

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source;->name:Ljava/lang/String;

    return-object v0
.end method

.method public pkg()Lorg/openjdk/tools/sjavac/Package;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source;->pkg:Lorg/openjdk/tools/sjavac/Package;

    return-object v0
.end method

.method public setPackage(Lorg/openjdk/tools/sjavac/Package;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/Source;->pkg:Lorg/openjdk/tools/sjavac/Package;

    return-void
.end method

.method public suffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Source;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/Source;->pkg:Lorg/openjdk/tools/sjavac/Package;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/Source;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/openjdk/tools/sjavac/Source;->suffix:Ljava/lang/String;

    iget-object v5, p0, Lorg/openjdk/tools/sjavac/Source;->file:Ljava/io/File;

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/Source;->isGenerated:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/Source;->linkedOnly:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[pkg: %s, name: %s, suffix: %s, file: %s, isGenerated: %b, linkedOnly: %b]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/openjdk/tools/sjavac/options/SourceLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field excludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field includes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->path:Ljava/nio/file/Path;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->includes:Ljava/util/List;

    iput-object p3, p0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->excludes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public findSourceFiles(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
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
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    :try_start_0
    iget-object v0, v1, Lorg/openjdk/tools/sjavac/options/SourceLocation;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    iget-object v4, v1, Lorg/openjdk/tools/sjavac/options/SourceLocation;->excludes:Ljava/util/List;

    iget-object v5, v1, Lorg/openjdk/tools/sjavac/options/SourceLocation;->includes:Ljava/util/List;

    const/4 v10, 0x0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p6

    invoke-static/range {v2 .. v11}, Lorg/openjdk/tools/sjavac/Source;->scanRoot(Ljava/io/File;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZZ)V
    :try_end_0
    .catch Lorg/openjdk/tools/sjavac/ProblemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getExcludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->excludes:Ljava/util/List;

    return-object v0
.end method

.method public getIncludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->includes:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->path:Ljava/nio/file/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->path:Ljava/nio/file/Path;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->includes:Ljava/util/List;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->excludes:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[\"%s\", includes: %s, excludes: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

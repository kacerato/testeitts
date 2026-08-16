.class public abstract Lorg/openjdk/tools/sjavac/options/OptionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unescapeCmdArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "%20"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2C"

    const-string v1, ","

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract addTransformer(Ljava/lang/String;Lorg/openjdk/tools/sjavac/Transformer;)V
.end method

.method public abstract classpath(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract compareFoundSources(Ljava/nio/file/Path;)V
.end method

.method public abstract destDir(Ljava/nio/file/Path;)V
.end method

.method public abstract exclude(Ljava/lang/String;)V
.end method

.method public abstract generatedSourcesDir(Ljava/nio/file/Path;)V
.end method

.method public abstract headerDir(Ljava/nio/file/Path;)V
.end method

.method public abstract implicit(Ljava/lang/String;)V
.end method

.method public abstract include(Ljava/lang/String;)V
.end method

.method public varargs abstract javacArg([Ljava/lang/String;)V
.end method

.method public abstract logLevel(Ljava/lang/String;)V
.end method

.method public abstract modulepath(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract numCores(I)V
.end method

.method public abstract permitArtifact(Ljava/lang/String;)V
.end method

.method public abstract permitDefaultPackage()V
.end method

.method public abstract permitUnidentifiedArtifacts()V
.end method

.method public abstract reportError(Ljava/lang/String;)V
.end method

.method public abstract serverConf(Ljava/lang/String;)V
.end method

.method public abstract sourceRoots(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sourcepath(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startServerConf(Ljava/lang/String;)V
.end method

.method public abstract stateDir(Ljava/nio/file/Path;)V
.end method

.method public traverse([Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/main/CommandLine;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;-><init>(Ljava/lang/Iterable;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->next()Ljava/lang/String;

    move-result-object p1

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lorg/openjdk/tools/sjavac/options/Option;->values()[Lorg/openjdk/tools/sjavac/options/Option;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6, v2, p0}, Lorg/openjdk/tools/sjavac/options/Option;->processCurrent(Lorg/openjdk/tools/sjavac/options/ArgumentIterator;Lorg/openjdk/tools/sjavac/options/OptionHelper;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v5, v1

    goto :goto_1

    :cond_2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->javacArg([Ljava/lang/String;)V

    invoke-static {}, Lorg/openjdk/tools/javac/main/Option;->values()[Lorg/openjdk/tools/javac/main/Option;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Lorg/openjdk/tools/javac/main/Option;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/main/Option;->hasArg()Z

    move-result v6

    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "="

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, v0

    :goto_3
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->next()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->javacArg([Ljava/lang/String;)V

    :cond_4
    add-int/2addr v5, v1

    goto :goto_2

    :cond_5
    new-array v3, v0, [Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array v3, v1, [Ljava/nio/file/Path;

    aput-object p1, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->sourceRoots(Ljava/util/List;)V

    goto :goto_0

    :cond_6
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem reading @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

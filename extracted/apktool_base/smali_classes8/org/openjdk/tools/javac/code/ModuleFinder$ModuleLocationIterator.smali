.class Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/ModuleFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleLocationIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Set<",
        "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
        ">;>;"
    }
.end annotation


# instance fields
.field innerIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;"
        }
    .end annotation
.end field

.field outer:Lorg/openjdk/javax/tools/StandardLocation;

.field outerIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/openjdk/javax/tools/StandardLocation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/ModuleFinder;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/ModuleFinder;)V
    .locals 4

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->this$0:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->next:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->UPGRADE_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v2, Lorg/openjdk/javax/tools/StandardLocation;->SYSTEM_MODULES:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v3, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/javax/tools/StandardLocation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->outerIter:Ljava/util/Iterator;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->innerIter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->next:Ljava/util/Set;

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->innerIter:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->next:Ljava/util/Set;

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->outerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->outerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/StandardLocation;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->outer:Lorg/openjdk/javax/tools/StandardLocation;

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->this$0:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->access$000(Lorg/openjdk/tools/javac/code/ModuleFinder;)Lorg/openjdk/javax/tools/JavaFileManager;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->outer:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->listLocationsForModules(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->innerIter:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error listing module locations for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->outer:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->next()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->hasNext()Z

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->next:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->next:Ljava/util/Set;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

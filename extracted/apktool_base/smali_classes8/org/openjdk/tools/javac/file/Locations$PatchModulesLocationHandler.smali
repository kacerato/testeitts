.class Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;
.super Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatchModulesLocationHandler"
.end annotation


# instance fields
.field private final moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/Locations;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->PATCH_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->PATCH_MODULE:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v1}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;-><init>(Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/file/Path;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->contains(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public getLocationForModule(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p1

    return-object p1
.end method

.method public getLocationForModule(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p1

    return-object p1
.end method

.method public getPaths()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 12

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->options:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->clear()V

    const-string p1, "\u0000"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v5, Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    iget-object v6, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v4}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v6, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v11, 0x0

    move-object v5, v3

    move-object v7, p0

    invoke-direct/range {v5 .. v11}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->add(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v3}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v3

    invoke-static {p2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnInvalidArgForXpatch(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isSet()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public listLocationsForModules()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->locations()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setPaths(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setPathsForModule(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

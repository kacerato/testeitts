.class public interface abstract Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Classpath"
.end annotation


# virtual methods
.method public abstract acceptModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V
.end method

.method public abstract fetchLinkedJars(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
.end method

.method public abstract findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
.end method

.method public abstract findTypeNames(Ljava/lang/String;Ljava/lang/String;)[[[C
.end method

.method public abstract getDestinationPath()Ljava/lang/String;
.end method

.method public abstract getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModuleNames(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract hasAnnotationFileFor(Ljava/lang/String;)Z
.end method

.method public hasCUDeclaringPackage(Ljava/lang/String;Ljava/util/function/Function;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasModule()Z
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract initialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isPackage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract normalizedPath()[C
.end method

.method public abstract reset()V
.end method

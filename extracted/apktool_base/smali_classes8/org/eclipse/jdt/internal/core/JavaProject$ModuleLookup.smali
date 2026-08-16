.class Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleLookup"
.end annotation


# instance fields
.field jrtFile:Ljava/io/File;

.field modNames2Roots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;",
            ">;"
        }
    .end annotation
.end field

.field modules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;"
        }
    .end annotation
.end field

.field resultModuleSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->modNames2Roots:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->modules:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->resultModuleSet:Ljava/util/Set;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->jrtFile:Ljava/io/File;

    return-void
.end method

.method private getModule(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->modules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->modNames2Roots:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->jrtFile:Ljava/io/File;

    const-string v3, "module-info.class"

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getClassfile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->modules:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getJavaCore()Lorg/eclipse/jdt/core/JavaCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/JavaCore;->getLog()Lorg/eclipse/core/runtime/ILog;

    move-result-object v1

    new-instance v2, Lorg/eclipse/core/runtime/Status;

    const-string v3, "org.eclipse.jdt.core"

    const-string v4, "Failed to read module-info.class"

    const/4 v5, 0x4

    invoke-direct {v2, v5, v3, v4, p1}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lorg/eclipse/core/runtime/ILog;->log(Lorg/eclipse/core/runtime/IStatus;)V

    :cond_0
    :goto_1
    return-object v0
.end method


# virtual methods
.method public addTransitive(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->getModule(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->resultModuleSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->addTransitive(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getRoot(Lorg/eclipse/jdt/internal/compiler/env/IModule;)Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->modNames2Roots:Ljava/util/Map;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    return-object p1
.end method

.method public recordRoot(Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->modNames2Roots:Ljava/util/Map;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

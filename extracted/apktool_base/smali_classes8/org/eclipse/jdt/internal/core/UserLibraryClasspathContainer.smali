.class public Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IClasspathContainer;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;->name:Ljava/lang/String;

    return-void
.end method

.method private getUserLibrary()Lorg/eclipse/jdt/internal/core/UserLibrary;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getUserLibraryManager()Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->getUserLibrary(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/UserLibrary;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;->verbose_no_user_library_found(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private verbose_no_user_library_found(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserLibrary INIT - FAILED (no user library found)\n\tuserLibraryName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;->getUserLibrary()Lorg/eclipse/jdt/internal/core/UserLibrary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/UserLibrary;->getEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()I
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;->getUserLibrary()Lorg/eclipse/jdt/internal/core/UserLibrary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/UserLibrary;->isSystemLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 2

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    const-string v1, "org.eclipse.jdt.USER_LIBRARY"

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/core/runtime/Path;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

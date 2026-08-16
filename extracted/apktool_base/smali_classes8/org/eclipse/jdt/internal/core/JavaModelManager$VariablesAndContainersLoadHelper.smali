.class final Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VariablesAndContainersLoadHelper"
.end annotation


# static fields
.field private static final ARRAY_INCREMENT:I = 0xc8


# instance fields
.field private allClasspathEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field private allClasspathEntryCount:I

.field private final allPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation
.end field

.field private allStrings:[Ljava/lang/String;

.field private allStringsCount:I

.field private final in:Ljava/io/DataInputStream;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Ljava/io/DataInputStream;)V
    .locals 2

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allClasspathEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allClasspathEntryCount:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allPaths:Ljava/util/Map;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allStrings:[Ljava/lang/String;

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allStringsCount:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->in:Ljava/io/DataInputStream;

    return-void
.end method

.method private loadAccessRule()Lorg/eclipse/jdt/core/IAccessRule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getAccessRuleForProblemId([CI)Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;

    move-result-object v0

    return-object v0
.end method

.method private loadAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    return-object v0

    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/core/IAccessRule;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadAccessRule()Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadAttribute()Lorg/eclipse/jdt/core/IClasspathAttribute;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/core/ClasspathAttribute;

    invoke-direct {v2, v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private loadAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    return-object v0

    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/core/IClasspathAttribute;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadAttribute()Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method private loadClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v0

    new-array v1, v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v0

    if-ltz v0, :cond_4

    iget v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allClasspathEntryCount:I

    if-gt v0, v1, :cond_4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allClasspathEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadPaths()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadPaths()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadBoolean()Z

    move-result v10

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v11

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadBoolean()Z

    move-result v12

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v13

    new-instance v14, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allClasspathEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-ne v0, v2, :cond_3

    :cond_1
    add-int/lit16 v2, v0, 0xc8

    new-array v2, v2, [Lorg/eclipse/jdt/core/IClasspathEntry;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allClasspathEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-object v1, v2

    :cond_3
    aput-object v14, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allClasspathEntryCount:I

    return-object v14

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected classpathentry id"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadContainers(Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Lorg/eclipse/jdt/internal/core/JavaModelManager$PersistedClasspathContainer;

    invoke-direct {v5, p1, v3, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PersistedClasspathContainer;-><init>(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v4, p1, v3, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionContainers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionContainers:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private loadPath()Lorg/eclipse/core/runtime/IPath;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allPaths:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/runtime/IPath;

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/eclipse/core/runtime/Path;->fromPortableString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allPaths:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private loadPaths()[Lorg/eclipse/core/runtime/IPath;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v0

    new-array v1, v0, [Lorg/eclipse/core/runtime/IPath;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadProjects(Lorg/eclipse/jdt/core/IJavaModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadContainers(Lorg/eclipse/jdt/core/IJavaProject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v0

    if-ltz v0, :cond_4

    iget v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allStringsCount:I

    if-gt v0, v1, :cond_4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allStrings:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allStrings:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ne v0, v3, :cond_3

    :cond_1
    add-int/lit16 v3, v0, 0xc8

    new-array v3, v3, [Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allStrings:[Ljava/lang/String;

    move-object v2, v3

    :cond_3
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->allStringsCount:I

    return-object v1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected string id"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadVariables()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadInt()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionVariables:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public load()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadProjects(Lorg/eclipse/jdt/core/IJavaModel;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->loadVariables()V

    return-void
.end method

.class final Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VariablesAndContainersSaveHelper"
.end annotation


# instance fields
.field private final classpathEntryIds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

.field private final out:Ljava/io/DataOutputStream;

.field private final stringIds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Ljava/io/DataOutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->classpathEntryIds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->out:Ljava/io/DataOutputStream;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->stringIds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    return-void
.end method

.method private saveAccessRule(Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->problemId:I

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;->getPattern()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->savePath(Lorg/eclipse/core/runtime/IPath;)V

    return-void
.end method

.method private saveAccessRules([Lorg/eclipse/jdt/core/IAccessRule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    :goto_1
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v0

    check-cast v2, Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveAccessRule(Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private saveAttribute(Lorg/eclipse/jdt/core/IClasspathAttribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveString(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveString(Ljava/lang/String;)V

    return-void
.end method

.method private saveAttributes([Lorg/eclipse/jdt/core/IClasspathAttribute;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    :goto_1
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveAttribute(Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private saveClasspathEntries([Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    :goto_1
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveClasspathEntry(Lorg/eclipse/jdt/core/IClasspathEntry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private saveClasspathEntry(Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->classpathEntryIds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveNewId(Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getContentKind()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->savePath(Lorg/eclipse/core/runtime/IPath;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->savePaths([Lorg/eclipse/core/runtime/IPath;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->savePaths([Lorg/eclipse/core/runtime/IPath;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->savePath(Lorg/eclipse/core/runtime/IPath;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->savePath(Lorg/eclipse/core/runtime/IPath;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->savePath(Lorg/eclipse/core/runtime/IPath;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->out:Ljava/io/DataOutputStream;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveAccessRules([Lorg/eclipse/jdt/core/IAccessRule;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->out:Ljava/io/DataOutputStream;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->combineAccessRules()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveAttributes([Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    :cond_0
    return-void
.end method

.method private saveContainers(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathContainer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IClasspathContainer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPreviousSessionContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathContainer;->getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->savePath(Lorg/eclipse/core/runtime/IPath;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveClasspathEntries([Lorg/eclipse/jdt/core/IClasspathEntry;)V

    goto :goto_0
.end method

.method private saveInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private saveNewId(Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->size()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private savePath(Lorg/eclipse/core/runtime/IPath;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->out:Ljava/io/DataOutputStream;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toPortableString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private savePaths([Lorg/eclipse/core/runtime/IPath;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    :goto_1
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->savePath(Lorg/eclipse/core/runtime/IPath;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private saveProjects([Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveString(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_1

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v4

    :goto_1
    invoke-direct {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveContainers(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private saveString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->stringIds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveNewId(Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveVariables(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveInt(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/IPath;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveString(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->savePath(Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_0
.end method


# virtual methods
.method public save(Lorg/eclipse/core/resources/ISaveContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveProjects([Lorg/eclipse/jdt/core/IJavaProject;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDefaultPreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    :goto_1
    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->saveVariables(Ljava/util/Map;)V

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "org.eclipse.jdt.core.classpathVariable."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v5, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_ENTRY_IGNORE_PATH:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

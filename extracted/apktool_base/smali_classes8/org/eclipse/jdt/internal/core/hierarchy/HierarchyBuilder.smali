.class public abstract Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected focusQualifiedName:Ljava/lang/String;

.field protected hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

.field protected hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

.field protected infoToHandle:Ljava/util/Map;

.field protected nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->javaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    array-length v6, v3

    :goto_1
    if-nez v6, :cond_2

    new-array v3, v4, [Lorg/eclipse/jdt/core/ICompilationUnit;

    aput-object v2, v3, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [Lorg/eclipse/jdt/core/ICompilationUnit;

    aput-object v2, v7, v5

    invoke-static {v3, v5, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment([Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object v2

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    new-instance v3, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v0

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    invoke-direct {v3, v2, v0, p0, v4}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->infoToHandle:Ljava/util/Map;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->focusQualifiedName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract build(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation
.end method

.method public buildSupertypes()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->resolve(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->contains(Lorg/eclipse/jdt/core/IType;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->addRootClass(Lorg/eclipse/jdt/core/IType;)V

    :catch_0
    :cond_1
    return-void
.end method

.method public connect(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/IType;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connecting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  to superclass: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_1

    const-string v2, "<None>"

    goto :goto_0

    :cond_1
    move-object v2, p3

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "  and superinterfaces:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-eqz p4, :cond_5

    array-length v1, p4

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    array-length v1, p4

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_3

    goto :goto_4

    :cond_3
    aget-object v2, p4, v0

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p4, v0

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const-string v1, " <None>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_4
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 p3, 0x4

    if-eq v0, p3, :cond_7

    goto :goto_5

    :cond_7
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_a

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->addInterface(Lorg/eclipse/jdt/core/IType;)V

    goto :goto_5

    :cond_8
    if-nez p3, :cond_9

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->addRootClass(Lorg/eclipse/jdt/core/IType;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->cacheSuperclass(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;)V

    :cond_a
    :goto_5
    if-nez p4, :cond_b

    sget-object p4, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_TYPE:[Lorg/eclipse/jdt/core/IType;

    :cond_b
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {p3, p2, p4}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->cacheSuperInterfaces(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/IType;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->cacheFlags(Lorg/eclipse/jdt/core/IType;I)V

    return-void
.end method

.method public createCompilationUnitFromPath(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IFile;[C)Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder$1;-><init>(Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;Lorg/eclipse/core/resources/IFile;[C[C)V

    return-object v0
.end method

.method public createInfoFromClassFile(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->newClassFileReader(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p2
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->infoToHandle:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :catch_0
    move-exception p1

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_0
    return-object v0

    :catch_1
    move-exception p1

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0

    :catch_2
    move-exception p1

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public createInfoFromClassFileInJar(Lorg/eclipse/jdt/internal/core/Openable;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 2

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->create(Lorg/eclipse/jdt/core/IOrdinaryClassFile;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->infoToHandle:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public getHandle(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->infoToHandle:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->typeHandle:Lorg/eclipse/jdt/core/IType;

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->infoToHandle:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->isBinaryType()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->infoToHandle:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-nez v1, :cond_4

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->lookupBinaryHandle(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClassFile;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->infoToHandle:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance p1, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClassFile;->getTypeName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    if-eqz v1, :cond_6

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    return-object p1

    :cond_6
    return-object v0
.end method

.method public getType()Lorg/eclipse/jdt/core/IType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    return-object v0
.end method

.method public lookupBinaryHandle(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/core/IType;
    .locals 11

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v2, 0x10

    :cond_0
    :goto_0
    move v6, v2

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object p1

    new-instance v4, Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedName([C)[C

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->focusQualifiedName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x0

    :goto_3
    return-object p1
.end method

.method public worked(Lorg/eclipse/core/runtime/IProgressMonitor;I)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

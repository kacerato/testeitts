.class public Lorg/eclipse/jdt/internal/core/BinaryType;
.super Lorg/eclipse/jdt/internal/core/BinaryMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IType;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# static fields
.field public static final EMPTY_JAVADOC:Lorg/eclipse/jdt/internal/core/JavadocContents;

.field private static final NO_FIELDS:[Lorg/eclipse/jdt/core/IField;

.field private static final NO_INITIALIZERS:[Lorg/eclipse/jdt/core/IInitializer;

.field private static final NO_METHODS:[Lorg/eclipse/jdt/core/IMethod;

.field private static final NO_TYPES:[Lorg/eclipse/jdt/core/IType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/IField;

    sput-object v1, Lorg/eclipse/jdt/internal/core/BinaryType;->NO_FIELDS:[Lorg/eclipse/jdt/core/IField;

    new-array v1, v0, [Lorg/eclipse/jdt/core/IMethod;

    sput-object v1, Lorg/eclipse/jdt/internal/core/BinaryType;->NO_METHODS:[Lorg/eclipse/jdt/core/IMethod;

    new-array v1, v0, [Lorg/eclipse/jdt/core/IType;

    sput-object v1, Lorg/eclipse/jdt/internal/core/BinaryType;->NO_TYPES:[Lorg/eclipse/jdt/core/IType;

    new-array v0, v0, [Lorg/eclipse/jdt/core/IInitializer;

    sput-object v0, Lorg/eclipse/jdt/internal/core/BinaryType;->NO_INITIALIZERS:[Lorg/eclipse/jdt/core/IInitializer;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavadocContents;

    const/4 v1, 0x0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavadocContents;-><init>(Lorg/eclipse/jdt/internal/core/BinaryType;Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/BinaryType;->EMPTY_JAVADOC:Lorg/eclipse/jdt/internal/core/JavadocContents;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/BinaryMember;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public closing(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getClassFileInfo()Lorg/eclipse/jdt/internal/core/ClassFileInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->removeBinaryChildren()V

    return-void
.end method

.method public codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/CompletionRequestor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 4
    sget-object v9, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/BinaryType;->codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void
.end method

.method public codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 5
    sget-object v9, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/BinaryType;->codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 6
    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/BinaryType;->codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move/from16 v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p8, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 8
    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/core/CompletionRequestor;->isTestCodeExcluded()Z

    move-result v3

    move-object/from16 v8, p9

    invoke-virtual {v10, v8, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object v11

    .line 9
    new-instance v12, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-virtual {v10, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v6

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, p8

    move-object v7, v10

    move-object/from16 v9, p10

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/core/CompletionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ISourceReference;->getSource()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 12
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    new-array v5, v2, [C

    const/16 v6, 0x7b

    aput-char v6, v5, v1

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v4

    .line 13
    new-array v2, v2, [C

    const/16 v5, 0x7d

    aput-char v5, v2, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    move-object/from16 v1, p1

    .line 14
    invoke-static {v4, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    .line 15
    new-instance v1, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 17
    invoke-direct {v1, v0, v3, v2, v10}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 18
    array-length v0, v4

    add-int v0, v0, p3

    array-length v2, v4

    invoke-virtual {v12, v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->complete(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;IILorg/eclipse/jdt/core/ITypeRoot;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move/from16 v19, p7

    .line 19
    invoke-virtual/range {v12 .. v19}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->complete(Lorg/eclipse/jdt/core/IType;[CI[[C[[C[IZ)V

    .line 20
    :goto_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Completion requestor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/ICompletionRequestor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v9, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/BinaryType;->codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/ICompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void
.end method

.method public codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/ICompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p8

    if-eqz v0, :cond_0

    .line 2
    new-instance v8, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/ICompletionRequestor;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/BinaryType;->codeComplete([CII[[C[[C[IZLorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Completion requestor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createField(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 p3, 0x3d0

    invoke-direct {p2, p3, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public createInitializer(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IInitializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 p3, 0x3d0

    invoke-direct {p2, p3, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public createMethod(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IMethod;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 p3, 0x3d0

    invoke-direct {p2, p3, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public createType(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 p3, 0x3d0

    invoke-direct {p2, p3, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public findMethods(Lorg/eclipse/jdt/core/IMethod;)[Lorg/eclipse/jdt/core/IMethod;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getMethods()[Lorg/eclipse/jdt/core/IMethod;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/Member;->findMethods(Lorg/eclipse/jdt/core/IMethod;[Lorg/eclipse/jdt/core/IMethod;)[Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/core/IAnnotation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTagBits()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;J)[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;->getJavadocContents(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/JavadocContents;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;->getTypeDoc()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getClassFileInfo()Lorg/eclipse/jdt/internal/core/ClassFileInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->binaryChildren:[Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object v0
.end method

.method public getChildrenForCategory(Ljava/lang/String;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/SourceMapper;->categories:Ljava/util/HashMap;

    new-array v3, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    move v5, v4

    move v6, v5

    :goto_0
    if-lt v5, v1, :cond_1

    goto :goto_3

    :cond_1
    aget-object v7, v0, v5

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    if-eqz v8, :cond_4

    array-length v9, v8

    move v10, v4

    :goto_1
    if-lt v10, v9, :cond_2

    goto :goto_2

    :cond_2
    aget-object v11, v8, v10

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v8, v6, 0x1

    aput-object v7, v3, v6

    move v6, v8

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move v6, v4

    :goto_3
    if-ge v6, v1, :cond_6

    new-array p1, v6, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v3, v4, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, p1

    :cond_6
    return-object v3

    :cond_7
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p1
.end method

.method public bridge synthetic getClassFile()Lorg/eclipse/jdt/core/IClassFile;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v0

    return-object v0
.end method

.method public getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/Member;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    return-object v0
.end method

.method public getClassFileInfo()Lorg/eclipse/jdt/internal/core/ClassFileInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;

    return-object v0
.end method

.method public getDeclaringType()Lorg/eclipse/jdt/core/IType;
    .locals 11

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOpenable;->isOpen()Z

    move-result v1

    const-string v2, ".class"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingTypeName()[C

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/ClassFile;->unqualifiedName([C)[C

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IPackageFragment;->getOrdinaryClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v3

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v6, v4

    move v7, v5

    :goto_0
    const/16 v8, 0x24

    if-lt v6, v1, :cond_4

    if-ne v7, v5, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v3, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->localTypeName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/eclipse/jdt/internal/core/BinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v2

    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v10, v6, -0x1

    if-ne v7, v10, :cond_5

    return-object v3

    :cond_5
    if-ne v9, v8, :cond_6

    move v7, v6

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getElementInfo(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelCache;->NON_EXISTING_JAR_TYPE_INFO:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->createElementInfo()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->openWhenClosed(Ljava/lang/Object;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getElementType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/BinaryField;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFields()[Lorg/eclipse/jdt/core/IField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/BinaryType;->NO_FIELDS:[Lorg/eclipse/jdt/core/IField;

    return-object v0

    :cond_0
    new-array v1, v1, [Lorg/eclipse/jdt/core/IField;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getFlags()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, -0x21

    return v0
.end method

.method public getFullyQualifiedName()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getFullyQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullyQualifiedName(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getFullyQualifiedName(CZ)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFullyQualifiedParameterizedName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/16 v0, 0x2e

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/NamedMember;->getFullyQualifiedName(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x21

    if-eq v1, v2, :cond_13

    const/16 v3, 0x7e

    const/16 v4, 0x5e

    const/4 v5, 0x0

    const/16 v6, 0x5b

    if-eq v1, v6, :cond_e

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_c

    if-eq v1, v4, :cond_a

    packed-switch v1, :pswitch_data_0

    return-object v5

    :pswitch_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_3

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jdt/internal/core/BinaryType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_2

    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v6, v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_8

    return-object p0

    :cond_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/Annotation;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/Annotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_9

    return-object p0

    :cond_9
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;->getInitializer(I)Lorg/eclipse/jdt/core/IInitializer;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_b

    return-object p0

    :cond_b
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_d

    return-object p0

    :cond_d
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/TypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_e
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_10

    const/16 v4, 0x7c

    if-eq v0, v4, :cond_10

    if-eq v0, v3, :cond_10

    if-eq v0, v6, :cond_10

    if-ne v0, v2, :cond_f

    goto :goto_4

    :cond_f
    move-object v1, p1

    goto :goto_5

    :cond_10
    :goto_4
    move-object v5, p1

    :cond_11
    :goto_5
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/BinaryType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    if-nez v5, :cond_12

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_12
    invoke-virtual {p1, v5, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_13
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getHandleUpdatingCountFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x7c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInitializer(I)Lorg/eclipse/jdt/core/IInitializer;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/Initializer;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/Initializer;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;I)V

    return-object v0
.end method

.method public getInitializers()[Lorg/eclipse/jdt/core/IInitializer;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/BinaryType;->NO_INITIALIZERS:[Lorg/eclipse/jdt/core/IInitializer;

    return-object v0
.end method

.method public getJavadocContents(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/JavadocContents;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfoCheckExistence(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavadocContents;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/core/BinaryType;->EMPTY_JAVADOC:Lorg/eclipse/jdt/internal/core/JavadocContents;

    if-eq v2, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavadocBaseLocation()Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->isMember()Z

    move-result v5

    const/16 v6, 0x2e

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, p0

    :cond_3
    :goto_0
    if-nez v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_7
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getURLContents(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavadocContents;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;-><init>(Lorg/eclipse/jdt/internal/core/BinaryType;Ljava/lang/String;)V

    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    monitor-enter p1

    :try_start_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getKey(Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p0, p1}, Lorg/eclipse/jdt/internal/core/NamedMember;->getKey(Lorg/eclipse/jdt/core/IType;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/BinaryMethod;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/BinaryMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public getMethods()[Lorg/eclipse/jdt/core/IMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/BinaryType;->NO_METHODS:[Lorg/eclipse/jdt/core/IMethod;

    return-object v0

    :cond_0
    new-array v1, v1, [Lorg/eclipse/jdt/core/IMethod;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getSourceFileName(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    move-object v0, p0

    :goto_0
    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->defaultJavaExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;->sourceFileName(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSuperInterfaceNames()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getInterfaceNames()[[C

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedNames([[C)[[C

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    return-object v2

    :cond_1
    new-instance v4, Ljava/lang/String;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getSuperInterfaceTypeSignatures()[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v1

    aget-char v0, v1, v2

    const/16 v6, 0x3c

    if-ne v0, v6, :cond_4

    move v0, v3

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v5, :cond_0

    goto :goto_1

    :cond_0
    aget-char v7, v1, v2

    if-eq v7, v6, :cond_2

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/2addr v2, v3

    :cond_4
    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanClassTypeSignature([CI)I

    move-result v0

    add-int/2addr v0, v3

    :goto_2
    if-lt v0, v5, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_5
    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanClassTypeSignature([CI)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    new-instance v6, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedName([C)[C

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getInterfaceNames()[[C

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedNames([[C)[[C

    move-result-object v0

    new-array v4, v1, [Ljava/lang/String;

    :goto_3
    if-lt v2, v1, :cond_8

    return-object v4

    :cond_8
    aget-object v5, v0, v2

    invoke-static {v5, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getSuperclassName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedName([C)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public getSuperclassTypeSignature()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    array-length v0, v1

    const/4 v3, 0x0

    aget-char v4, v1, v3

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_0
    if-lez v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-char v6, v1, v3

    if-eq v6, v5, :cond_2

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/2addr v3, v2

    :cond_4
    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanClassTypeSignature([CI)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v1, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedName([C)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_5
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedName([C)[C

    move-result-object v0

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getTypeQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/BinaryType;

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-direct {v1, v0, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v1
.end method

.method public getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/TypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTypeParameterSignatures()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getTypeParameters([C)[[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()[Lorg/eclipse/jdt/core/ITypeParameter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getTypeParameterSignatures()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/TypeParameter;->NO_TYPE_PARAMETERS:[Lorg/eclipse/jdt/core/ITypeParameter;

    return-object v0

    :cond_0
    new-array v1, v1, [Lorg/eclipse/jdt/core/ITypeParameter;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_1

    return-object v1

    :cond_1
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getTypeVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-direct {v4, p0, v3}, Lorg/eclipse/jdt/internal/core/TypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getTypeQualifiedName()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getTypeQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeQualifiedName(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getTypeQualifiedName(CZ)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypes()[Lorg/eclipse/jdt/core/IType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/BinaryType;->NO_TYPES:[Lorg/eclipse/jdt/core/IType;

    return-object v0

    :cond_0
    new-array v1, v1, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public isAnnotation()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAnonymous()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isAnonymous()Z

    move-result v0

    return v0
.end method

.method public isClass()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnum()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInterface()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLambda()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLocal()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isLocal()Z

    move-result v0

    return v0
.end method

.method public isMember()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isMember()Z

    move-result v0

    return v0
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadTypeHierachy(Ljava/io/InputStream;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/BinaryType;->loadTypeHierachy(Ljava/io/InputStream;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public loadTypeHierachy(Ljava/io/InputStream;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->load(Lorg/eclipse/jdt/core/IType;Ljava/io/InputStream;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newSupertypeHierarchy(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;->newSupertypeHierarchy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newSupertypeHierarchy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 8
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    .line 9
    new-instance v0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;

    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;-><init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Z)V

    .line 10
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 11
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->getResult()Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newSupertypeHierarchy([Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;

    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;-><init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Z)V

    .line 3
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->getResult()Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newSupertypeHierarchy([Lorg/eclipse/jdt/core/IWorkingCopy;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    array-length v0, p1

    .line 6
    new-array v1, v0, [Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/BinaryType;->newSupertypeHierarchy([Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newTypeHierarchy(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 13
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;->newTypeHierarchy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newTypeHierarchy(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/BinaryType;->newTypeHierarchy(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newTypeHierarchy(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3
    array-length v0, p2

    .line 4
    new-array v2, v0, [Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v0, :cond_0

    if-eq v5, v0, :cond_3

    .line 5
    new-array p2, v5, [Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-static {v2, v3, p2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p2

    goto :goto_1

    .line 6
    :cond_0
    aget-object v6, p2, v4

    .line 7
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    .line 8
    aput-object v6, v2, v5

    move v5, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 9
    :cond_3
    :goto_1
    new-instance p2, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;

    invoke-direct {p2, p0, v2, p1, v1}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;-><init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaProject;Z)V

    .line 10
    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 11
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->getResult()Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->hierarchy_nullProject:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newTypeHierarchy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 20
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    .line 21
    new-instance v0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;

    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2, v1}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;-><init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Z)V

    .line 22
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 23
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->getResult()Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newTypeHierarchy([Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 14
    new-instance v0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;

    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;-><init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Z)V

    .line 15
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 16
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->getResult()Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newTypeHierarchy([Lorg/eclipse/jdt/core/IWorkingCopy;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 17
    :cond_0
    array-length v0, p1

    .line 18
    new-array v1, v0, [Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    .line 19
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/BinaryType;->newTypeHierarchy([Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/NamedMember;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    iput p1, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-object v0
.end method

.method public sourceFileName(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Ljava/lang/String;
    .locals 4

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->sourceFileName()[C

    move-result-object v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isMember()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->defaultJavaExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isLocal()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isAnonymous()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->defaultJavaExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getTypeQualifiedName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->defaultJavaExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->defaultJavaExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 p1, 0x2f

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result p1

    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    array-length v3, v0

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/BinaryType;->toStringName(Ljava/lang/StringBuffer;)V

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_INFO:Ljava/lang/Object;

    if-ne p3, p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/BinaryType;->toStringName(Ljava/lang/StringBuffer;)V

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->isAnnotation()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "@interface "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "enum "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BinaryType;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "interface "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string p1, "class "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/BinaryType;->toStringName(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "<JavaModelException in toString of "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    return-void
.end method

.method public toStringName(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->toStringName(Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_0
    const-string v0, "<anonymous>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

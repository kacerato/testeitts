.class public Lorg/eclipse/jdt/internal/core/CompilationUnit;
.super Lorg/eclipse/jdt/internal/core/Openable;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/ICompilationUnit;
.implements Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# static fields
.field static final JLS2_INTERNAL:I = 0x2

.field private static final NO_IMPORTS:[Lorg/eclipse/jdt/core/IImportDeclaration;


# instance fields
.field protected name:Ljava/lang/String;

.field public owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IImportDeclaration;

    sput-object v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->NO_IMPORTS:[Lorg/eclipse/jdt/core/IImportDeclaration;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/Openable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    return-void
.end method


# virtual methods
.method public applyTextEdit(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/text/edits/UndoEdit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/IBuffer$ITextEditCapability;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/IBuffer$ITextEditCapability;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jdt/core/IBuffer$ITextEditCapability;->applyTextEdit(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/text/edits/UndoEdit;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    instance-of p2, v0, Lorg/eclipse/jface/text/IDocument;

    if-eqz p2, :cond_1

    check-cast v0, Lorg/eclipse/jface/text/IDocument;

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/eclipse/jdt/internal/core/DocumentAdapter;

    invoke-direct {p2, v0}, Lorg/eclipse/jdt/internal/core/DocumentAdapter;-><init>(Lorg/eclipse/jdt/core/IBuffer;)V

    move-object v0, p2

    :goto_0
    const/16 p2, 0x3f3

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/eclipse/text/edits/TextEdit;->apply(Lorg/eclipse/jface/text/IDocument;)Lorg/eclipse/text/edits/UndoEdit;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/text/edits/MalformedTreeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public becomeWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/WorkingCopyOwner;->getProblemRequestor(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IProblemRequestor;

    move-result-object v0

    .line 7
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->becomeWorkingCopy(Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public becomeWorkingCopy(Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, p0, v3, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerWorkingCopyInfo(Lorg/eclipse/jdt/internal/core/CompilationUnit;ZZLorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->close()V

    .line 4
    new-instance v0, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/IProblemRequestor;)V

    .line 5
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_0
    return-void
.end method

.method public buildStructure(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/util/Map;Lorg/eclipse/core/resources/IResource;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object v10, v0

    check-cast v10, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/BufferManager;->getBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v9, v10}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->openBuffer(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/Object;)Lorg/eclipse/jdt/core/IBuffer;

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;

    move-object/from16 v3, p3

    invoke-direct {v2, v1, v10, v3}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;-><init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;Ljava/util/Map;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPerWorkingCopyInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    instance-of v4, v0, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;

    iget v5, v4, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->astLevel:I

    if-eqz v5, :cond_1

    move v5, v14

    goto :goto_0

    :cond_1
    move v5, v13

    :goto_0
    iget-boolean v6, v4, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->resolveBindings:Z

    iget v7, v4, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->reconcileFlags:I

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->problems:Ljava/util/HashMap;

    move-object/from16 v16, v4

    move v15, v5

    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_1

    :cond_2
    move v15, v13

    move/from16 v17, v15

    move/from16 v18, v17

    const/16 v16, 0x0

    :goto_1
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->isActive()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v4

    if-eqz v4, :cond_3

    move/from16 v19, v14

    goto :goto_2

    :cond_3
    move/from16 v19, v13

    :goto_2
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    if-nez v3, :cond_4

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object v3

    :goto_3
    move-object v8, v3

    goto :goto_4

    :cond_4
    invoke-interface {v3, v14}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v3

    goto :goto_3

    :goto_4
    if-nez v19, :cond_5

    const-string v3, "org.eclipse.jdt.core.compiler.taskTags"

    const-string v4, ""

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v6, v8}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    and-int/lit8 v3, v18, 0x8

    if-eqz v3, :cond_6

    move v3, v14

    goto :goto_5

    :cond_6
    move v3, v13

    :goto_5
    iput-boolean v3, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    xor-int/lit8 v20, v15, 0x1

    const/16 v21, 0x1

    move-object v3, v7

    move-object v4, v2

    move-object v12, v7

    move/from16 v7, v21

    move-object/from16 v21, v8

    move/from16 v8, v20

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;-><init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;ZZ)V

    xor-int/lit8 v3, v19, 0x1

    iput-boolean v3, v12, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportOnlyOneSyntaxError:Z

    invoke-virtual {v12, v14}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->setMethodsFullRecovery(Z)V

    and-int/lit8 v3, v18, 0x2

    if-eqz v3, :cond_7

    move v3, v14

    goto :goto_6

    :cond_7
    move v3, v13

    :goto_6
    invoke-virtual {v12, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->setStatementsRecovery(Z)V

    if-nez v19, :cond_8

    if-nez v17, :cond_8

    if-nez v15, :cond_8

    iget-object v3, v12, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iput-boolean v13, v3, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    :cond_8
    iput-object v12, v2, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    if-nez p4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    goto :goto_7

    :cond_9
    move-object/from16 v2, p4

    :goto_7
    if-eqz v2, :cond_a

    check-cast v2, Lorg/eclipse/core/resources/IFile;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IFile;->getModificationStamp()J

    move-result-wide v2

    iput-wide v2, v10, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->timestamp:J

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->cloneCachingContents()Lorg/eclipse/jdt/internal/core/CompilationUnit;

    move-result-object v8

    if-eqz v19, :cond_f

    if-nez v16, :cond_e

    :try_start_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-object v2, v8

    move-object v3, v12

    move-object v5, v14

    move v6, v15

    move/from16 v7, v18

    move-object v12, v8

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;->process(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;Lorg/eclipse/jdt/core/WorkingCopyOwner;Ljava/util/HashMap;ZILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->beginReporting()V

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_b

    :try_start_2
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->endReporting()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v12

    :goto_9
    move-object v12, v2

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v12, v2

    goto/16 :goto_d

    :cond_b
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-nez v4, :cond_c

    goto :goto_8

    :cond_c
    array-length v5, v4

    move v6, v13

    :goto_a
    if-lt v6, v5, :cond_d

    goto :goto_8

    :cond_d
    aget-object v7, v4, v6

    invoke-virtual {v11, v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->acceptProblem(Lorg/eclipse/jdt/core/compiler/IProblem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->endReporting()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception v0

    const/4 v12, 0x0

    goto :goto_d

    :cond_e
    move-object v11, v8

    :try_start_5
    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v5, v16

    move v6, v15

    move/from16 v7, v18

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;->process(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;Lorg/eclipse/jdt/core/WorkingCopyOwner;Ljava/util/HashMap;ZILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    goto :goto_9

    :cond_f
    move-object v11, v8

    invoke-virtual {v12, v11, v14, v9}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->parseCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :goto_b
    if-eqz v15, :cond_10

    :try_start_6
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;

    iget v2, v2, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->astLevel:I

    move-object v3, v12

    move-object/from16 v4, v21

    move/from16 v5, v19

    move-object v6, v11

    move/from16 v7, v18

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v8}, Lorg/eclipse/jdt/core/dom/AST;->convertCompilationUnit(ILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Ljava/util/Map;ZLorg/eclipse/jdt/internal/core/CompilationUnit;ILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v2

    check-cast v0, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_d

    :cond_10
    :goto_c
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->hasFunctionalTypes()Z

    move-result v0

    iput-boolean v0, v10, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->hasFunctionalTypes:Z

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    :cond_11
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->isStructureKnown()Z

    move-result v0

    return v0

    :goto_d
    if-eqz v12, :cond_12

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->hasFunctionalTypes()Z

    move-result v2

    iput-boolean v2, v10, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->hasFunctionalTypes:Z

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    :cond_12
    throw v0
.end method

.method public canBeRemovedFromCache()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPerWorkingCopyInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/Openable;->canBeRemovedFromCache()Z

    move-result v0

    return v0
.end method

.method public canBufferBeRemovedFromCache(Lorg/eclipse/jdt/core/IBuffer;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPerWorkingCopyInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/Openable;->canBufferBeRemovedFromCache(Lorg/eclipse/jdt/core/IBuffer;)Z

    move-result p1

    return p1
.end method

.method public cloneCachingContents()Lorg/eclipse/jdt/internal/core/CompilationUnit;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnit$1;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/CompilationUnit$1;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPerWorkingCopyInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V

    return-void
.end method

.method public closing(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPerWorkingCopyInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/Openable;->closing(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 7
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 8
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getOriginalElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    move-object v1, p0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    move-object v8, p4

    .line 11
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/Openable;->codeComplete(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/ITypeRoot;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/ICodeCompletionRequestor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->codeComplete(ILorg/eclipse/jdt/core/ICompletionRequestor;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnit$2;

    invoke-direct {v0, p0, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit$2;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/ICodeCompletionRequestor;)V

    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->codeComplete(ILorg/eclipse/jdt/core/ICompletionRequestor;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/ICompletionRequestor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->codeComplete(ILorg/eclipse/jdt/core/ICompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/ICompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/ICompletionRequestor;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Completion requestor cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public codeSelect(II)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->codeSelect(IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public codeSelect(IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/Openable;->codeSelect(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public commit(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->commitWorkingCopy(ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public commitWorkingCopy(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/CommitWorkingCopyOperation;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/CommitWorkingCopyOperation;-><init>(Lorg/eclipse/jdt/core/ICompilationUnit;Z)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public copy(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    new-array v2, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p0, v2, p2

    new-array v3, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, v3, p2

    if-eqz p3, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    aput-object p3, p1, p2

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v1

    const/4 v4, 0x0

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/eclipse/jdt/core/IJavaModel;->copy([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_nullContainer:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;-><init>()V

    return-object v0
.end method

.method public createImport(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IImportDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/CreateImportOperation;

    invoke-direct {v0, p1, p0, p3}, Lorg/eclipse/jdt/internal/core/CreateImportOperation;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/core/ICompilationUnit;I)V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createBefore(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 4
    :cond_0
    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getImport(Ljava/lang/String;)Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public createImport(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IImportDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->createImport(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public createPackageDeclaration(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IPackageDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/core/ICompilationUnit;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public createType(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragment;->isDefaultPackage()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->name:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1, p3}, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;-><init>(Lorg/eclipse/jdt/core/IPackageFragment;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, p4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/CreateTypeOperation;

    invoke-direct {v0, p0, p1, p3}, Lorg/eclipse/jdt/internal/core/CreateTypeOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;Z)V

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createBefore(Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_2
    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getResultElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    return-object p1
.end method

.method public delete(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2}, Lorg/eclipse/jdt/core/IJavaModel;->delete([Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->discardWorkingCopy()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public discardWorkingCopy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/DiscardWorkingCopyOperation;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/DiscardWorkingCopyOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public findElements(Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 6

    instance-of v0, p1, Lorg/eclipse/jdt/core/IType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->isLambda()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    move-object v3, p0

    :goto_2
    if-gez p1, :cond_5

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v2, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v0, 0x0

    aput-object v3, p1, v0

    return-object p1

    :cond_4
    return-object v1

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/SourceRefElement;

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    check-cast v3, Lorg/eclipse/jdt/core/IImportContainer;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/jdt/core/IImportContainer;->getImport(Ljava/lang/String;)Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object v3

    goto :goto_3

    :pswitch_1
    check-cast v3, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ICompilationUnit;->getImportContainer()Lorg/eclipse/jdt/core/IImportContainer;

    move-result-object v3

    goto :goto_3

    :pswitch_2
    check-cast v3, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v3

    goto :goto_3

    :pswitch_3
    check-cast v3, Lorg/eclipse/jdt/core/IType;

    iget v4, v4, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-interface {v3, v4}, Lorg/eclipse/jdt/core/IType;->getInitializer(I)Lorg/eclipse/jdt/core/IInitializer;

    move-result-object v3

    goto :goto_3

    :pswitch_4
    check-cast v3, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v3

    goto :goto_3

    :pswitch_5
    check-cast v3, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object v3

    goto :goto_3

    :pswitch_6
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :pswitch_7
    goto :goto_3

    :pswitch_8
    check-cast v3, Lorg/eclipse/jdt/core/IMember;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    iget v4, v4, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-interface {v3, v5, v4}, Lorg/eclipse/jdt/core/IMember;->getType(Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    goto :goto_3

    :pswitch_9
    check-cast v3, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    goto :goto_3

    :pswitch_a
    check-cast v3, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_a
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public findPrimaryType()Lorg/eclipse/jdt/core/IType;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSharedWorkingCopy(Lorg/eclipse/jdt/core/IBufferFactory;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/BufferManager;->getDefaultBufferFactory()Lorg/eclipse/jdt/core/IBufferFactory;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->create(Lorg/eclipse/jdt/core/IBufferFactory;)Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->findWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public findWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPerWorkingCopyInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->getWorkingCopy()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllTypes()[Lorg/eclipse/jdt/core/IType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v0

    if-lt v4, v5, :cond_2

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    move v0, v3

    :goto_2
    array-length v4, v5

    if-lt v0, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v5, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 0

    return-object p0
.end method

.method public getContents()[C
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/BufferManager;->getBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/resources/IFile;

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getCharset()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    :try_start_1
    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsCharArray(Lorg/eclipse/core/resources/IFile;Ljava/lang/String;)[C

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->getCode()I

    move-result v0

    const/16 v4, 0x3d9

    if-ne v0, v4, :cond_0

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/JavaModelException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/JavaModelException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_1
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;

    invoke-direct {v3, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Ljava/io/IOException;Ljava/lang/String;)V

    throw v3

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->file_notFound:Ljava/lang/String;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object v0

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_3

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->buffer_closed:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    check-cast v2, Lorg/eclipse/core/resources/IFile;

    :try_start_2
    invoke-interface {v2}, Lorg/eclipse/core/resources/IFile;->getCharset()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-object v2, v1

    :goto_2
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;

    invoke-direct {v3, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Ljava/io/IOException;Ljava/lang/String;)V

    throw v3

    :cond_4
    return-object v0
.end method

.method public getCorrespondingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getFileName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_6

    const/16 p1, 0x25

    if-eq v0, p1, :cond_4

    const/16 p1, 0x5b

    if-eq v0, p1, :cond_2

    const/16 p1, 0x60

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceModule;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/SourceModule;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getImportContainer()Lorg/eclipse/jdt/core/IImportContainer;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x7b

    return v0
.end method

.method public getImport(Ljava/lang/String;)Lorg/eclipse/jdt/core/IImportDeclaration;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getImportContainer()Lorg/eclipse/jdt/core/IImportContainer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IImportContainer;->getImport(Ljava/lang/String;)Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public getImportContainer()Lorg/eclipse/jdt/core/IImportContainer;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/ImportContainer;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/ImportContainer;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V

    return-object v0
.end method

.method public getImports()[Lorg/eclipse/jdt/core/IImportDeclaration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getImportContainer()Lorg/eclipse/jdt/core/IImportContainer;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->NO_IMPORTS:[Lorg/eclipse/jdt/core/IImportDeclaration;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/Openable;->open(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->NO_IMPORTS:[Lorg/eclipse/jdt/core/IImportDeclaration;

    return-object v0

    :cond_1
    check-cast v2, Lorg/eclipse/jdt/internal/core/ImportContainerInfo;

    iget-object v0, v2, Lorg/eclipse/jdt/internal/core/ImportContainerInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/core/IImportDeclaration;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getMainTypeName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getModule()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const-string v0, "module-info.java"

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModuleName()[C
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginal(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPrimaryElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getOriginalElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getPrimaryElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Lorg/eclipse/jdt/core/WorkingCopyOwner;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/PackageDeclaration;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/PackageDeclaration;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IPackageDeclaration;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getPackageName()[[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->toCharArrays([Ljava/lang/String;)[[C

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public getPerWorkingCopyInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerWorkingCopyInfo(Lorg/eclipse/jdt/internal/core/CompilationUnit;ZZLorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPrimary()Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    return-object v0
.end method

.method public getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-direct {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-object p1
.end method

.method public getSharedWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/jdt/core/IBufferFactory;Lorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/BufferManager;->getDefaultBufferFactory()Lorg/eclipse/jdt/core/IBufferFactory;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->create(Lorg/eclipse/jdt/core/IBufferFactory;)Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-result-object p2

    invoke-virtual {p0, p2, p3, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public getSource()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->getContents()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/SourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;
    .locals 0

    return-object p0
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

    new-array v1, v1, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public getWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnit$3;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit$3;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public getWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public getWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    .line 7
    new-instance v1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v3, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerWorkingCopyInfo(Lorg/eclipse/jdt/internal/core/CompilationUnit;ZZLorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->getWorkingCopy()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;

    invoke-direct {p1, v1, p2}, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/IProblemRequestor;)V

    .line 11
    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-object v1
.end method

.method public getWorkingCopy()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public getWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/jdt/core/IBufferFactory;Lorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 4
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->create(Lorg/eclipse/jdt/core/IBufferFactory;)Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-result-object p2

    invoke-virtual {p0, p2, p3, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public hasBuffer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasResourceChanged()Z
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->timestamp:J

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getModificationStamp()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public ignoreOptionalProblems()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->ignoreOptionalProblems()Z

    move-result v0

    return v0
.end method

.method public isBasedOn(Lorg/eclipse/core/resources/IResource;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->hasResourceChanged()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isConsistent()Z
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getElementsOutOfSynchWithBuffers()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPrimary()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    sget-object v1, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSourceElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWorkingCopy()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPerWorkingCopyInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public makeConsistent(IZILjava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isConsistent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->createElementInfo()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p5}, Lorg/eclipse/jdt/internal/core/JavaElement;->openWhenClosed(Ljava/lang/Object;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    :try_start_1
    new-instance v2, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;-><init>()V

    .line 7
    iput p1, v2, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->astLevel:I

    .line 8
    iput-boolean p2, v2, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->resolveBindings:Z

    .line 9
    iput p3, v2, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->reconcileFlags:I

    .line 10
    iput-object p4, v2, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->problems:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p0, v2, v0, p5}, Lorg/eclipse/jdt/internal/core/JavaElement;->openWhenClosed(Ljava/lang/Object;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    .line 12
    iget-object p1, v2, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    .line 13
    iput-object v1, v2, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p1

    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 15
    throw p1
.end method

.method public makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->makeConsistent(IZILjava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-void
.end method

.method public move(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    new-array v2, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p0, v2, p2

    new-array v3, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, v3, p2

    if-eqz p3, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    aput-object p3, p1, p2

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v1

    const/4 v4, 0x0

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/eclipse/jdt/core/IJavaModel;->move([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_nullContainer:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openAncestors(Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/Openable;->openAncestors(Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_0
    return-void
.end method

.method public openBuffer(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/Object;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/WorkingCopyOwner;->createBuffer(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/BufferManager;->createBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-direct {v1, v3, v4, v5}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/BufferManager;->getBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object v4

    if-nez v4, :cond_8

    if-eqz p2, :cond_6

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ISourceReference;->getSource()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/eclipse/jdt/core/IBuffer;->setContents(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p2

    check-cast p2, Lorg/eclipse/core/resources/IFile;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsCharArray(Lorg/eclipse/core/resources/IFile;)[C

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/eclipse/jdt/core/IBuffer;->setContents([C)V

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    invoke-interface {v0, p2}, Lorg/eclipse/jdt/core/IBuffer;->setContents([C)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p2

    check-cast p2, Lorg/eclipse/core/resources/IFile;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsCharArray(Lorg/eclipse/core/resources/IFile;)[C

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/eclipse/jdt/core/IBuffer;->setContents([C)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object p2

    throw p2

    :cond_8
    :goto_2
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/BufferManager;->addBuffer(Lorg/eclipse/jdt/core/IBuffer;)V

    invoke-interface {v0, p0}, Lorg/eclipse/jdt/core/IBuffer;->addBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V

    :cond_9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_a

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->close()V

    return-object v3

    :cond_a
    return-object v0

    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public originalFromClone()Lorg/eclipse/jdt/internal/core/CompilationUnit;
    .locals 0

    return-object p0
.end method

.method public reconcile(IILorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p3, :cond_1

    .line 6
    sget-object p3, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    .line 7
    :cond_1
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->PERF:Z

    if-eqz v0, :cond_2

    .line 8
    const-string v0, "org.eclipse.jdt.core/perf/reconcile"

    invoke-static {v0, p0}, Lorg/eclipse/core/runtime/PerformanceStats;->getStats(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/core/runtime/PerformanceStats;

    move-result-object v1

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getFileName()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v0}, Lorg/eclipse/core/runtime/PerformanceStats;->startRun(Ljava/lang/String;)V

    .line 10
    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IILorg/eclipse/jdt/core/WorkingCopyOwner;)V

    .line 11
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    .line 12
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cacheZipFiles(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    .line 15
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->PERF:Z

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {v1}, Lorg/eclipse/core/runtime/PerformanceStats;->endRun()V

    .line 17
    :cond_3
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-object p1

    :catchall_0
    move-exception p2

    .line 18
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    .line 19
    throw p2
.end method

.method public reconcile(IZLorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->reconcile(IILorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public reconcile(IZZLorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p3, :cond_0

    or-int/lit8 p2, p2, 0x2

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->reconcile(IILorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public reconcile(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->reconcile(IILorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-void
.end method

.method public reconcile()[Lorg/eclipse/core/resources/IMarker;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->reconcile(IZZLorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    const/4 v0, 0x0

    return-object v0
.end method

.method public rename(Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array v3, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p0, v3, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    new-array v4, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v2, v4, v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v2

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lorg/eclipse/jdt/core/IJavaModel;->rename([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_nullName:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    check-cast v0, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/Openable;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IContainer;

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p1

    return-object p1
.end method

.method public restore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getOriginalElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getContents()[C

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/core/IBuffer;->setContents([C)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->updateTimeStamp(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->reconcile()[Lorg/eclipse/core/resources/IMarker;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/Openable;->save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    :goto_0
    return-void
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v0

    const-string v1, "[Working copy] "

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringName(Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringName(Ljava/lang/StringBuffer;)V

    if-nez p3, :cond_2

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateTimeStamp(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IFile;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getModificationStamp()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->timestamp:J

    return-void

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3e3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public validateCompilationUnit(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3c7

    invoke-direct {p1, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v0

    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v0, 0x3ee

    invoke-direct {p1, v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object p1

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v0, 0x3c9

    invoke-direct {p1, v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {p1, v1, v2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {p1, v3, v2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/eclipse/jdt/core/JavaConventions;->validateCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object p1

    return-object p1
.end method

.method public validateExistence(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->validateCompilationUnit(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPerWorkingCopyInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p1
.end method

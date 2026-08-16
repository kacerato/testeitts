.class public Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EmptyNodeMap:Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;


# instance fields
.field private assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field private assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field private assistScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

.field private bindingsToHandles:Ljava/util/Map;

.field private compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

.field private compilationUnitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

.field private completionContext:Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;

.field private hasComputedEnclosingJavaElements:Z

.field private hasComputedVisibleElementBindings:Z

.field private lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private nodesWithProblemsToHandles:Ljava/util/Map;

.field private owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

.field private parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

.field private typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

.field private visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

.field private visibleLocalVariables:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

.field private visibleMethods:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->EmptyNodeMap:Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;Lorg/eclipse/jdt/core/ITypeRoot;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->completionContext:Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->compilationUnitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p7, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p8, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    iput-object p9, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    return-void
.end method

.method private computeEnclosingJavaElements()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->hasComputedEnclosingJavaElements:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    check-cast v2, Lorg/eclipse/jdt/core/ICompilationUnit;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-direct {v14, v2, v3, v8, v11}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistCompilationUnit;-><init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/WorkingCopyOwner;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v5, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;-><init>()V

    invoke-virtual {v11, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;

    iget-object v6, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-object v3, v2

    move-object v4, v14

    move-object v9, v12

    move-object v10, v13

    invoke-direct/range {v3 .. v11}, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;-><init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v15, Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {v15, v2, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;-><init>(Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;ZLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->compilationUnitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v4, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v15 .. v21}, Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;IIZLorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;Ljava/util/Map;)V

    iput-object v12, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->bindingsToHandles:Ljava/util/Map;

    iput-object v13, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->nodesWithProblemsToHandles:Ljava/util/Map;

    iput-object v14, v0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    :cond_1
    return-void
.end method

.method private computeVisibleElementBindings()V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->compilationUnitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->hasComputedVisibleElementBindings:Z

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->completionContext:Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;

    iget v4, v4, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->javadoc:I

    const/4 v8, 0x0

    if-nez v4, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleLocalVariables:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleMethods:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v0

    instance-of v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v4, :cond_9

    instance-of v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    instance-of v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v4, :cond_a

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_a

    move v4, v8

    :goto_1
    array-length v5, v0

    if-lt v4, v5, :cond_2

    goto/16 :goto_5

    :cond_2
    aget-object v9, v0, v4

    instance-of v5, v9, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz v5, :cond_3

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget-object v5, v9, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-gt v5, v6, :cond_8

    iget v5, v9, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    if-ge v6, v5, :cond_8

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleLocalVariables:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleMethods:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleVariablesAndMethods(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Z)V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    iget-object v5, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v5, :cond_8

    iget-object v6, v9, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v6, :cond_8

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-lez v6, :cond_4

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v10, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-gt v5, v10, :cond_8

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v5, v6, :cond_8

    goto :goto_2

    :cond_4
    new-instance v6, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {v6, v10, v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeDetector;->containsCompletionNode()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleLocalVariables:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleMethods:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleVariablesAndMethods(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    if-lez v2, :cond_5

    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    if-lt v8, v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget-object v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    if-le v2, v3, :cond_7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    :goto_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleLocalVariables:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleMethods:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleVariablesAndMethods(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-void

    :goto_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    throw v0
.end method

.method private getJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaSubscope()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->namedMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    goto :goto_0

    :goto_1
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {v0, v3, v4}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getJavaElementOfCompilationUnit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v3

    :goto_2
    move-object v7, v3

    goto :goto_3

    :cond_1
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {v0, v3, v4}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getJavaElementOfCompilationUnit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v3

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-static {v4, v6, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(IILorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v7, v5

    :goto_3
    if-nez v7, :cond_3

    return-object v5

    :cond_3
    new-instance v3, Lorg/eclipse/jdt/internal/core/LocalVariable;

    new-instance v8, Ljava/lang/String;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([C)V

    iget v9, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v10, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget v11, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v12, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v5, 0x1

    if-nez v4, :cond_4

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signableName()[C

    move-result-object v4

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object v13, v4

    goto :goto_5

    :cond_4
    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->typeSignature(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :goto_5
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v14, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v15, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->getKind()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    move/from16 v16, v5

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    move/from16 v16, v1

    :goto_6
    move-object v6, v3

    invoke-direct/range {v6 .. v16}, Lorg/eclipse/jdt/internal/core/LocalVariable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ)V

    return-object v3
.end method

.method private getJavaElementOfCompilationUnit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->hasComputedEnclosingJavaElements:Z

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->computeEnclosingJavaElements()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->bindingsToHandles:Ljava/util/Map;

    if-nez p1, :cond_1

    return-object v0

    .line 8
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p1

    .line 9
    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->nodesWithProblemsToHandles:Ljava/util/Map;

    if-nez p2, :cond_3

    return-object v0

    .line 10
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p1
.end method

.method private getJavaElementOfCompilationUnit(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->hasComputedEnclosingJavaElements:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->computeEnclosingJavaElements()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->bindingsToHandles:Ljava/util/Map;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p1
.end method

.method private getTypeFromSignature(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 11

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object p2

    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object p2

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    array-length v1, p2

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v3, 0x0

    move v0, v3

    move v4, v0

    :goto_0
    if-lt v0, v1, :cond_2

    if-eq v4, v1, :cond_1

    new-array v0, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-static {v2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v2

    goto :goto_1

    :cond_2
    aget-object v5, p2, v0

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v5, :cond_3

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v2, v4

    move v4, v6

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->compilationUnitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    :try_start_0
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->replacePackagesDot([C)[C

    move-result-object p1

    invoke-direct {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    throw p1

    :catch_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private replacePackagesDot([C)[C
    .locals 7

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return-object p1

    :cond_0
    aget-char v5, p1, v3

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_2

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    const/16 v5, 0x2f

    aput-char v5, p1, v3

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private searchVisibleFields(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move v3, v1

    .line 15
    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz p6, :cond_6

    .line 16
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v4, v5, :cond_6

    if-nez v0, :cond_1

    .line 17
    array-length v3, v4

    move-object v0, v4

    goto :goto_4

    .line 18
    :cond_1
    array-length v5, v4

    add-int v6, v3, v5

    .line 19
    array-length v7, v0

    if-lt v6, v7, :cond_2

    add-int/lit8 v6, v6, 0x5

    .line 20
    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    move-object v6, v0

    :goto_0
    move v7, v1

    move v8, v3

    :goto_1
    if-lt v7, v5, :cond_3

    move-object v0, v6

    move v3, v8

    goto :goto_4

    .line 21
    :cond_3
    aget-object v9, v4, v7

    move v0, v1

    :goto_2
    if-lt v0, v8, :cond_4

    add-int/lit8 v0, v8, 0x1

    .line 22
    aput-object v9, v6, v8

    move v8, v0

    goto :goto_3

    .line 23
    :cond_4
    aget-object v3, v6, v0

    invoke-static {v9, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 24
    :cond_6
    :goto_4
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 25
    array-length v4, v5

    if-lez v4, :cond_7

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 26
    invoke-direct/range {v4 .. v12}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    .line 27
    :cond_7
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz p6, :cond_8

    if-nez v2, :cond_0

    :cond_8
    if-eqz p6, :cond_10

    if-eqz v0, :cond_10

    move v2, v1

    :goto_5
    if-lt v2, v3, :cond_9

    goto/16 :goto_b

    .line 28
    :cond_9
    aget-object v4, v0, v2

    .line 29
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v6

    if-eqz v6, :cond_a

    move-object v5, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    .line 30
    invoke-direct/range {v5 .. v13}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    .line 31
    :cond_a
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    .line 32
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v4, v5, :cond_f

    .line 33
    array-length v5, v4

    add-int v6, v3, v5

    .line 34
    array-length v7, v0

    if-lt v6, v7, :cond_b

    add-int/lit8 v6, v6, 0x5

    .line 35
    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_b
    move-object v6, v0

    :goto_6
    move v7, v1

    move v8, v3

    :goto_7
    if-lt v7, v5, :cond_c

    move-object v0, v6

    move v3, v8

    goto :goto_a

    .line 36
    :cond_c
    aget-object v9, v4, v7

    move v0, v1

    :goto_8
    if-lt v0, v8, :cond_d

    add-int/lit8 v0, v8, 0x1

    .line 37
    aput-object v9, v6, v8

    move v8, v0

    goto :goto_9

    .line 38
    :cond_d
    aget-object v3, v6, v0

    invoke-static {v9, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    :goto_b
    return-void
.end method

.method private searchVisibleFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V
    .locals 6

    .line 1
    new-instance p5, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {p5}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    .line 2
    array-length v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 3
    invoke-virtual {p8, p5}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->addAll(Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    return-void

    .line 4
    :cond_0
    aget-object v1, p1, v0

    .line 5
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    .line 6
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1, p2, p4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget v2, p8, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    :cond_4
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    if-gez v2, :cond_7

    .line 9
    iget v2, p7, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    :cond_5
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_6

    .line 10
    invoke-virtual {p5, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {p7, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    .line 12
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v5, v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p8, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 14
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v5, v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0
.end method

.method private searchVisibleInterfaceMethods([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V
    .locals 13

    move-object v0, p1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v0, v1, :cond_7

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v5, p0

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleLocalMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    :cond_1
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v4, v5, :cond_6

    array-length v5, v4

    add-int v6, v1, v5

    array-length v7, v0

    if-lt v6, v7, :cond_2

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v2, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    move-object v6, v0

    :goto_1
    move v8, v1

    move v7, v2

    :goto_2
    if-lt v7, v5, :cond_3

    move-object v0, v6

    move v1, v8

    goto :goto_5

    :cond_3
    aget-object v9, v4, v7

    move v0, v2

    :goto_3
    if-lt v0, v8, :cond_4

    add-int/lit8 v0, v8, 0x1

    aput-object v9, v6, v8

    move v8, v0

    goto :goto_4

    :cond_4
    aget-object v1, v6, v0

    invoke-static {v9, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_6
    return-void
.end method

.method private searchVisibleLocalMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V
    .locals 7

    new-instance p5, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {p5}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    array-length v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    invoke-virtual {p7, p5}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->addAll(Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    return-void

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultAbstract()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p2, p4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    iget v2, p7, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    :cond_6
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_7

    invoke-virtual {p5, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p7, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v1, v3, :cond_8

    goto :goto_0

    :cond_8
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isMethodSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0
.end method

.method private searchVisibleMethods(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V
    .locals 13

    if-eqz p6, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleInterfaceMethods([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleLocalMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    :cond_2
    const/4 v2, 0x0

    if-eqz p6, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isIntersectionType()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v12, p4

    goto :goto_5

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isIntersectionType()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    array-length v3, v5

    if-lt v2, v3, :cond_6

    :cond_5
    move-object/from16 v12, p4

    goto :goto_4

    :cond_6
    aget-object v3, v5, v2

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v4

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v6

    move-object/from16 v12, p4

    invoke-virtual {v3, v12, v4, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :goto_4
    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleInterfaceMethods([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    goto :goto_6

    :goto_5
    move v1, v2

    :goto_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private searchVisibleVariablesAndMethods(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Z)V
    .locals 19

    move-object/from16 v9, p2

    sget-object v10, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->FakeInvocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    move-object/from16 v0, p1

    :goto_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v1, v12, :cond_9

    const/4 v13, 0x2

    if-eq v1, v13, :cond_8

    const/4 v14, 0x4

    if-eq v1, v14, :cond_0

    goto/16 :goto_7

    :cond_0
    move-object/from16 v15, p1

    move/from16 v16, v11

    :goto_1
    iget v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-eq v0, v13, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    if-eq v0, v14, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    :goto_2
    array-length v0, v13

    if-lt v11, v0, :cond_2

    return-void

    :cond_2
    aget-object v0, v13, v11

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v0

    and-int/2addr v0, v14

    if-eqz v0, :cond_5

    move-object v15, v1

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v4, p1

    move/from16 v5, v16

    move/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleFields(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleMethods(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v0

    and-int/2addr v0, v12

    if-eqz v0, :cond_4

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    filled-new-array {v1}, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p1

    move-object v4, v10

    move-object/from16 v5, p1

    move/from16 v6, v16

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p1

    move-object v4, v10

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleLocalMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_6
    move-object v8, v15

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v4, p1

    move/from16 v5, v16

    move/from16 v6, p5

    move-object/from16 v17, v7

    move-object/from16 v7, p2

    move-object/from16 v18, v8

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleFields(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->searchVisibleMethods(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    :goto_4
    or-int v16, v16, v0

    goto :goto_5

    :cond_7
    move-object v0, v15

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    or-int/2addr v0, v1

    goto :goto_4

    :goto_5
    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    :cond_9
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    array-length v2, v2

    move v3, v11

    :goto_6
    if-lt v3, v2, :cond_a

    goto :goto_7

    :cond_a
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v4, v4, v3

    if-nez v4, :cond_b

    :goto_7
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isSecret()Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_9

    :cond_c
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v5, :cond_d

    goto :goto_9

    :cond_d
    move v5, v11

    :goto_8
    iget v6, v9, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    if-lt v5, v6, :cond_e

    invoke-virtual {v9, v4}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    invoke-virtual {v9, v5}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v6, v7, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v6

    if-eqz v6, :cond_f

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8
.end method


# virtual methods
.method public canUseDiamond([Ljava/lang/String;[C)Z
    .locals 6

    const/16 v0, 0x2e

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v3, 0x330000

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->completionContext:Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->getExpectedTypesKeys()[[C

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    array-length v1, p2

    if-ne v1, v3, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    aget-object p2, p2, v2

    const-wide/16 v4, 0x0

    invoke-direct {v1, p2, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    array-length v4, p2

    new-array v4, v4, [J

    invoke-direct {v1, p2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    :goto_0
    iget p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-eq p2, v3, :cond_4

    const/4 v4, 0x2

    if-eq p2, v4, :cond_4

    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    goto :goto_1

    :cond_4
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p2

    move v0, v2

    :goto_2
    array-length v1, p1

    if-lt v0, v1, :cond_5

    return v3

    :cond_5
    move v1, v2

    :goto_3
    array-length v4, p2

    if-lt v1, v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aget-object v5, p2, v1

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return v2

    :cond_9
    :goto_4
    return v3
.end method

.method public getCompletionNode()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object v0
.end method

.method public getCompletionNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object v0
.end method

.method public getEnclosingElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->hasComputedEnclosingJavaElements:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->computeEnclosingJavaElements()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->completionContext:Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;

    iget v2, v2, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->offset:I

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/core/ITypeRoot;->getElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :goto_1
    const-string v2, "Cannot compute enclosing element"

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVisibleElements(Ljava/lang/String;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->hasComputedVisibleElementBindings:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->computeVisibleElementBindings()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getTypeFromSignature(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-nez p1, :cond_3

    new-array p1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleLocalVariables:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleMethods:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-nez v0, :cond_4

    new-array p1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1

    :cond_4
    new-array v2, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleLocalVariables:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v3

    if-lez v3, :cond_8

    move v4, v1

    move v5, v4

    :goto_0
    if-lt v4, v3, :cond_5

    goto :goto_3

    :cond_5
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleLocalVariables:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v7, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {v7, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_6
    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v6
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_7

    add-int/lit8 v7, v5, 0x1

    :try_start_1
    aput-object v6, v2, v5
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v7

    goto :goto_2

    :catch_1
    move-exception v6

    move v5, v7

    :goto_1
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->logRepeatedMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    move v5, v1

    :goto_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v3

    if-lez v3, :cond_d

    move v4, v1

    :goto_4
    if-lt v4, v3, :cond_9

    goto :goto_7

    :cond_9
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p1, :cond_a

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v7, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_6

    :catch_2
    move-exception v6

    goto :goto_5

    :cond_a
    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isDefinedInSameUnit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getJavaElementOfCompilationUnit(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v6
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v6, :cond_c

    add-int/lit8 v7, v5, 0x1

    :try_start_3
    aput-object v6, v2, v5
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_3

    move v5, v7

    goto :goto_6

    :catch_3
    move-exception v6

    move v5, v7

    goto :goto_5

    :cond_b
    :try_start_4
    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->EmptyNodeMap:Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;

    invoke-static {v6, v7, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v7
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v7, :cond_c

    add-int/lit8 v8, v5, 0x1

    :try_start_5
    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v6

    aput-object v6, v2, v5
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_4

    move v5, v8

    goto :goto_6

    :catch_4
    move-exception v6

    move v5, v8

    :goto_5
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->logRepeatedMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_c
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    :goto_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleMethods:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v3

    if-lez v3, :cond_12

    move v4, v1

    :goto_8
    if-lt v4, v3, :cond_e

    goto :goto_b

    :cond_e
    :try_start_6
    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleMethods:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_f

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v7, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_a

    :catch_5
    move-exception v6

    goto :goto_9

    :cond_f
    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->assistScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isDefinedInSameUnit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getJavaElementOfCompilationUnit(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v6
    :try_end_6
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v6, :cond_11

    add-int/lit8 v7, v5, 0x1

    :try_start_7
    aput-object v6, v2, v5
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_7 .. :try_end_7} :catch_6

    move v5, v7

    goto :goto_a

    :catch_6
    move-exception v6

    move v5, v7

    goto :goto_9

    :cond_10
    :try_start_8
    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    sget-object v8, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->EmptyNodeMap:Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;

    invoke-static {v6, v7, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v7
    :try_end_8
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v7, :cond_11

    add-int/lit8 v8, v5, 0x1

    :try_start_9
    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v6

    aput-object v6, v2, v5
    :try_end_9
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_9 .. :try_end_9} :catch_7

    move v5, v8

    goto :goto_a

    :catch_7
    move-exception v6

    move v5, v8

    :goto_9
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->logRepeatedMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_11
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_12
    :goto_b
    if-eq v5, v0, :cond_13

    new-array p1, v5, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v2, v1, p1, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_13
    return-object v2
.end method

.method public getVisibleFields()Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->hasComputedVisibleElementBindings:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->computeVisibleElementBindings()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleFields:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    return-object v0
.end method

.method public getVisibleLocalVariables()Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->hasComputedVisibleElementBindings:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->computeVisibleElementBindings()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleLocalVariables:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    return-object v0
.end method

.method public getVisibleMethods()Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->hasComputedVisibleElementBindings:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->computeVisibleElementBindings()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->visibleMethods:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    return-object v0
.end method

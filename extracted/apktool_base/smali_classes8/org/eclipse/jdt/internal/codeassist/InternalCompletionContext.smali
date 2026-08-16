.class public Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;
.super Lorg/eclipse/jdt/core/CompletionContext;
.source "SourceFile"


# instance fields
.field protected expectedTypesKeys:[[C

.field protected expectedTypesSignatures:[[C

.field protected extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

.field protected isExtended:Z

.field protected javadoc:I

.field protected offset:I

.field protected token:[C

.field protected tokenEnd:I

.field protected tokenKind:I

.field protected tokenLocation:I

.field protected tokenStart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/CompletionContext;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->offset:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenEnd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->token:[C

    return-void
.end method


# virtual methods
.method public getCompletionNode()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->isExtended:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getCompletionNode()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in extended context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompletionNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->isExtended:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getCompletionNodeParent()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in extended context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnclosingElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->isExtended:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getEnclosingElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in extended context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExpectedTypesKeys()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->expectedTypesKeys:[[C

    return-object v0
.end method

.method public getExpectedTypesSignatures()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->expectedTypesSignatures:[[C

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->offset:I

    return v0
.end method

.method public getToken()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->token:[C

    return-object v0
.end method

.method public getTokenEnd()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenEnd:I

    return v0
.end method

.method public getTokenKind()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenKind:I

    return v0
.end method

.method public getTokenLocation()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenLocation:I

    return v0
.end method

.method public getTokenStart()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenStart:I

    return v0
.end method

.method public getVisibleElements(Ljava/lang/String;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->isExtended:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getVisibleElements(Ljava/lang/String;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation only supported in extended context"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVisibleFields()Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->isExtended:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getVisibleFields()Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in extended context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibleLocalVariables()Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->isExtended:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getVisibleLocalVariables()Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in extended context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibleMethods()Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->isExtended:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;->getVisibleMethods()Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in extended context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isExtended()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->isExtended:Z

    return v0
.end method

.method public isInJavadoc()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->javadoc:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInJavadocFormalReference()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->javadoc:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInJavadocText()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->javadoc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedTypesKeys([[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->expectedTypesKeys:[[C

    return-void
.end method

.method public setExpectedTypesSignatures([[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->expectedTypesSignatures:[[C

    return-void
.end method

.method public setExtended()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->isExtended:Z

    return-void
.end method

.method public setExtendedData(Lorg/eclipse/jdt/core/ITypeRoot;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;)V
    .locals 12

    move-object v10, p0

    const/4 v0, 0x1

    iput-boolean v0, v10, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->isExtended:Z

    new-instance v11, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;-><init>(Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;Lorg/eclipse/jdt/core/ITypeRoot;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;)V

    iput-object v11, v10, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->extendedContext:Lorg/eclipse/jdt/internal/codeassist/InternalExtendedCompletionContext;

    return-void
.end method

.method public setJavadoc(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->javadoc:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->offset:I

    return-void
.end method

.method public setToken([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->token:[C

    return-void
.end method

.method public setTokenKind(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenKind:I

    return-void
.end method

.method public setTokenLocation(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenLocation:I

    return-void
.end method

.method public setTokenRange(II)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->setTokenRange(III)V

    return-void
.end method

.method public setTokenRange(III)V
    .locals 0

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenStart:I

    if-le p3, p2, :cond_0

    move p2, p3

    .line 3
    :cond_0
    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenEnd:I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionContext;->tokenEnd:I

    :cond_1
    return-void
.end method

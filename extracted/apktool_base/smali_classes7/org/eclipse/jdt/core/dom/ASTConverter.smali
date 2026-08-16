.class Lorg/eclipse/jdt/core/dom/ASTConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/ASTConverter$IGetJavaDoc;,
        Lorg/eclipse/jdt/core/dom/ASTConverter$ISetJavaDoc;
    }
.end annotation


# instance fields
.field protected ast:Lorg/eclipse/jdt/core/dom/AST;

.field private commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

.field protected commentsTable:[Lorg/eclipse/jdt/core/dom/Comment;

.field compilationUnitSource:[C

.field compilationUnitSourceLength:I

.field protected docParser:Lorg/eclipse/jdt/core/dom/DocCommentParser;

.field protected insideComments:Z

.field protected monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

.field protected pendingNameScopeResolution:Ljava/util/Set;

.field protected pendingThisExpressionScopeResolution:Ljava/util/Set;

.field private referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

.field protected resolveBindings:Z

.field scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    const-string p2, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    const-wide/32 v0, 0x2f0000

    :cond_0
    move-wide v6, v0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    const-string p2, "org.eclipse.jdt.core.compiler.doc.comment.support"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "enabled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->insideComments:Z

    return-void
.end method

.method private annotateType(Lorg/eclipse/jdt/core/dom/AnnotatableType;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)I
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    array-length v3, p2

    move v4, v2

    move v5, v4

    :goto_0
    if-lt v4, v3, :cond_2

    aget-object p2, p2, v2

    if-eqz p2, :cond_1

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ge p2, v0, :cond_1

    if-lez p2, :cond_1

    sub-int/2addr v0, p2

    add-int/2addr v1, v0

    move v0, p2

    :cond_1
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    move v2, v5

    goto :goto_1

    :cond_2
    aget-object v6, p2, v4

    if-eqz v6, :cond_3

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v5

    add-int/2addr v5, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :goto_1
    return v2
.end method

.method private annotateTypeParameter(Lorg/eclipse/jdt/core/dom/TypeParameter;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->modifiers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :goto_1
    return-void
.end method

.method private checkAndSetMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_0
    return-void
.end method

.method private checkLength(II)I
    .locals 0

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private componentType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getComponentType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1
.end method

.method private convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;)Lorg/eclipse/jdt/core/dom/Javadoc;
    .locals 3

    if-eqz p1, :cond_3

    .line 856
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->commentsTable:[Lorg/eclipse/jdt/core/dom/Comment;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->hasSameTable([Lorg/eclipse/jdt/core/dom/Comment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 857
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->commentsTable:[Lorg/eclipse/jdt/core/dom/Comment;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;-><init>([Lorg/eclipse/jdt/core/dom/Comment;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    .line 858
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getComment(I)Lorg/eclipse/jdt/core/dom/Comment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 859
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Comment;->isDocComment()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    if-nez v1, :cond_3

    .line 860
    check-cast v0, Lorg/eclipse/jdt/core/dom/Javadoc;

    .line 861
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_4

    .line 862
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 863
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Javadoc;->tags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 864
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 865
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/TagElement;

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/TagElement;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private convertAndSetReceiver(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/core/dom/MethodDeclaration;)V
    .locals 4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;->qualifyingName:Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;->qualifyingName:Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->getName()[[C

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;->qualifyingName:Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReceiverQualifier(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReceiverType(Lorg/eclipse/jdt/core/dom/Type;)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_1
    iget-boolean p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Type;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_2
    return-void
.end method

.method private convertToAnnotationDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkCanceled()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->newAnnotationTypeDeclaration()Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->buildBodyDeclarations(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;Z)V

    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_1
    return-object v0
.end method

.method private convertToArray(Lorg/eclipse/jdt/core/dom/Type;III[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/ArrayType;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0, p1, p4}, Lorg/eclipse/jdt/core/dom/AST;->newArrayType(Lorg/eclipse/jdt/core/dom/Type;I)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object p1

    if-lez p3, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p5

    or-int/lit8 p5, p5, 0x1

    invoke-virtual {p1, p5}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_1
    add-int/lit8 p5, p4, -0x1

    invoke-virtual {p0, p4, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveProperRightBracketPosition(II)I

    move-result p4

    move-object v0, p1

    :goto_0
    if-gtz p5, :cond_3

    sub-int/2addr p4, p2

    if-ge p3, p4, :cond_2

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :cond_2
    return-object p1

    :cond_3
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->componentType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {p0, p5, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveProperRightBracketPosition(II)I

    move-result v1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeAnnotationsAndSourceRangeOnArray(Lorg/eclipse/jdt/core/dom/ArrayType;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    return-object p1
.end method

.method private convertToDimensions(II[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Dimension;
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p3

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/AST;->newDimension()Lorg/eclipse/jdt/core/dom/Dimension;

    move-result-object v2

    :goto_1
    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveDimensionAndSetPositions(IILorg/eclipse/jdt/core/dom/Dimension;)V

    return-object v2

    :cond_1
    aget-object v3, p3, v0

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Dimension;->annotations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private convertToEnumDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/EnumDeclaration;
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkCanceled()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/EnumDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/EnumDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->buildBodyDeclarations(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/dom/EnumDeclaration;)V

    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_2
    return-object v0
.end method

.method private createBaseType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[[CIIZ)Lorg/eclipse/jdt/core/dom/Type;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p6

    const/4 v6, 0x0

    const/4 v13, 0x1

    if-nez v12, :cond_1

    invoke-direct {v8, v9, v10, v11, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createSimpleName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[CI)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createSimpleType(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[JII)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object v11

    iget v0, v7, Lorg/eclipse/jdt/core/dom/Name;->index:I

    if-lez v0, :cond_0

    sub-int/2addr v0, v13

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setSourceRangeAnnotationsAndRecordNodes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/core/dom/AnnotatableType;[J[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;III)V

    goto/16 :goto_4

    :cond_1
    move/from16 v0, p5

    if-ne v12, v0, :cond_2

    add-int/lit8 v5, v12, -0x1

    invoke-virtual {v8, v11, v10, v5, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setQualifiedNameNameAndSourceRanges([[C[JILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createSimpleType(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[JII)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object v11

    goto/16 :goto_4

    :cond_2
    if-eqz p7, :cond_4

    if-eqz p3, :cond_3

    aget-object v0, p3, v12

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v8, v11, v10, v12, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setQualifiedNameNameAndSourceRanges([[C[JILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createSimpleType(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[JII)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object v11

    goto/16 :goto_4

    :cond_4
    if-ne v12, v13, :cond_5

    invoke-direct {v8, v9, v10, v11, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createSimpleName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[CI)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v12, -0x1

    invoke-virtual {v8, v11, v10, v0, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setQualifiedNameNameAndSourceRanges([[C[JILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object v0

    :goto_1
    if-eqz p3, :cond_6

    aget-object v1, p3, v12

    if-eqz v1, :cond_6

    move v14, v13

    goto :goto_2

    :cond_6
    move v14, v6

    :goto_2
    if-eqz v14, :cond_7

    iget-object v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_7

    new-instance v13, Lorg/eclipse/jdt/core/dom/NameQualifiedType;

    iget-object v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v13, v1}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v13, v0}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createSimpleName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[CI)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setSourceRangeAnnotationsAndRecordNodes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/core/dom/AnnotatableType;[J[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;III)V

    move-object v11, v13

    goto :goto_4

    :cond_7
    iget-object v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleType(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object v15

    iget v0, v0, Lorg/eclipse/jdt/core/dom/Name;->index:I

    if-lez v0, :cond_8

    sub-int/2addr v0, v13

    move v7, v0

    goto :goto_3

    :cond_8
    move v7, v6

    :goto_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setSourceRangeAnnotationsAndRecordNodes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/core/dom/AnnotatableType;[J[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;III)V

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createQualifiedType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[[CILorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/QualifiedType;

    move-result-object v11

    if-eqz v14, :cond_9

    invoke-virtual {v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/2addr v0, v13

    invoke-virtual {v11, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_9
    :goto_4
    return-object v11
.end method

.method private createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/core/dom/Modifier;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/Modifier;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/Modifier;->setKeyword(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result p1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method private createModuleModifier(Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;)Lorg/eclipse/jdt/core/dom/ModuleModifier;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/core/dom/ModuleModifier;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ModuleModifier;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->setKeyword(Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result p1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method private createQualifiedType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[[CILorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/QualifiedType;
    .locals 7

    invoke-direct {p0, p1, p2, p4, p5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createSimpleName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[CI)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    new-instance p4, Lorg/eclipse/jdt/core/dom/QualifiedType;

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {p4, v0}, Lorg/eclipse/jdt/core/dom/QualifiedType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p4, p6}, Lorg/eclipse/jdt/core/dom/QualifiedType;->setQualifier(Lorg/eclipse/jdt/core/dom/Type;)V

    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/core/dom/QualifiedType;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    invoke-virtual {p6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p6

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p2

    add-int/2addr p6, p2

    add-int/lit8 v6, p6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setSourceRangeAnnotationsAndRecordNodes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/core/dom/AnnotatableType;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;III)V

    return-object p4
.end method

.method private createSimpleName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[CI)Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v1, Ljava/lang/String;

    aget-object p3, p3, p4

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    aget-wide v1, p2, p4

    const/16 p2, 0x20

    ushr-long p2, v1, p2

    long-to-int p2, p2

    long-to-int p3, v1

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    add-int/lit8 p4, p4, 0x1

    iput p4, v0, Lorg/eclipse/jdt/core/dom/Name;->index:I

    iget-boolean p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    return-object v0
.end method

.method private createSimpleType(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[JII)Lorg/eclipse/jdt/core/dom/SimpleType;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleType;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/SimpleType;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    aget-wide v1, p3, p4

    const/16 p1, 0x20

    ushr-long/2addr v1, p1

    long-to-int p1, v1

    aget-wide p4, p3, p5

    long-to-int p3, p4

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0, p1, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    return-object v0
.end method

.method private extractSubArrayType(Lorg/eclipse/jdt/core/dom/ArrayType;II)Lorg/eclipse/jdt/core/dom/ArrayType;
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    :goto_0
    if-gtz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->updateInnerPositions(Lorg/eclipse/jdt/core/dom/Type;I)V

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->componentType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ArrayType;

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object v1

    :goto_1
    if-gtz p3, :cond_2

    :goto_2
    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveProperRightBracketPosition(II)I

    move-result p2

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    return-object p1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p3, p3, -0x1

    goto :goto_1
.end method

.method private getKnownEnd(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;II)I
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveRightBrace(II)I

    move-result p1

    if-le p1, p2, :cond_0

    move p2, p1

    :cond_0
    if-le p2, p3, :cond_1

    move p3, p2

    :cond_1
    return p3
.end method

.method private getName(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[[C[J)Lorg/eclipse/jdt/core/dom/Name;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0, p2, p3, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setQualifiedNameNameAndSourceRanges([[C[JLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v3, Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    aget-wide p2, p3, v0

    const/16 v0, 0x20

    ushr-long v3, p2, v0

    long-to-int v0, v3

    long-to-int p2, p2

    sub-int/2addr p2, v0

    add-int/2addr p2, v2

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iput v2, v1, Lorg/eclipse/jdt/core/dom/Name;->index:I

    iget-boolean p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method private getPackageVisibilityStatement(Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;Lorg/eclipse/jdt/core/dom/ModulePackageAccess;)Lorg/eclipse/jdt/core/dom/ModulePackageAccess;
    .locals 9

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationEnd:I

    if-le v1, v0, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getImportName(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->getTargetedModules()[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v0

    :goto_0
    if-lt v4, v3, :cond_2

    goto :goto_1

    :cond_2
    aget-object v6, v2, v4

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    const/16 v8, 0x2e

    invoke-static {v8, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v7

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->sourcePositions:[J

    invoke-direct {p0, v6, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getName(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[[C[J)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-ge v5, v8, :cond_3

    move v5, v8

    :cond_3
    iget-boolean v8, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v8, :cond_4

    invoke-virtual {p0, v7, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v5, v0

    :goto_1
    if-le v5, v0, :cond_6

    move v0, v5

    :cond_6
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceStart:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object p2
.end method

.method private static internalSetExpression(Lorg/eclipse/jdt/core/dom/SwitchCase;Lorg/eclipse/jdt/core/dom/Expression;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-void
.end method

.method private static internalSetExtraDimensions(Lorg/eclipse/jdt/core/dom/MethodDeclaration;I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setExtraDimensions(I)V

    return-void
.end method

.method private static internalSetExtraDimensions(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setExtraDimensions(I)V

    return-void
.end method

.method private static internalSetExtraDimensions(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setExtraDimensions(I)V

    return-void
.end method

.method private static internalThownExceptions(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private lookupForScopes()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->pendingNameScopeResolution:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Name;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v2

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->lookupScope(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->recordScope(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->pendingThisExpressionScopeResolution:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ThisExpression;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v2

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->lookupScope(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->recordScope(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private lookupScope(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;
    .locals 2

    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/Initializer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/Initializer;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/Initializer;

    :goto_2
    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz v1, :cond_5

    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    if-nez v1, :cond_3

    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/EnumDeclaration;

    if-nez v1, :cond_3

    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;

    if-eqz v1, :cond_a

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getCorrespondingNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-object p1

    :cond_4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    goto :goto_2

    :cond_6
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    :goto_3
    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getCorrespondingNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-object p1

    :cond_7
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-object p1

    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    goto :goto_3

    :cond_9
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getCorrespondingNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-object p1

    :cond_a
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getCorrespondingNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-object p1
.end method

.method private retrieveArrowPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    const/16 v0, 0x62

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setNodeSourceEndPosition(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    return-void
.end method

.method private setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Expression;

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-void
.end method

.method private setModuleModifiers(Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;Lorg/eclipse/jdt/core/dom/RequiresDirective;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_1

    :catch_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    goto :goto_3

    :cond_1
    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    const/16 v0, 0x79

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object p1, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->TRANSITIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModuleModifier(Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;)Lorg/eclipse/jdt/core/dom/ModuleModifier;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModuleModifier(Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;)Lorg/eclipse/jdt/core/dom/ModuleModifier;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    throw p1

    :goto_3
    return-void
.end method

.method private setNodeSourceEndPosition(Lorg/eclipse/jdt/core/dom/ASTNode;I)V
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private setSourceRangeAnnotationsAndRecordNodes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/core/dom/AnnotatableType;[J[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;III)V
    .locals 9

    .line 6
    aget-wide v0, p3, p6

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v7, v0

    .line 7
    aget-wide v0, p3, p7

    long-to-int v8, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p5

    .line 8
    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setSourceRangeAnnotationsAndRecordNodes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/core/dom/AnnotatableType;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;III)V

    return-void
.end method

.method private setSourceRangeAnnotationsAndRecordNodes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/core/dom/AnnotatableType;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;III)V
    .locals 0

    sub-int/2addr p6, p5

    add-int/lit8 p6, p6, 0x1

    .line 1
    invoke-virtual {p2, p5, p6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    if-eqz p3, :cond_0

    .line 2
    aget-object p3, p3, p4

    if-eqz p3, :cond_0

    .line 3
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->annotateType(Lorg/eclipse/jdt/core/dom/AnnotatableType;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)I

    .line 4
    :cond_0
    iget-boolean p3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    return-void
.end method

.method private setTypeAnnotationsAndSourceRangeOnArray(Lorg/eclipse/jdt/core/dom/ArrayType;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveProperRightBracketPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    :cond_0
    sub-int v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v2, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Dimension;

    invoke-direct {p0, v2, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeAnnotationsOnDimension(Lorg/eclipse/jdt/core/dom/Dimension;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    invoke-virtual {p0, v1, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveDimensionAndSetPositions(IILorg/eclipse/jdt/core/dom/Dimension;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private setTypeAnnotationsOnDimension(Lorg/eclipse/jdt/core/dom/Dimension;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    aget-object p2, p2, p3

    if-eqz p2, :cond_2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Dimension;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private trimWhiteSpacesAndComments(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 6
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->trimWhiteSpacesAndComments(II)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    aget v1, v0, v1

    .line 8
    aget v0, v0, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 9
    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-void
.end method

.method private trimWhiteSpacesAndComments(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 2

    .line 1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->trimWhiteSpacesAndComments(II)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget v1, v0, v1

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v1, 0x1

    .line 3
    aget v0, v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method private trimWhiteSpacesAndComments(II)[I
    .locals 7

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    .line 11
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v3, v3, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    .line 12
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    .line 13
    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    move v4, v2

    .line 14
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v5

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_1

    packed-switch v5, :pswitch_data_0

    .line 15
    iget p2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr p2, v2

    move v4, v1

    goto :goto_0

    :pswitch_0
    if-eqz v4, :cond_0

    .line 16
    iget p1, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_0

    :pswitch_1
    if-eqz v4, :cond_0

    .line 17
    iget p1, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_0

    .line 18
    :cond_1
    aput p1, v0, v1

    .line 19
    aput p2, v0, v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public adjustSourcePositionsForParent(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 6

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x17

    if-eq v4, v5, :cond_3

    const/16 v5, 0x19

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v1, v0

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public buildBodyDeclarations(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 2
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 3
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v4, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    .line 4
    :cond_0
    array-length v7, v4

    :goto_0
    if-nez v5, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    .line 5
    :cond_1
    array-length v8, v5

    :goto_1
    if-nez v3, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    .line 6
    :cond_2
    array-length v9, v3

    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-lt v10, v7, :cond_3

    if-lt v11, v9, :cond_3

    if-lt v12, v8, :cond_3

    .line 7
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V

    return-void

    :cond_3
    const v14, 0x7fffffff

    const/4 v15, -0x1

    if-ge v10, v7, :cond_4

    .line 8
    aget-object v6, v4, v10

    .line 9
    iget v13, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge v13, v14, :cond_5

    move v14, v13

    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_4
    if-ge v12, v8, :cond_6

    .line 10
    aget-object v13, v5, v12

    .line 11
    iget v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-ge v1, v14, :cond_7

    move v14, v1

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :cond_7
    :goto_5
    if-ge v11, v9, :cond_8

    .line 12
    aget-object v1, v3, v11

    move-object/from16 v16, v3

    .line 13
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-ge v3, v14, :cond_9

    const/4 v15, 0x2

    goto :goto_6

    :cond_8
    move-object/from16 v16, v3

    const/4 v1, 0x0

    :cond_9
    :goto_6
    if-eqz v15, :cond_e

    const/4 v3, 0x1

    if-eq v15, v3, :cond_c

    const/4 v6, 0x2

    if-eq v15, v6, :cond_a

    :goto_7
    move-object/from16 v1, p1

    move-object/from16 v3, v16

    goto :goto_3

    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    if-nez v1, :cond_b

    .line 15
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_7

    .line 16
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 17
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v1

    if-nez v1, :cond_d

    .line 18
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v1

    move/from16 v3, p3

    invoke-virtual {v0, v3, v13}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(ZLorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    move/from16 v3, p3

    goto :goto_7

    :cond_e
    move/from16 v3, p3

    .line 19
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v1

    const/4 v13, 0x3

    if-ne v1, v13, :cond_f

    .line 20
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 21
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v4, v10, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndAddMultipleFieldDeclaration([Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;ILjava/util/List;)V

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7
.end method

.method public buildBodyDeclarations(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 41
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 42
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 43
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v3, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 44
    :cond_0
    array-length v5, v3

    :goto_0
    if-nez v1, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    .line 45
    :cond_1
    array-length v6, v1

    :goto_1
    if-nez v2, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    .line 46
    :cond_2
    array-length v7, v2

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    if-lt v8, v5, :cond_3

    if-lt v9, v7, :cond_3

    if-lt v10, v6, :cond_3

    return-void

    :cond_3
    const v12, 0x7fffffff

    const/4 v13, -0x1

    if-ge v8, v5, :cond_4

    .line 47
    aget-object v14, v3, v8

    .line 48
    iget v15, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge v15, v12, :cond_5

    move v12, v15

    const/4 v13, 0x0

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :cond_5
    :goto_4
    if-ge v10, v6, :cond_6

    .line 49
    aget-object v11, v1, v10

    .line 50
    iget v4, v11, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-ge v4, v12, :cond_7

    move v12, v4

    const/4 v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :cond_7
    :goto_5
    if-ge v9, v7, :cond_8

    .line 51
    aget-object v4, v2, v9

    .line 52
    iget v15, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-ge v15, v12, :cond_9

    const/4 v13, 0x2

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_6
    if-eqz v13, :cond_e

    const/4 v12, 0x1

    if-eq v13, v12, :cond_c

    const/4 v14, 0x2

    if-eq v13, v14, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 53
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v4

    if-nez v4, :cond_b

    .line 54
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v4

    or-int/2addr v4, v12

    move-object/from16 v12, p2

    invoke-virtual {v12, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_3

    :cond_b
    move-object/from16 v12, p2

    .line 55
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    move-object/from16 v12, p2

    add-int/lit8 v10, v10, 0x1

    .line 56
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v4

    if-nez v4, :cond_d

    .line 57
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v11}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(ZLorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    const/4 v13, 0x0

    goto :goto_3

    :cond_e
    move-object/from16 v12, p2

    const/4 v13, 0x0

    .line 58
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v4

    const/4 v11, 0x3

    if-ne v4, v11, :cond_f

    .line 59
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 60
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v8, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndAddMultipleFieldDeclaration([Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;ILjava/util/List;)V

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3
.end method

.method public buildBodyDeclarations(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/dom/EnumDeclaration;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 22
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 23
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 24
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v3, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    .line 25
    :cond_0
    array-length v6, v3

    :goto_0
    if-nez v4, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    .line 26
    :cond_1
    array-length v7, v4

    :goto_1
    if-nez v2, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    .line 27
    :cond_2
    array-length v8, v2

    :goto_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    if-lt v9, v6, :cond_3

    if-lt v10, v8, :cond_3

    if-lt v11, v7, :cond_3

    .line 28
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    move-object/from16 v12, p2

    invoke-virtual {v0, v1, v12}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V

    return-void

    :cond_3
    move-object/from16 v12, p2

    const v14, 0x7fffffff

    if-ge v9, v6, :cond_5

    .line 29
    aget-object v13, v3, v9

    .line 30
    iget v15, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge v15, v14, :cond_4

    move v14, v15

    const/4 v15, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v15, -0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    goto :goto_4

    :goto_5
    if-ge v11, v7, :cond_6

    .line 31
    aget-object v5, v4, v11

    .line 32
    iget v1, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-ge v1, v14, :cond_7

    move v14, v1

    const/4 v15, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :cond_7
    :goto_6
    if-ge v10, v8, :cond_8

    .line 33
    aget-object v1, v2, v10

    move-object/from16 v16, v2

    .line 34
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-ge v2, v14, :cond_9

    const/4 v15, 0x2

    goto :goto_7

    :cond_8
    move-object/from16 v16, v2

    const/4 v1, 0x0

    :cond_9
    :goto_7
    if-eqz v15, :cond_d

    const/4 v2, 0x1

    if-eq v15, v2, :cond_b

    const/4 v2, 0x2

    if-eq v15, v2, :cond_a

    :goto_8
    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto :goto_3

    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 35
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 36
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v1

    if-nez v1, :cond_c

    .line 37
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(ZLorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_e

    .line 39
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->enumConstants()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v13}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 40
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v3, v9, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndAddMultipleFieldDeclaration([Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;ILjava/util/List;)V

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8
.end method

.method public buildCommentsTable(Lorg/eclipse/jdt/core/dom/CompilationUnit;[[I)V
    .locals 6

    array-length v0, p2

    new-array v0, v0, [Lorg/eclipse/jdt/core/dom/Comment;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->commentsTable:[Lorg/eclipse/jdt/core/dom/Comment;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-lt v1, v3, :cond_1

    array-length p2, p2

    if-ge v2, p2, :cond_0

    new-array p2, v2, [Lorg/eclipse/jdt/core/dom/Comment;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->commentsTable:[Lorg/eclipse/jdt/core/dom/Comment;

    invoke-static {v1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->commentsTable:[Lorg/eclipse/jdt/core/dom/Comment;

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->commentsTable:[Lorg/eclipse/jdt/core/dom/Comment;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setCommentTable([Lorg/eclipse/jdt/core/dom/Comment;)V

    return-void

    :cond_1
    aget-object v3, p2, v1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createComment([I)Lorg/eclipse/jdt/core/dom/Comment;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/core/dom/Comment;->setAlternateRoot(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->commentsTable:[Lorg/eclipse/jdt/core/dom/Comment;

    add-int/lit8 v5, v2, 0x1

    aput-object v3, v4, v2

    move v2, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public checkAndAddMultipleFieldDeclaration([Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;ILjava/util/List;)V
    .locals 3

    aget-object v0, p1, p2

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    new-instance p1, Lorg/eclipse/jdt/core/dom/Initializer;

    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/dom/Initializer;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Block;)Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/Initializer;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/Initializer;Lorg/eclipse/jdt/internal/compiler/ast/Initializer;)V

    iget p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-lez p2, :cond_1

    add-int/lit8 v1, p2, -0x1

    aget-object v1, p1, v1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ne v1, v2, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object p3

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationFragment(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToFieldDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public checkAndAddMultipleLocalDeclaration([Lorg/eclipse/jdt/internal/compiler/ast/Statement;ILjava/util/List;)V
    .locals 3

    if-lez p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    aget-object v0, p1, v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    aget-object v1, p1, p2

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ne v0, v2, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object p3

    aget-object p1, p1, p2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationFragment(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationStatement(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    aget-object p1, p1, p2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationStatement(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public checkCanceled()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public completeRecord(Lorg/eclipse/jdt/core/dom/ArrayType;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->componentType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ArrayType;

    move-object p1, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 4

    .line 177
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkCanceled()V

    .line 178
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 180
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;)V

    .line 181
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 182
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 183
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 184
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveIdentifierEndPosition(II)I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 185
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 186
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 187
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    const/4 v3, 0x0

    .line 189
    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeForMethodDeclaration(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;Lorg/eclipse/jdt/core/dom/Type;I)V

    .line 190
    :cond_1
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    .line 191
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 192
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 193
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V

    .line 194
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;->defaultValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_2

    .line 195
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->setDefault(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 196
    :cond_2
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_3

    .line 197
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 198
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 199
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    :cond_3
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 12

    .line 1377
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 1378
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkCanceled()V

    .line 1379
    new-instance v1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1380
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 1381
    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 1382
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiersSourceStart:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1383
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v3, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    .line 1384
    :goto_0
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->setInterface(Z)V

    .line 1385
    new-instance v6, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1386
    new-instance v7, Ljava/lang/String;

    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 1387
    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v8, v7

    add-int/2addr v8, v5

    invoke-virtual {v6, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1388
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 1389
    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    sub-int/2addr v8, v7

    add-int/2addr v8, v5

    invoke-virtual {v1, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1390
    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_3

    .line 1391
    iget-object v8, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v8, v8, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v8, v3, :cond_2

    .line 1392
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->setSuperclassType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_1

    .line 1393
    :cond_2
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->internalSetSuperclass(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 1394
    :cond_3
    :goto_1
    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_7

    .line 1395
    iget-object v8, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v8, v8, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v8, v3, :cond_5

    .line 1396
    array-length v8, v7

    move v9, v4

    :goto_2
    if-lt v9, v8, :cond_4

    goto :goto_4

    .line 1397
    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v10

    aget-object v11, v7, v9

    invoke-virtual {p0, v11}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1398
    :cond_5
    array-length v8, v7

    move v9, v4

    :goto_3
    if-lt v9, v8, :cond_6

    goto :goto_4

    .line 1399
    :cond_6
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->internalSuperInterfaces()Ljava/util/List;

    move-result-object v10

    aget-object v11, v7, v9

    invoke-virtual {p0, v11}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1400
    :cond_7
    :goto_4
    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v7, :cond_a

    .line 1401
    iget-object v8, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v8, v8, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v8, v3, :cond_9

    .line 1402
    array-length v3, v7

    :goto_5
    if-lt v4, v3, :cond_8

    goto :goto_6

    .line 1403
    :cond_8
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v5

    aget-object v8, v7, v4

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)Lorg/eclipse/jdt/core/dom/TypeParameter;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1404
    :cond_9
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v3

    or-int/2addr v3, v5

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 1405
    :cond_a
    :goto_6
    invoke-virtual {p0, p1, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->buildBodyDeclarations(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;Z)V

    .line 1406
    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v0, :cond_b

    .line 1407
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1408
    invoke-virtual {p0, v6, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1409
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    .line 1410
    :cond_b
    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v1

    .line 1411
    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-ne v0, v3, :cond_d

    return-object v2

    .line 1412
    :cond_d
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToAnnotationDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;

    move-result-object p1

    return-object p1

    .line 1413
    :cond_e
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-ne v0, v3, :cond_f

    return-object v2

    .line 1414
    :cond_f
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToEnumDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/EnumDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public convert(ZLorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkCanceled()V

    .line 2
    instance-of v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, v7

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v8, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    iget-object v0, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 5
    iget-object v9, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 6
    iput-object v8, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 7
    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    .line 8
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v0

    .line 9
    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setConstructor(Z)V

    .line 10
    new-instance v10, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v10, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 11
    new-instance v1, Ljava/lang/String;

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v10, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 12
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 13
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v6, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveIdentifierEndPosition(II)I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 14
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    array-length v2, v2

    add-int/2addr v2, v1

    :cond_1
    sub-int v3, v2, v1

    const/4 v11, 0x1

    add-int/2addr v3, v11

    .line 15
    invoke-virtual {v10, v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 16
    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 17
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 18
    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v12, 0x0

    if-nez v1, :cond_2

    move v4, v12

    goto :goto_0

    .line 19
    :cond_2
    array-length v4, v1

    :goto_0
    const/16 v13, 0x8

    if-lez v4, :cond_7

    .line 20
    iget-object v3, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v3

    if-ge v3, v13, :cond_5

    move v3, v12

    :goto_1
    add-int/lit8 v5, v3, 0x1

    .line 21
    aget-object v3, v1, v3

    .line 22
    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v14

    .line 23
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v3, :cond_3

    array-length v3, v3

    if-lez v3, :cond_3

    .line 24
    invoke-virtual {v14}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v3

    or-int/2addr v3, v11

    invoke-virtual {v14, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 25
    :cond_3
    invoke-static {v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->internalThownExceptions(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v5, v4, :cond_4

    .line 26
    invoke-virtual {v14}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v14}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    :goto_2
    add-int/2addr v3, v1

    goto :goto_4

    :cond_4
    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v12

    :goto_3
    add-int/lit8 v5, v3, 0x1

    .line 27
    aget-object v3, v1, v3

    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    .line 28
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v5, v4, :cond_6

    .line 29
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_3

    .line 30
    :cond_7
    :goto_4
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    if-eqz v1, :cond_9

    .line 31
    iget-object v1, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-lt v1, v13, :cond_8

    .line 32
    invoke-direct {v6, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertAndSetReceiver(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/core/dom/MethodDeclaration;)V

    goto :goto_5

    .line 33
    :cond_8
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/2addr v1, v11

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 34
    :cond_9
    :goto_5
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v1, :cond_a

    move v5, v12

    goto :goto_6

    .line 35
    :cond_a
    array-length v5, v1

    :goto_6
    if-lez v5, :cond_b

    move v14, v12

    :goto_7
    add-int/lit8 v15, v14, 0x1

    .line 36
    aget-object v14, v1, v14

    invoke-virtual {v6, v14}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v14

    .line 37
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v15, v5, :cond_c

    if-nez v4, :cond_b

    .line 38
    invoke-virtual {v14}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v14}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int/2addr v3, v1

    :cond_b
    move v13, v3

    goto :goto_8

    :cond_c
    move v14, v15

    const/16 v13, 0x8

    goto :goto_7

    :goto_8
    const/4 v14, 0x2

    const/4 v15, 0x0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_d

    .line 39
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/2addr v0, v11

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 40
    :cond_d
    move-object v0, v7

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    .line 41
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    .line 42
    iget-object v1, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v1, v14, :cond_e

    .line 43
    invoke-virtual {v8, v15}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReturnType2(Lorg/eclipse/jdt/core/dom/Type;)V

    goto/16 :goto_b

    .line 44
    :cond_e
    new-instance v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    iget-object v2, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/PrimitiveType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 45
    sget-object v2, Lorg/eclipse/jdt/core/dom/PrimitiveType;->VOID:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->setPrimitiveTypeCode(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)V

    .line 46
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v1, v2, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 47
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalSetReturnType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_b

    .line 48
    :cond_f
    instance-of v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v0, :cond_12

    .line 49
    move-object v0, v7

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    .line 50
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_11

    .line 51
    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    .line 52
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    invoke-virtual {v6, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveEndOfRightParenthesisPosition(II)I

    move-result v1

    .line 53
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->extraDimensions()I

    move-result v4

    .line 54
    iget-object v2, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v2, v2, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v12, 0x8

    if-lt v2, v12, :cond_10

    .line 55
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    .line 56
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    move/from16 v16, v4

    move-object v4, v12

    move-object v12, v5

    move/from16 v5, v16

    .line 57
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setExtraAnnotatedDimensions(IILorg/eclipse/jdt/internal/compiler/ast/TypeReference;Ljava/util/List;I)V

    move/from16 v0, v16

    goto :goto_9

    :cond_10
    move v0, v4

    move-object v12, v5

    .line 58
    invoke-static {v8, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->internalSetExtraDimensions(Lorg/eclipse/jdt/core/dom/MethodDeclaration;I)V

    .line 59
    :goto_9
    invoke-virtual {v6, v8, v12, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeForMethodDeclaration(Lorg/eclipse/jdt/core/dom/MethodDeclaration;Lorg/eclipse/jdt/core/dom/Type;I)V

    goto :goto_a

    .line 60
    :cond_11
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/2addr v0, v11

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 61
    iget-object v0, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v0, v14, :cond_12

    .line 62
    invoke-virtual {v8, v15}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReturnType2(Lorg/eclipse/jdt/core/dom/Type;)V

    :cond_12
    :goto_a
    move-object v0, v15

    .line 63
    :goto_b
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    .line 64
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    .line 65
    invoke-direct {v6, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkLength(II)I

    move-result v3

    invoke-virtual {v8, v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 66
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-ne v2, v1, :cond_13

    move v3, v2

    goto :goto_c

    :cond_13
    add-int/lit8 v3, v2, 0x1

    .line 67
    :goto_c
    invoke-virtual {v6, v3, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveRightBraceOrSemiColonPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    .line 68
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    sub-int v5, v3, v2

    add-int/2addr v5, v11

    .line 69
    invoke-virtual {v8, v2, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 70
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    .line 71
    iget v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    invoke-virtual {v6, v13, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveStartBlockPosition(II)I

    move-result v5

    if-ne v5, v4, :cond_14

    .line 72
    iget v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    .line 73
    :cond_14
    iget v12, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    add-int/2addr v12, v11

    invoke-virtual {v6, v12, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveRightBrace(II)I

    move-result v1

    if-eq v5, v4, :cond_15

    if-eq v1, v4, :cond_15

    .line 74
    new-instance v15, Lorg/eclipse/jdt/core/dom/Block;

    iget-object v1, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v15, v1}, Lorg/eclipse/jdt/core/dom/Block;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    sub-int/2addr v3, v5

    add-int/2addr v3, v11

    .line 75
    invoke-virtual {v15, v5, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 76
    invoke-virtual {v8, v15}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    :cond_15
    if-eqz v15, :cond_1c

    if-nez v2, :cond_16

    if-eqz v0, :cond_1c

    :cond_16
    if-eqz v0, :cond_17

    .line 77
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-eq v1, v11, :cond_17

    .line 78
    invoke-virtual {v15}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    if-nez v2, :cond_18

    const/4 v0, 0x0

    goto :goto_d

    .line 79
    :cond_18
    array-length v0, v2

    :goto_d
    const/4 v1, 0x0

    :goto_e
    if-lt v1, v0, :cond_19

    goto :goto_10

    .line 80
    :cond_19
    aget-object v3, v2, v1

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v4, :cond_1a

    .line 81
    invoke-virtual {v15}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v2, v1, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndAddMultipleLocalDeclaration([Lorg/eclipse/jdt/internal/compiler/ast/Statement;ILjava/util/List;)V

    goto :goto_f

    .line 82
    :cond_1a
    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 83
    invoke-virtual {v15}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    :goto_10
    if-eqz v15, :cond_24

    .line 84
    iget v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    and-int/lit16 v1, v0, 0x500

    if-nez v1, :cond_1e

    if-eqz p1, :cond_24

    .line 85
    iget-object v1, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1e

    if-le v1, v2, :cond_1d

    move v1, v14

    goto :goto_11

    :cond_1d
    const/4 v1, 0x0

    :goto_11
    const v2, 0x10008

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_24

    .line 86
    :cond_1e
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/2addr v0, v11

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_14

    .line 87
    :cond_1f
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/2addr v0, v11

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isNative()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_24

    .line 89
    invoke-virtual {v6, v13, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveStartBlockPosition(II)I

    move-result v0

    if-ne v0, v4, :cond_20

    .line 90
    iget v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    .line 91
    :cond_20
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    .line 92
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v2, :cond_23

    .line 93
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    const/4 v5, 0x0

    :goto_12
    if-lt v5, v3, :cond_21

    goto :goto_13

    .line 94
    :cond_21
    aget-object v12, v2, v5

    .line 95
    invoke-interface {v12}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v13

    if-ne v13, v0, :cond_22

    invoke-interface {v12}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v13

    const v15, 0x600000f0

    if-ne v13, v15, :cond_22

    .line 96
    invoke-interface {v12}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v1

    goto :goto_13

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 97
    :cond_23
    :goto_13
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    .line 98
    invoke-direct {v6, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkLength(II)I

    move-result v3

    invoke-virtual {v8, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    if-eq v0, v4, :cond_24

    if-eq v1, v4, :cond_24

    .line 99
    new-instance v2, Lorg/eclipse/jdt/core/dom/Block;

    iget-object v3, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/Block;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 100
    invoke-direct {v6, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkLength(II)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 101
    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    .line 102
    :cond_24
    :goto_14
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 103
    iget-object v1, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v1, v14, :cond_26

    .line 104
    array-length v1, v0

    const/4 v12, 0x0

    :goto_15
    if-lt v12, v1, :cond_25

    goto :goto_16

    .line 105
    :cond_25
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v2

    aget-object v3, v0, v12

    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)Lorg/eclipse/jdt/core/dom/TypeParameter;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    .line 106
    :cond_26
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/2addr v0, v11

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 107
    :cond_27
    :goto_16
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-virtual {v6, v0, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V

    .line 108
    iget-boolean v0, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v0, :cond_28

    .line 109
    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 110
    invoke-virtual {v6, v10, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 111
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    .line 112
    :cond_28
    iput-object v9, v6, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v8
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;
    .locals 1

    .line 244
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    if-eqz v0, :cond_0

    .line 245
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;)Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    move-result-object p1

    return-object p1

    .line 246
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;

    if-eqz v0, :cond_1

    .line 247
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;)Lorg/eclipse/jdt/core/dom/MarkerAnnotation;

    move-result-object p1

    return-object p1

    .line 248
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;)Lorg/eclipse/jdt/core/dom/NormalAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;)Lorg/eclipse/jdt/core/dom/ArrayAccess;
    .locals 3

    .line 285
    new-instance v0, Lorg/eclipse/jdt/core/dom/ArrayAccess;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ArrayAccess;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 286
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 288
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 289
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ArrayAccess;->setArray(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 290
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;->position:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ArrayAccess;->setIndex(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)Lorg/eclipse/jdt/core/dom/ArrayCreation;
    .locals 8

    .line 249
    new-instance v0, Lorg/eclipse/jdt/core/dom/ArrayCreation;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 250
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 252
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 253
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 254
    array-length v6, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v6, :cond_7

    .line 255
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    .line 256
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 258
    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    check-cast v3, Lorg/eclipse/jdt/core/dom/ArrayType;

    .line 260
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_4

    .line 261
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 262
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_1

    .line 263
    :cond_2
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {p0, v3, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeAnnotationsAndSourceRangeOnArray(Lorg/eclipse/jdt/core/dom/ArrayType;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    goto :goto_1

    .line 264
    :cond_3
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    const/4 v5, -0x1

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToArray(Lorg/eclipse/jdt/core/dom/Type;III[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object v3

    .line 265
    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->setType(Lorg/eclipse/jdt/core/dom/ArrayType;)V

    .line 266
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_5

    .line 267
    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->completeRecord(Lorg/eclipse/jdt/core/dom/ArrayType;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 268
    :cond_5
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz p1, :cond_6

    .line 269
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;)Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->setInitializer(Lorg/eclipse/jdt/core/dom/ArrayInitializer;)V

    :cond_6
    return-object v0

    .line 270
    :cond_7
    aget-object v3, v1, v2

    if-eqz v3, :cond_9

    .line 271
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    .line 272
    iget-boolean v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v4, :cond_8

    .line 273
    aget-object v4, v1, v2

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 274
    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->dimensions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;)Lorg/eclipse/jdt/core/dom/ArrayInitializer;
    .locals 5

    .line 275
    new-instance v0, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 276
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 278
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 279
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_3

    .line 280
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    .line 281
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    .line 282
    iget-boolean v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v4, :cond_2

    .line 283
    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 284
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->expressions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;)Lorg/eclipse/jdt/core/dom/AssertStatement;
    .locals 4

    .line 291
    new-instance v0, Lorg/eclipse/jdt/core/dom/AssertStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/AssertStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 292
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AssertStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 294
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AssertStatement;->setMessage(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 297
    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 298
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveSemiColonPosition(Lorg/eclipse/jdt/core/dom/Expression;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 299
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    .line 300
    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_0

    :cond_1
    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    .line 301
    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :goto_0
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Assignment;)Lorg/eclipse/jdt/core/dom/Assignment;
    .locals 3

    .line 302
    new-instance v0, Lorg/eclipse/jdt/core/dom/Assignment;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 303
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 305
    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setLeftHandSide(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 307
    sget-object v2, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    .line 308
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    .line 309
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/Assignment;->setRightHandSide(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 310
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    .line 311
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 312
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;)Lorg/eclipse/jdt/core/dom/Assignment;
    .locals 3

    .line 540
    new-instance v0, Lorg/eclipse/jdt/core/dom/Assignment;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 541
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setLeftHandSide(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 543
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    .line 544
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 545
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 546
    :pswitch_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->RIGHT_SHIFT_SIGNED_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    goto :goto_0

    .line 547
    :pswitch_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->REMAINDER_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    goto :goto_0

    .line 548
    :pswitch_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->TIMES_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    goto :goto_0

    .line 549
    :pswitch_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->PLUS_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    goto :goto_0

    .line 550
    :pswitch_4
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->MINUS_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    goto :goto_0

    .line 551
    :pswitch_5
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->LEFT_SHIFT_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    goto :goto_0

    .line 552
    :pswitch_6
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->DIVIDE_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    goto :goto_0

    .line 553
    :pswitch_7
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->BIT_XOR_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    goto :goto_0

    .line 554
    :cond_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->RIGHT_SHIFT_UNSIGNED_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    goto :goto_0

    .line 555
    :cond_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->BIT_OR_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    goto :goto_0

    .line 556
    :cond_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->BIT_AND_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setOperator(Lorg/eclipse/jdt/core/dom/Assignment$Operator;)V

    .line 557
    :goto_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment;->setRightHandSide(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 558
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_3

    .line 559
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Block;)Lorg/eclipse/jdt/core/dom/Block;
    .locals 5

    .line 405
    new-instance v0, Lorg/eclipse/jdt/core/dom/Block;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/Block;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 406
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-lez v1, :cond_0

    .line 407
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 408
    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz p1, :cond_4

    .line 409
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_2

    .line 410
    :cond_1
    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v4, :cond_2

    .line 411
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndAddMultipleLocalDeclaration([Lorg/eclipse/jdt/internal/compiler/ast/Statement;ILjava/util/List;)V

    goto :goto_1

    .line 412
    :cond_2
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 413
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/FalseLiteral;)Lorg/eclipse/jdt/core/dom/BooleanLiteral;
    .locals 2

    .line 744
    new-instance v0, Lorg/eclipse/jdt/core/dom/BooleanLiteral;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/BooleanLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v1, 0x0

    .line 745
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BooleanLiteral;->setBooleanValue(Z)V

    .line 746
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 747
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 748
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/TrueLiteral;)Lorg/eclipse/jdt/core/dom/BooleanLiteral;
    .locals 3

    .line 1332
    new-instance v0, Lorg/eclipse/jdt/core/dom/BooleanLiteral;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/BooleanLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v1, 0x1

    .line 1333
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BooleanLiteral;->setBooleanValue(Z)V

    .line 1334
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_0

    .line 1335
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1336
    :cond_0
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;)Lorg/eclipse/jdt/core/dom/BreakStatement;
    .locals 4

    .line 414
    new-instance v0, Lorg/eclipse/jdt/core/dom/BreakStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/BreakStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 415
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1

    .line 416
    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->isImplicit:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->setImplicit(Z)V

    .line 417
    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->isImplicit:Z

    if-eqz v1, :cond_0

    .line 418
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_0

    .line 419
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_0

    .line 420
    :cond_1
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 421
    :goto_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    if-eqz v1, :cond_2

    .line 422
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 423
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 424
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p0, v2, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveIdentifierAndSetPositions(IILorg/eclipse/jdt/core/dom/Name;)V

    .line 425
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->setLabel(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    goto :goto_1

    .line 426
    :cond_2
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v3, v3, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-lt v3, v2, :cond_4

    .line 427
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 429
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 430
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_1

    .line 431
    :cond_3
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)Lorg/eclipse/jdt/core/dom/CastExpression;
    .locals 3

    .line 448
    new-instance v0, Lorg/eclipse/jdt/core/dom/CastExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/CastExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 449
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 450
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 451
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->trimWhiteSpacesAndComments(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    .line 452
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/CastExpression;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    .line 453
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/CastExpression;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 454
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;)Lorg/eclipse/jdt/core/dom/CharacterLiteral;
    .locals 4

    .line 456
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 457
    new-instance v2, Lorg/eclipse/jdt/core/dom/CharacterLiteral;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 458
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_0

    .line 459
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 460
    :cond_0
    new-instance p1, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    invoke-direct {p1, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->internalSetEscapedValue(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 462
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->removeLeadingAndTrailingCommentsFromLiteral(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-object v2
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;
    .locals 7

    .line 113
    new-instance v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 114
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 116
    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_3

    .line 117
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v4, v4, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v4, v3, :cond_2

    .line 118
    array-length v1, v1

    move v4, v2

    :goto_0
    if-lt v4, v1, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object v5

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v6, v6, v4

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 121
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v1, v3, :cond_4

    .line 122
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_2

    .line 123
    :cond_4
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->internalSetName(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 124
    :goto_2
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 125
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_6

    .line 126
    array-length v1, p1

    :goto_3
    if-lt v2, v1, :cond_5

    goto :goto_4

    .line 127
    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments()Ljava/util/List;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[C)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 11

    .line 468
    const-string v0, "----------------------------------- SOURCE END -------------------------------------"

    const-string v1, "----------------------------------- SOURCE BEGIN -------------------------------------"

    const-string v2, "line.separator"

    :try_start_0
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    if-eqz v3, :cond_0

    .line 469
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removeUnused()Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    .line 470
    iput-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    .line 471
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->docParser:Lorg/eclipse/jdt/core/dom/DocCommentParser;

    iput-object v3, v4, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_8

    .line 472
    :cond_0
    :goto_0
    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    .line 473
    array-length v3, p2

    iput v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    .line 474
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3, p2, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([CLorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 475
    new-instance v3, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnit;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 476
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setStatementsRecoveryData(Ljava/lang/Object;)V

    .line 477
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->comments:[[I

    if-eqz v4, :cond_1

    .line 478
    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->buildCommentsTable(Lorg/eclipse/jdt/core/dom/CompilationUnit;[[I)V

    .line 479
    :cond_1
    iget-boolean v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v4, :cond_2

    .line 480
    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 481
    :cond_2
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v4, :cond_3

    .line 482
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertPackage(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v4

    .line 483
    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setPackage(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)V

    .line 484
    :cond_3
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 485
    array-length v6, v4

    move v7, v5

    :goto_1
    if-lt v7, v6, :cond_4

    goto :goto_2

    .line 486
    :cond_4
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object v8

    aget-object v9, v4, v7

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertImport(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 487
    :cond_5
    :goto_2
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v4, :cond_7

    .line 488
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToModuleDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object v4

    if-nez v4, :cond_6

    .line 489
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_5

    .line 490
    :cond_6
    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setModule(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V

    goto :goto_5

    .line 491
    :cond_7
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v4, :cond_c

    .line 492
    array-length v6, v4

    move v7, v5

    :goto_3
    if-lt v7, v6, :cond_8

    goto :goto_5

    .line 493
    :cond_8
    aget-object v8, v4, v7

    .line 494
    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v9, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_4

    .line 495
    :cond_9
    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v8

    if-nez v8, :cond_a

    .line 496
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v8

    or-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_4

    .line 497
    :cond_a
    instance-of v9, v8, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    if-eqz v9, :cond_b

    .line 498
    check-cast v8, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setModule(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V

    goto :goto_4

    .line 499
    :cond_b
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 500
    :cond_c
    :goto_5
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v4, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 501
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v6, v4, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-eqz v6, :cond_e

    .line 502
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v4

    .line 503
    array-length v7, v4

    if-ne v7, v6, :cond_d

    goto :goto_6

    .line 504
    :cond_d
    new-array v6, v7, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-static {v4, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v6

    .line 505
    :goto_6
    new-instance v5, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;

    invoke-direct {v5, v4}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;-><init>([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    .line 506
    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 507
    new-instance v5, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    invoke-direct {v5, v4, p1}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;-><init>([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    .line 508
    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 509
    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setProblems([Lorg/eclipse/jdt/core/compiler/IProblem;)V

    .line 510
    :cond_e
    iget-boolean p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz p1, :cond_f

    .line 511
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->lookupForScopes()V

    .line 512
    :cond_f
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->initCommentMapper(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V

    .line 513
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->DEBUG:Z

    if-eqz p1, :cond_12

    .line 514
    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;-><init>()V

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->process(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 515
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Bad AST node structure:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->findLineSeparator([C)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    .line 517
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 518
    :cond_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const-string v6, "\n"

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 524
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v5, "Bad AST node structure"

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 527
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->DEBUG_THROW:Z

    if-nez p1, :cond_11

    goto :goto_7

    .line 528
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_12
    :goto_7
    return-object v3

    .line 529
    :goto_8
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Exception occurred during compilation unit conversion:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->findLineSeparator([C)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    .line 531
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 532
    :cond_13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 536
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 539
    throw p1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;)Lorg/eclipse/jdt/core/dom/ConditionalExpression;
    .locals 4

    .line 560
    new-instance v0, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 561
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 562
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 563
    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 564
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->setThenExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 565
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 566
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->setElseExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 567
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v3, v1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v3, p1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ContinueStatement;)Lorg/eclipse/jdt/core/dom/ContinueStatement;
    .locals 4

    .line 568
    new-instance v0, Lorg/eclipse/jdt/core/dom/ContinueStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ContinueStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 569
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 570
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    if-eqz v1, :cond_0

    .line 571
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 572
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 573
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p0, v2, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveIdentifierAndSetPositions(IILorg/eclipse/jdt/core/dom/Name;)V

    .line 574
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ContinueStatement;->setLabel(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    :cond_0
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/DoStatement;)Lorg/eclipse/jdt/core/dom/DoStatement;
    .locals 3

    .line 575
    new-instance v0, Lorg/eclipse/jdt/core/dom/DoStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/DoStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 576
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 577
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/DoStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/DoStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 578
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/DoStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 579
    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->setBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;)Lorg/eclipse/jdt/core/dom/EmptyStatement;
    .locals 2

    .line 587
    new-instance v0, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/EmptyStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 588
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;
    .locals 9

    .line 589
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkCanceled()V

    .line 590
    new-instance v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 591
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 592
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 593
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 594
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 595
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    .line 596
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 597
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_5

    .line 598
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v5, :cond_2

    .line 599
    move-object v5, v4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v5, :cond_3

    .line 600
    new-instance v6, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 601
    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    invoke-virtual {p0, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveStartBlockPosition(II)I

    move-result v7

    .line 602
    iget v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveRightBrace(II)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_0

    .line 603
    iget v3, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    :cond_0
    sub-int v8, v3, v7

    add-int/lit8 v8, v8, 0x1

    .line 604
    invoke-virtual {v6, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 605
    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->setAnonymousClassDeclaration(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)V

    .line 606
    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->buildBodyDeclarations(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)V

    .line 607
    iget-boolean v7, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v7, :cond_1

    .line 608
    invoke-virtual {p0, v6, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 609
    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_1
    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 610
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 611
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 612
    :cond_3
    :goto_0
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_6

    .line 613
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v3, :cond_4

    goto :goto_2

    .line 614
    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->arguments()Ljava/util/List;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 615
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 616
    :cond_6
    :goto_2
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    .line 617
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_7

    .line 618
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 619
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 620
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->resolveVariable()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    .line 621
    :cond_7
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/AND_AND_Expression;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 9

    .line 128
    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 129
    sget-object v1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CONDITIONAL_AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 130
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 132
    :cond_0
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0xfc0

    shr-int/lit8 v2, v2, 0x6

    .line 133
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v4, :cond_c

    .line 134
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x1fe00000

    and-int/2addr v4, v5

    if-nez v4, :cond_c

    .line 135
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 137
    :cond_1
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 138
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v6, v4, 0xfc0

    shr-int/lit8 v6, v6, 0x6

    const/4 v7, 0x0

    if-eq v6, v2, :cond_2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 139
    :cond_2
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v4, :cond_a

    .line 140
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v6, v4, 0xfc0

    shr-int/lit8 v6, v6, 0x6

    if-eq v6, v2, :cond_a

    and-int/2addr v4, v5

    if-nez v4, :cond_a

    .line 141
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v4

    .line 142
    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 143
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_4

    .line 144
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 145
    :cond_4
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getOperatorFor(I)Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 146
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 148
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 149
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v1, v7

    :goto_0
    add-int/lit8 v3, v6, -0x1

    if-lt v1, v3, :cond_8

    move-object v1, v0

    :goto_1
    if-lt v7, v6, :cond_6

    .line 150
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    .line 151
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_5

    .line 152
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_5
    return-object v0

    :cond_6
    sub-int v2, v3, v7

    .line 153
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Expression;

    .line 154
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 155
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    .line 156
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v8

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v8, v2

    sub-int/2addr v8, v5

    invoke-virtual {v1, v5, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 157
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v2

    const/16 v5, 0x1b

    if-ne v2, v5, :cond_7

    .line 158
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/InfixExpression;

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 159
    :cond_8
    new-instance v3, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v3, v5}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 160
    iget-boolean v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v5, :cond_9

    .line 161
    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 162
    :cond_9
    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 163
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getOperatorFor(I)Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 164
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_0

    .line 165
    :cond_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 166
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 167
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v3, :cond_b

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 168
    :cond_b
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 170
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 171
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    return-object v0

    .line 172
    :cond_c
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    .line 173
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 174
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 175
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 176
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 9

    .line 344
    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 345
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 347
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0xfc0

    shr-int/lit8 v1, v1, 0x6

    .line 348
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getOperatorFor(I)Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 349
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    const/4 v4, 0x0

    const/high16 v5, 0x1fe00000

    if-eqz v3, :cond_c

    .line 350
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v3, v5

    if-nez v3, :cond_c

    .line 351
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 353
    :cond_1
    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 354
    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v7, v6, 0xfc0

    shr-int/lit8 v7, v7, 0x6

    if-eq v7, v1, :cond_2

    and-int/2addr v6, v5

    if-eqz v6, :cond_3

    .line 355
    :cond_2
    instance-of v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v6, :cond_a

    .line 356
    iget v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v7, v6, 0xfc0

    shr-int/lit8 v7, v7, 0x6

    if-eq v7, v1, :cond_a

    and-int/2addr v6, v5

    if-nez v6, :cond_a

    .line 357
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v6

    .line 358
    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 359
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_4

    .line 360
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 361
    :cond_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getOperatorFor(I)Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 362
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    .line 363
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 364
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 365
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v2, v4

    :goto_0
    add-int/lit8 v3, v7, -0x1

    if-lt v2, v3, :cond_8

    move-object v1, v0

    :goto_1
    if-lt v4, v7, :cond_6

    .line 366
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    .line 367
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_5

    .line 368
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_5
    return-object v0

    :cond_6
    sub-int v2, v3, v4

    .line 369
    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Expression;

    .line 370
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 371
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    .line 372
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v8

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v8, v2

    sub-int/2addr v8, v5

    invoke-virtual {v1, v5, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 373
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v2

    const/16 v5, 0x1b

    if-ne v2, v5, :cond_7

    .line 374
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/InfixExpression;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 375
    :cond_8
    new-instance v3, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v3, v5}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 376
    iget-boolean v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v5, :cond_9

    .line 377
    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 378
    :cond_9
    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 379
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getOperatorFor(I)Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 380
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    .line 381
    :cond_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-interface {v6, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 382
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 383
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v3, :cond_b

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 384
    :cond_b
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    .line 385
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 386
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 387
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    .line 388
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    return-object v0

    .line 389
    :cond_c
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;

    if-eqz v3, :cond_e

    .line 390
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v3, v5

    if-nez v3, :cond_e

    const/16 v3, 0xe

    if-ne v3, v1, :cond_e

    .line 391
    move-object v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;

    .line 392
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->literals:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 393
    aget-object v2, v3, v4

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    const/4 v2, 0x1

    .line 394
    aget-object v2, v3, v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    const/4 v2, 0x2

    .line 395
    :goto_2
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->counter:I

    if-lt v2, v4, :cond_d

    .line 396
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 398
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    return-object v0

    .line 399
    :cond_d
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 400
    :cond_e
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 402
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 403
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    .line 404
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 3

    .line 463
    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeLiteral;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/TypeLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 464
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 466
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 467
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/TypeLiteral;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/EqualExpression;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 3

    .line 622
    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 623
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 624
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 625
    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 626
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 627
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 628
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    .line 629
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    .line 630
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, 0xfc0

    shr-int/lit8 p1, p1, 0x6

    const/16 v1, 0x12

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 631
    :cond_1
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->NOT_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    goto :goto_0

    .line 632
    :cond_2
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    :goto_0
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 2

    .line 662
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x1fe00000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToParenthesizedExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;

    move-result-object p1

    return-object p1

    .line 664
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_1

    .line 665
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object p1

    return-object p1

    .line 666
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v0, :cond_2

    .line 667
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)Lorg/eclipse/jdt/core/dom/CastExpression;

    move-result-object p1

    return-object p1

    .line 668
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    if-eqz v0, :cond_3

    .line 669
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)Lorg/eclipse/jdt/core/dom/ArrayCreation;

    move-result-object p1

    return-object p1

    .line 670
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v0, :cond_4

    .line 671
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 672
    :cond_4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v0, :cond_5

    .line 673
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    move-result-object p1

    return-object p1

    .line 674
    :cond_5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v0, :cond_6

    .line 675
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;)Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    move-result-object p1

    return-object p1

    .line 676
    :cond_6
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;

    if-eqz v0, :cond_7

    .line 677
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;)Lorg/eclipse/jdt/core/dom/PrefixExpression;

    move-result-object p1

    return-object p1

    .line 678
    :cond_7
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/PostfixExpression;

    if-eqz v0, :cond_8

    .line 679
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/PostfixExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/PostfixExpression;)Lorg/eclipse/jdt/core/dom/PostfixExpression;

    move-result-object p1

    return-object p1

    .line 680
    :cond_8
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;

    if-eqz v0, :cond_9

    .line 681
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;)Lorg/eclipse/jdt/core/dom/Assignment;

    move-result-object p1

    return-object p1

    .line 682
    :cond_9
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-eqz v0, :cond_a

    .line 683
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Assignment;)Lorg/eclipse/jdt/core/dom/Assignment;

    move-result-object p1

    return-object p1

    .line 684
    :cond_a
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    if-eqz v0, :cond_b

    .line 685
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 686
    :cond_b
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FalseLiteral;

    if-eqz v0, :cond_c

    .line 687
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FalseLiteral;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/FalseLiteral;)Lorg/eclipse/jdt/core/dom/BooleanLiteral;

    move-result-object p1

    return-object p1

    .line 688
    :cond_c
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TrueLiteral;

    if-eqz v0, :cond_d

    .line 689
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TrueLiteral;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TrueLiteral;)Lorg/eclipse/jdt/core/dom/BooleanLiteral;

    move-result-object p1

    return-object p1

    .line 690
    :cond_d
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;

    if-eqz v0, :cond_e

    .line 691
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;)Lorg/eclipse/jdt/core/dom/NullLiteral;

    move-result-object p1

    return-object p1

    .line 692
    :cond_e
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;

    if-eqz v0, :cond_f

    .line 693
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;)Lorg/eclipse/jdt/core/dom/CharacterLiteral;

    move-result-object p1

    return-object p1

    .line 694
    :cond_f
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/DoubleLiteral;

    if-eqz v0, :cond_10

    .line 695
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/DoubleLiteral;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/DoubleLiteral;)Lorg/eclipse/jdt/core/dom/NumberLiteral;

    move-result-object p1

    return-object p1

    .line 696
    :cond_10
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FloatLiteral;

    if-eqz v0, :cond_11

    .line 697
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FloatLiteral;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/FloatLiteral;)Lorg/eclipse/jdt/core/dom/NumberLiteral;

    move-result-object p1

    return-object p1

    .line 698
    :cond_11
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;

    if-eqz v0, :cond_12

    .line 699
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;)Lorg/eclipse/jdt/core/dom/NumberLiteral;

    move-result-object p1

    return-object p1

    .line 700
    :cond_12
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    if-eqz v0, :cond_13

    .line 701
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;)Lorg/eclipse/jdt/core/dom/NumberLiteral;

    move-result-object p1

    return-object p1

    .line 702
    :cond_13
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;

    if-eqz v0, :cond_14

    .line 703
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;)Lorg/eclipse/jdt/core/dom/NumberLiteral;

    move-result-object p1

    return-object p1

    .line 704
    :cond_14
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;

    if-eqz v0, :cond_15

    .line 705
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;)Lorg/eclipse/jdt/core/dom/NumberLiteral;

    move-result-object p1

    return-object p1

    .line 706
    :cond_15
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;

    if-eqz v0, :cond_16

    .line 707
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;)Lorg/eclipse/jdt/core/dom/InfixExpression;

    move-result-object p1

    return-object p1

    .line 708
    :cond_16
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;

    if-eqz v0, :cond_17

    .line 709
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;)Lorg/eclipse/jdt/core/dom/StringLiteral;

    move-result-object p1

    return-object p1

    .line 710
    :cond_17
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    if-eqz v0, :cond_18

    .line 711
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 712
    :cond_18
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AND_AND_Expression;

    if-eqz v0, :cond_19

    .line 713
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AND_AND_Expression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/AND_AND_Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 714
    :cond_19
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;

    if-eqz v0, :cond_1a

    .line 715
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 716
    :cond_1a
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/EqualExpression;

    if-eqz v0, :cond_1b

    .line 717
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/EqualExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/EqualExpression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 718
    :cond_1b
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v0, :cond_1c

    .line 719
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 720
    :cond_1c
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;

    if-eqz v0, :cond_1d

    .line 721
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;)Lorg/eclipse/jdt/core/dom/InstanceofExpression;

    move-result-object p1

    return-object p1

    .line 722
    :cond_1d
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    if-eqz v0, :cond_1e

    .line 723
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;)Lorg/eclipse/jdt/core/dom/PrefixExpression;

    move-result-object p1

    return-object p1

    .line 724
    :cond_1e
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v0, :cond_1f

    .line 725
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;)Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    move-result-object p1

    return-object p1

    .line 726
    :cond_1f
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v0, :cond_20

    .line 727
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 728
    :cond_20
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz v0, :cond_21

    .line 729
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 730
    :cond_21
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_22

    .line 731
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1

    .line 732
    :cond_22
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v0, :cond_23

    .line 733
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 734
    :cond_23
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v0, :cond_24

    .line 735
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 736
    :cond_24
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_25

    .line 737
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 8

    .line 749
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_3

    .line 750
    new-instance v0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 751
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_0

    .line 752
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 753
    :cond_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    if-eqz v3, :cond_1

    .line 754
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    .line 755
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 756
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_1

    .line 757
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 758
    :cond_1
    new-instance v2, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 759
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 760
    iget-wide v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->nameSourcePosition:J

    ushr-long v5, v3, v1

    long-to-int v1, v5

    long-to-int v3, v3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    .line 761
    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 762
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 763
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_2

    .line 764
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 765
    :cond_2
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0

    .line 766
    :cond_3
    new-instance v0, Lorg/eclipse/jdt/core/dom/FieldAccess;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/dom/FieldAccess;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 767
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_4

    .line 768
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 769
    :cond_4
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    .line 770
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/FieldAccess;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 771
    new-instance v3, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 772
    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 773
    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->nameSourcePosition:J

    ushr-long v6, v4, v1

    long-to-int v1, v6

    long-to-int v4, v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    .line 774
    invoke-virtual {v3, v1, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 775
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/FieldAccess;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 776
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_5

    .line 777
    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 778
    :cond_5
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 10

    .line 954
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 955
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createFakeNullLiteral(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 956
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 957
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_1

    .line 958
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 959
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 960
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_2

    goto :goto_2

    .line 961
    :cond_2
    aget-object v4, v1, v3

    .line 962
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v5, :cond_4

    .line 963
    new-instance v5, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 964
    new-instance v6, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 965
    new-instance v7, Ljava/lang/String;

    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 966
    iget v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 967
    iget v8, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x1

    .line 968
    invoke-virtual {v6, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 969
    iget-boolean v9, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v9, :cond_3

    .line 970
    invoke-virtual {p0, v6, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 971
    invoke-virtual {p0, v5, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 972
    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    .line 973
    :cond_3
    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 974
    invoke-virtual {v5, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 975
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->parameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 976
    :cond_4
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v4

    .line 977
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->parameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 978
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body()Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v1

    .line 979
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_6

    .line 980
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 981
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->setBody(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_3

    .line 982
    :cond_6
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Block;)Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->setBody(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 983
    :goto_3
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 984
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 985
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->hasParentheses:Z

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->setParentheses(Z)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 10

    .line 893
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 894
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->isSuperAccess()Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    .line 895
    new-instance v1, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v5}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 896
    iget-boolean v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v5, :cond_0

    .line 897
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 898
    :cond_0
    new-instance v5, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 899
    new-instance v6, Ljava/lang/String;

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 900
    iget-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    ushr-long v8, v6, v3

    long-to-int v3, v8

    long-to-int v6, v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    .line 901
    invoke-virtual {v5, v3, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 902
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_1

    .line 903
    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 904
    :cond_1
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 905
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    if-eqz v5, :cond_3

    .line 906
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v3

    .line 907
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 908
    iget-boolean v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v5, :cond_2

    .line 909
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v3, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 910
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    .line 911
    :cond_3
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v3, :cond_6

    .line 912
    array-length v5, v3

    move v6, v4

    :goto_0
    if-lt v6, v5, :cond_4

    goto :goto_1

    .line 913
    :cond_4
    aget-object v7, v3, v6

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v7

    .line 914
    iget-boolean v8, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v8, :cond_5

    .line 915
    aget-object v8, v3, v6

    invoke-virtual {p0, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 916
    :cond_5
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->arguments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 917
    :cond_6
    :goto_1
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_15

    .line 918
    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v5, v5, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v5, v2, :cond_8

    .line 919
    array-length v2, v3

    :goto_2
    if-lt v4, v2, :cond_7

    goto/16 :goto_7

    .line 920
    :cond_7
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 921
    :cond_8
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto/16 :goto_7

    .line 922
    :cond_9
    new-instance v1, Lorg/eclipse/jdt/core/dom/MethodInvocation;

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v5}, Lorg/eclipse/jdt/core/dom/MethodInvocation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 923
    iget-boolean v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v5, :cond_a

    .line 924
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 925
    :cond_a
    new-instance v5, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 926
    new-instance v6, Ljava/lang/String;

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 927
    iget-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    ushr-long v8, v6, v3

    long-to-int v3, v8

    long-to-int v6, v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    .line 928
    invoke-virtual {v5, v3, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 929
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 930
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_b

    .line 931
    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 932
    :cond_b
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v3, :cond_e

    .line 933
    array-length v5, v3

    move v6, v4

    :goto_3
    if-lt v6, v5, :cond_c

    goto :goto_4

    .line 934
    :cond_c
    aget-object v7, v3, v6

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v7

    .line 935
    iget-boolean v8, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v8, :cond_d

    .line 936
    aget-object v8, v3, v6

    invoke-virtual {p0, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 937
    :cond_d
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->arguments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 938
    :cond_e
    :goto_4
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 939
    instance-of v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v5, :cond_10

    .line 940
    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v6, 0x1fe00000

    and-int/2addr v5, v6

    if-eqz v5, :cond_f

    .line 941
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToParenthesizedExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;

    move-result-object v5

    goto :goto_5

    .line 942
    :cond_f
    move-object v5, v3

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v5

    goto :goto_5

    .line 943
    :cond_10
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v5

    .line 944
    :goto_5
    instance-of v6, v5, Lorg/eclipse/jdt/core/dom/Name;

    if-eqz v6, :cond_11

    iget-boolean v6, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v6, :cond_11

    .line 945
    invoke-virtual {p0, v5, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 946
    :cond_11
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    if-eqz v5, :cond_12

    .line 947
    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    .line 948
    :cond_12
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_15

    .line 949
    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v5, v5, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v5, v2, :cond_14

    .line 950
    array-length v2, v3

    :goto_6
    if-lt v4, v2, :cond_13

    goto :goto_7

    .line 951
    :cond_13
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 952
    :cond_14
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 953
    :cond_15
    :goto_7
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 9

    .line 1044
    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1045
    sget-object v1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CONDITIONAL_OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 1046
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_0

    .line 1047
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1048
    :cond_0
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0xfc0

    shr-int/lit8 v2, v2, 0x6

    .line 1049
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v4, :cond_c

    .line 1050
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x1fe00000

    and-int/2addr v4, v5

    if-nez v4, :cond_c

    .line 1051
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 1053
    :cond_1
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 1054
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v6, v4, 0xfc0

    shr-int/lit8 v6, v6, 0x6

    const/4 v7, 0x0

    if-eq v6, v2, :cond_2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 1055
    :cond_2
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v4, :cond_a

    .line 1056
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v6, v4, 0xfc0

    shr-int/lit8 v6, v6, 0x6

    if-eq v6, v2, :cond_a

    and-int/2addr v4, v5

    if-nez v4, :cond_a

    .line 1057
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v4

    .line 1058
    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1059
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_4

    .line 1060
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1061
    :cond_4
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getOperatorFor(I)Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 1062
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 1063
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1064
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1065
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v1, v7

    :goto_0
    add-int/lit8 v3, v6, -0x1

    if-lt v1, v3, :cond_8

    move-object v1, v0

    :goto_1
    if-lt v7, v6, :cond_6

    .line 1066
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    .line 1067
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_5

    .line 1068
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_5
    return-object v0

    :cond_6
    sub-int v2, v3, v7

    .line 1069
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Expression;

    .line 1070
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1071
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    .line 1072
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v8

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v8, v2

    sub-int/2addr v8, v5

    invoke-virtual {v1, v5, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1073
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v2

    const/16 v5, 0x1b

    if-ne v2, v5, :cond_7

    .line 1074
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/InfixExpression;

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1075
    :cond_8
    new-instance v3, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v3, v5}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1076
    iget-boolean v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v5, :cond_9

    .line 1077
    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1078
    :cond_9
    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1079
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getOperatorFor(I)Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 1080
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_0

    .line 1081
    :cond_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1082
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 1083
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-eqz v3, :cond_b

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 1084
    :cond_b
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 1085
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1086
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1087
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    return-object v0

    .line 1088
    :cond_c
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    .line 1089
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1090
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1091
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 1092
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setInfixSourcePositions(Lorg/eclipse/jdt/core/dom/InfixExpression;I)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 8

    .line 1109
    new-instance v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1110
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_0

    .line 1111
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1112
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1113
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_0

    .line 1114
    :cond_1
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->internalSetName(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 1115
    :goto_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 1116
    array-length v4, v1

    move v5, v3

    :goto_1
    if-lt v5, v4, :cond_2

    goto :goto_2

    .line 1117
    :cond_2
    aget-object v6, v1, v5

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v6

    .line 1118
    iget-boolean v7, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v7, :cond_3

    .line 1119
    aget-object v7, v1, v5

    invoke-virtual {p0, v6, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1120
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1121
    :cond_4
    :goto_2
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_7

    .line 1122
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v4, v4, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v4, v2, :cond_6

    .line 1123
    array-length v1, v1

    :goto_3
    if-lt v3, v1, :cond_5

    goto :goto_4

    .line 1124
    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object v2

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1125
    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 1126
    :cond_7
    :goto_4
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v1, :cond_9

    .line 1127
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 1128
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1129
    new-instance v1, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1130
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveStartBlockPosition(II)I

    move-result v2

    .line 1131
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1132
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setAnonymousClassDeclaration(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)V

    .line 1133
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->buildBodyDeclarations(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)V

    .line 1134
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_8

    .line 1135
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1136
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1137
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_8
    return-object v0

    .line 1138
    :cond_9
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 1139
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1140
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_a

    .line 1141
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_a
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 1

    .line 1150
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_0

    .line 1151
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1

    .line 1152
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;

    if-eqz v0, :cond_1

    .line 1153
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 1154
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;

    if-eqz v0, :cond_2

    .line 1155
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;)Lorg/eclipse/jdt/core/dom/ArrayAccess;

    move-result-object p1

    return-object p1

    .line 1156
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v0, :cond_3

    .line 1157
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 6

    .line 1158
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1159
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createFakeNullLiteral(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 1160
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 1161
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_1

    .line 1162
    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :goto_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_0

    .line 1163
    :goto_1
    new-instance v3, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1164
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p0, v2, v4, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveIdentifierAndSetPositions(IILorg/eclipse/jdt/core/dom/Name;)V

    .line 1165
    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 1166
    iget-boolean v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v4, :cond_2

    .line 1167
    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1168
    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<init>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1169
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p0, v2, v4, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveInitAndSetPositions(IILorg/eclipse/jdt/core/dom/Name;)V

    .line 1170
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_3

    .line 1171
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    goto :goto_2

    .line 1172
    :cond_3
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v2, :cond_5

    .line 1173
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    .line 1174
    new-instance v3, Lorg/eclipse/jdt/core/dom/SimpleType;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/core/dom/SimpleType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1175
    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/core/dom/SimpleType;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 1176
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_4

    .line 1177
    invoke-virtual {p0, v3, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1178
    :cond_4
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v2, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    move-object v0, v3

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 1179
    :goto_2
    new-instance v2, Lorg/eclipse/jdt/core/dom/CreationReference;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/CreationReference;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1180
    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/core/dom/CreationReference;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    .line 1181
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/CreationReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 1182
    :cond_6
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_7

    .line 1183
    new-instance v2, Lorg/eclipse/jdt/core/dom/TypeMethodReference;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v4}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1184
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    .line 1185
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 1186
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 1187
    :cond_7
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;

    if-eqz v2, :cond_8

    .line 1188
    new-instance v2, Lorg/eclipse/jdt/core/dom/SuperMethodReference;

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1189
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 1190
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 1191
    :cond_8
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    if-eqz v2, :cond_9

    .line 1192
    new-instance v2, Lorg/eclipse/jdt/core/dom/SuperMethodReference;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v4}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1193
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 1194
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 1195
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 1196
    :cond_9
    new-instance v2, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v4}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1197
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1198
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    .line 1199
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    :goto_3
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 1200
    array-length v3, v1

    const/4 v4, 0x0

    :goto_4
    if-lt v4, v3, :cond_a

    goto :goto_5

    .line 1201
    :cond_a
    aget-object v5, v1, v4

    .line 1202
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1203
    :cond_b
    :goto_5
    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v0, :cond_c

    .line 1204
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1205
    :cond_c
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 1206
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v2
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 5

    .line 1285
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;

    if-eqz v0, :cond_0

    .line 1286
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;)Lorg/eclipse/jdt/core/dom/InfixExpression;

    move-result-object p1

    return-object p1

    .line 1287
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1288
    new-instance v2, Lorg/eclipse/jdt/core/dom/StringLiteral;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/StringLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1289
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_1

    .line 1290
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1291
    :cond_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    invoke-direct {v3, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/StringLiteral;->internalSetEscapedValue(Ljava/lang/String;)V

    .line 1292
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v2
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 5

    .line 1293
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 1294
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createFakeNullLiteral(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    .line 1295
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/SwitchExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1296
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_1

    .line 1297
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1298
    :cond_1
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1299
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1300
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz p1, :cond_5

    .line 1301
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    goto :goto_2

    .line 1302
    :cond_2
    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v4, :cond_3

    .line 1303
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->statements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndAddMultipleLocalDeclaration([Lorg/eclipse/jdt/internal/compiler/ast/Statement;ILjava/util/List;)V

    goto :goto_1

    .line 1304
    :cond_3
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1305
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->statements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 3

    .line 1319
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;->isImplicitThis()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1320
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    if-eqz v0, :cond_1

    .line 1321
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1

    .line 1322
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;

    if-eqz v0, :cond_2

    .line 1323
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;)Lorg/eclipse/jdt/core/dom/ThisExpression;

    move-result-object p1

    return-object p1

    .line 1324
    :cond_2
    new-instance v0, Lorg/eclipse/jdt/core/dom/ThisExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ThisExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1325
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1326
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_3

    .line 1327
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1328
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingThisExpressionScopeResolution(Lorg/eclipse/jdt/core/dom/ThisExpression;)V

    :cond_3
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;)Lorg/eclipse/jdt/core/dom/ForStatement;
    .locals 9

    .line 797
    new-instance v0, Lorg/eclipse/jdt/core/dom/ForStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ForStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 798
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 799
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 800
    aget-object v4, v1, v2

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v5, :cond_2

    .line 801
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    .line 802
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationExpression(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    move-result-object v4

    .line 803
    array-length v5, v1

    move v6, v3

    :goto_0
    if-lt v6, v5, :cond_1

    if-eq v5, v3, :cond_0

    .line 804
    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    sub-int/2addr v5, v3

    .line 805
    aget-object v1, v1, v5

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    sub-int/2addr v1, v6

    add-int/2addr v1, v3

    .line 806
    invoke-virtual {v4, v6, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 807
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 808
    :cond_1
    aget-object v7, v1, v6

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    .line 809
    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->fragments()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationFragment(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 810
    :cond_2
    array-length v4, v1

    move v5, v2

    :goto_1
    if-lt v5, v4, :cond_3

    goto :goto_3

    .line 811
    :cond_3
    aget-object v6, v1, v5

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToExpression(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 812
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 813
    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v6

    or-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 814
    :cond_5
    :goto_3
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_6

    .line 815
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ForStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 816
    :cond_6
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v1, :cond_8

    .line 817
    array-length v3, v1

    :goto_4
    if-lt v2, v3, :cond_7

    goto :goto_5

    .line 818
    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters()Ljava/util/List;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToExpression(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 819
    :cond_8
    :goto_5
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    if-nez p1, :cond_9

    const/4 p1, 0x0

    return-object p1

    .line 820
    :cond_9
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->setBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;)Lorg/eclipse/jdt/core/dom/IfStatement;
    .locals 3

    .line 821
    new-instance v0, Lorg/eclipse/jdt/core/dom/IfStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/IfStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 822
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 823
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/IfStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 824
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 825
    :cond_0
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/IfStatement;->setThenStatement(Lorg/eclipse/jdt/core/dom/Statement;)V

    .line 826
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz p1, :cond_1

    .line 827
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 828
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->setElseStatement(Lorg/eclipse/jdt/core/dom/Statement;)V

    :cond_1
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;)Lorg/eclipse/jdt/core/dom/InfixExpression;
    .locals 6

    .line 1015
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->computeConstant()V

    .line 1016
    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1017
    sget-object v1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->PLUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;)V

    .line 1018
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->literals:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x0

    .line 1019
    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    const/4 v2, 0x1

    .line 1020
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/InfixExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    const/4 v3, 0x2

    .line 1021
    :goto_0
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->counter:I

    if-lt v3, v4, :cond_1

    .line 1022
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 1023
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1024
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0

    .line 1025
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;)Lorg/eclipse/jdt/core/dom/InstanceofExpression;
    .locals 3

    .line 829
    new-instance v0, Lorg/eclipse/jdt/core/dom/InstanceofExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 830
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 832
    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 833
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->setLeftOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 834
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    .line 835
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->setRightOperand(Lorg/eclipse/jdt/core/dom/Type;)V

    .line 836
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    .line 837
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 838
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;)Lorg/eclipse/jdt/core/dom/LabeledStatement;
    .locals 5

    .line 870
    new-instance v0, Lorg/eclipse/jdt/core/dom/LabeledStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/LabeledStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 871
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 872
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 873
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 874
    :cond_0
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/LabeledStatement;->setBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    .line 875
    new-instance v2, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 876
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->label:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 877
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->labelEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 878
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/LabeledStatement;->setLabel(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;)Lorg/eclipse/jdt/core/dom/MarkerAnnotation;
    .locals 3

    .line 986
    new-instance v0, Lorg/eclipse/jdt/core/dom/MarkerAnnotation;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/MarkerAnnotation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 987
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeNameForAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/dom/Annotation;)V

    .line 988
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 989
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 990
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 991
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 992
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 993
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Annotation;->resolveAnnotationBinding()Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    :cond_0
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)Lorg/eclipse/jdt/core/dom/MemberValuePair;
    .locals 5

    .line 994
    new-instance v0, Lorg/eclipse/jdt/core/dom/MemberValuePair;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/MemberValuePair;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 995
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 996
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 997
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 998
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 999
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1000
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MemberValuePair;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 1001
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    .line 1002
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/MemberValuePair;->setValue(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1003
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 1004
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    .line 1005
    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1006
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v3, :cond_0

    .line 1007
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    if-ne v2, v3, :cond_0

    .line 1008
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 1009
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_1

    .line 1010
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1011
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)Lorg/eclipse/jdt/core/dom/Name;
    .locals 1

    .line 1012
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v0, :cond_0

    .line 1013
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1

    .line 1014
    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;)Lorg/eclipse/jdt/core/dom/Name;
    .locals 2

    .line 1142
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setQualifiedNameNameAndSourceRanges([[C[JLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;)Lorg/eclipse/jdt/core/dom/Name;
    .locals 0

    .line 1143
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;
    .locals 5

    .line 1443
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v0

    .line 1444
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1445
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    .line 1446
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    .line 1447
    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setQualifiedNameNameAndSourceRanges([[C[JLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object p1

    return-object p1

    .line 1448
    :cond_0
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1449
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 1450
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1451
    iput v2, v1, Lorg/eclipse/jdt/core/dom/Name;->index:I

    .line 1452
    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v0, :cond_1

    .line 1453
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    return-object v1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;)Lorg/eclipse/jdt/core/dom/NormalAnnotation;
    .locals 9

    .line 1026
    new-instance v0, Lorg/eclipse/jdt/core/dom/NormalAnnotation;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1027
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeNameForAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/dom/Annotation;)V

    .line 1028
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 1029
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    .line 1030
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v3, :cond_2

    .line 1031
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    goto :goto_1

    .line 1032
    :cond_0
    aget-object v6, v3, v5

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)Lorg/eclipse/jdt/core/dom/MemberValuePair;

    move-result-object v6

    .line 1033
    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v7

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_1

    .line 1034
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v7

    or-int/lit8 v7, v7, 0x8

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 1035
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->values()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 1036
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1037
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_3

    .line 1038
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1039
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Annotation;->resolveAnnotationBinding()Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    :cond_3
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;)Lorg/eclipse/jdt/core/dom/NullLiteral;
    .locals 2

    .line 1040
    new-instance v0, Lorg/eclipse/jdt/core/dom/NullLiteral;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/NullLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1041
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 1042
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1043
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/DoubleLiteral;)Lorg/eclipse/jdt/core/dom/NumberLiteral;
    .locals 5

    .line 580
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 581
    new-instance v2, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 582
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    invoke-direct {v3, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;->internalSetToken(Ljava/lang/String;)V

    .line 583
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_0

    .line 584
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 585
    :cond_0
    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 586
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->removeLeadingAndTrailingCommentsFromLiteral(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-object v2
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/FloatLiteral;)Lorg/eclipse/jdt/core/dom/NumberLiteral;
    .locals 5

    .line 779
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 780
    new-instance v2, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 781
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    invoke-direct {v3, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;->internalSetToken(Ljava/lang/String;)V

    .line 782
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_0

    .line 783
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 784
    :cond_0
    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 785
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->removeLeadingAndTrailingCommentsFromLiteral(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-object v2
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;)Lorg/eclipse/jdt/core/dom/NumberLiteral;
    .locals 5

    .line 839
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 840
    new-instance v2, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 841
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    invoke-direct {v3, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;->internalSetToken(Ljava/lang/String;)V

    .line 842
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_0

    .line 843
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 844
    :cond_0
    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 845
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->removeLeadingAndTrailingCommentsFromLiteral(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-object v2
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;)Lorg/eclipse/jdt/core/dom/NumberLiteral;
    .locals 5

    .line 846
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 847
    new-instance v2, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 848
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    invoke-direct {v3, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;->internalSetToken(Ljava/lang/String;)V

    .line 849
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_0

    .line 850
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 851
    :cond_0
    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 852
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->removeLeadingAndTrailingCommentsFromLiteral(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-object v2
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;)Lorg/eclipse/jdt/core/dom/NumberLiteral;
    .locals 5

    .line 879
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 880
    new-instance v2, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 881
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    invoke-direct {v3, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;->internalSetToken(Ljava/lang/String;)V

    .line 882
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_0

    .line 883
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 884
    :cond_0
    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 885
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->removeLeadingAndTrailingCommentsFromLiteral(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-object v2
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;)Lorg/eclipse/jdt/core/dom/NumberLiteral;
    .locals 5

    .line 886
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 887
    new-instance v2, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 888
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    invoke-direct {v3, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/dom/NumberLiteral;->internalSetToken(Ljava/lang/String;)V

    .line 889
    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_0

    .line 890
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 891
    :cond_0
    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 892
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->removeLeadingAndTrailingCommentsFromLiteral(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-object v2
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/PostfixExpression;)Lorg/eclipse/jdt/core/dom/PostfixExpression;
    .locals 3

    .line 1093
    new-instance v0, Lorg/eclipse/jdt/core/dom/PostfixExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/PostfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1094
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 1095
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1096
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1097
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->setOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1098
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1099
    :cond_1
    sget-object p1, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->INCREMENT:Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;)V

    goto :goto_0

    .line 1100
    :cond_2
    sget-object p1, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->DECREMENT:Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;)V

    :goto_0
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;)Lorg/eclipse/jdt/core/dom/PrefixExpression;
    .locals 3

    .line 1101
    new-instance v0, Lorg/eclipse/jdt/core/dom/PrefixExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1102
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 1103
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1104
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1105
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->setOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1106
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1107
    :cond_1
    sget-object p1, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->INCREMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;)V

    goto :goto_0

    .line 1108
    :cond_2
    sget-object p1, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->DECREMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;)V

    :goto_0
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;)Lorg/eclipse/jdt/core/dom/PrefixExpression;
    .locals 3

    .line 1454
    new-instance v0, Lorg/eclipse/jdt/core/dom/PrefixExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1455
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 1456
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1457
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1458
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->setOperand(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1459
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, 0xfc0

    shr-int/lit8 p1, p1, 0x6

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1460
    :pswitch_0
    sget-object p1, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->PLUS:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;)V

    goto :goto_0

    .line 1461
    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->MINUS:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;)V

    goto :goto_0

    .line 1462
    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->COMPLEMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;)V

    goto :goto_0

    .line 1463
    :pswitch_3
    sget-object p1, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->NOT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->setOperator(Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;)Lorg/eclipse/jdt/core/dom/ReturnStatement;
    .locals 3

    .line 1207
    new-instance v0, Lorg/eclipse/jdt/core/dom/ReturnStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ReturnStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1208
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1209
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_0

    .line 1210
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ReturnStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    :cond_0
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;)Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 3

    .line 1220
    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1221
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 1222
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 1223
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1224
    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;)Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;
    .locals 3

    .line 1211
    new-instance v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1212
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeNameForAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/dom/Annotation;)V

    .line 1213
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->setValue(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1214
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 1215
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 1216
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1217
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 1218
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1219
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Annotation;->resolveAnnotationBinding()Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    :cond_0
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;
    .locals 13

    .line 200
    new-instance v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 201
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    .line 202
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 203
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 204
    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 206
    :cond_0
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 207
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int v5, v4, v2

    add-int/2addr v5, v3

    .line 208
    invoke-virtual {v1, v2, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 209
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 210
    iget-object v9, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 211
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->extraDimensions()I

    move-result v5

    .line 212
    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v6, v6, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v12, 0x8

    if-lt v6, v12, :cond_1

    add-int/lit8 v7, v4, 0x1

    .line 213
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v10

    move-object v6, p0

    move v8, v2

    move v11, v5

    .line 214
    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setExtraAnnotatedDimensions(IILorg/eclipse/jdt/internal/compiler/ast/TypeReference;Ljava/util/List;I)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->internalSetExtraDimensions(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;I)V

    .line 216
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->isVarArgs()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    .line 217
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v7, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveEllipsisStartPosition(II)I

    move-result v2

    iput v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 218
    :cond_2
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v6, v3

    .line 220
    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v4, :cond_6

    .line 221
    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v7

    const/4 v8, 0x0

    if-lt v7, v12, :cond_3

    .line 222
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 223
    move-object v7, v2

    check-cast v7, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object v7

    .line 224
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 225
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/core/dom/Dimension;

    goto :goto_1

    :cond_3
    move-object v7, v8

    :goto_1
    add-int/lit8 v9, v5, 0x1

    .line 226
    invoke-virtual {p0, v0, v2, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeForSingleVariableDeclaration(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;Lorg/eclipse/jdt/core/dom/Type;I)V

    .line 227
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v2

    if-lt v2, v12, :cond_5

    if-eqz v7, :cond_5

    .line 228
    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/Dimension;->annotations()Ljava/util/List;

    move-result-object v2

    .line 229
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 230
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 231
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/core/dom/Annotation;

    .line 232
    invoke-virtual {v7, v8, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    .line 233
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v5, :cond_7

    .line 234
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_4

    .line 235
    :cond_6
    invoke-virtual {p0, v0, v2, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeForSingleVariableDeclaration(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;Lorg/eclipse/jdt/core/dom/Type;I)V

    .line 236
    :cond_7
    :goto_4
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    sub-int/2addr v6, v2

    add-int/2addr v6, v3

    invoke-virtual {v0, v2, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    if-eqz v4, :cond_9

    .line 237
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v2, v2, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8

    .line 238
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setVarargs(Z)V

    goto :goto_5

    .line 239
    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 240
    :cond_9
    :goto_5
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_a

    .line 241
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 242
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 243
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    :cond_a
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;)Lorg/eclipse/jdt/core/dom/Statement;
    .locals 9

    .line 633
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 634
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->isSuperAccess()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 635
    :cond_0
    new-instance v1, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 636
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_2

    .line 637
    array-length v5, v4

    move v6, v3

    :goto_0
    if-lt v6, v5, :cond_1

    goto :goto_1

    .line 638
    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object v7

    aget-object v8, v4, v6

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 639
    :cond_2
    :goto_1
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v4, :cond_6

    .line 640
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArgumentsSourceStart:I

    if-le v0, v5, :cond_3

    move v0, v5

    .line 641
    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v5, v5, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v5, v2, :cond_5

    .line 642
    array-length v2, v4

    :goto_2
    if-lt v3, v2, :cond_4

    goto :goto_3

    .line 643
    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v3

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 644
    :cond_5
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 645
    :cond_6
    :goto_3
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_e

    .line 646
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_8

    .line 647
    :cond_7
    :goto_4
    new-instance v1, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 648
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_8

    .line 649
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 650
    :cond_8
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_a

    .line 651
    array-length v5, v4

    move v6, v3

    :goto_5
    if-lt v6, v5, :cond_9

    goto :goto_6

    .line 652
    :cond_9
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object v7

    aget-object v8, v4, v6

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 653
    :cond_a
    :goto_6
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v4, :cond_e

    .line 654
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArgumentsSourceStart:I

    if-le v0, v5, :cond_b

    move v0, v5

    .line 655
    :cond_b
    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v5, v5, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v5, v2, :cond_d

    .line 656
    array-length v2, v4

    :goto_7
    if-lt v3, v2, :cond_c

    goto :goto_8

    .line 657
    :cond_c
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v3

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 658
    :cond_d
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 659
    :cond_e
    :goto_8
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 660
    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v0, :cond_f

    .line 661
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_f
    return-object v1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;)Lorg/eclipse/jdt/core/dom/Statement;
    .locals 3

    .line 786
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 787
    new-instance v0, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 788
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToSingleVariableDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->setParameter(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;)V

    .line 789
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 790
    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 791
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 792
    :cond_1
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->setBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    .line 793
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 794
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 795
    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0

    .line 796
    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createFakeEmptyStatement(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;
    .locals 3

    .line 1225
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    if-eqz v0, :cond_0

    .line 1226
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    return-object p1

    .line 1227
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v0, :cond_1

    .line 1228
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    .line 1229
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationStatement(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    move-result-object p1

    return-object p1

    .line 1230
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;

    if-eqz v0, :cond_2

    .line 1231
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;)Lorg/eclipse/jdt/core/dom/AssertStatement;

    move-result-object p1

    return-object p1

    .line 1232
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_3

    .line 1233
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Block;)Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    return-object p1

    .line 1234
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;

    if-eqz v0, :cond_4

    .line 1235
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;)Lorg/eclipse/jdt/core/dom/BreakStatement;

    move-result-object p1

    return-object p1

    .line 1236
    :cond_4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ContinueStatement;

    if-eqz v0, :cond_5

    .line 1237
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ContinueStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ContinueStatement;)Lorg/eclipse/jdt/core/dom/ContinueStatement;

    move-result-object p1

    return-object p1

    .line 1238
    :cond_5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz v0, :cond_6

    .line 1239
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)Lorg/eclipse/jdt/core/dom/SwitchCase;

    move-result-object p1

    return-object p1

    .line 1240
    :cond_6
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/DoStatement;

    if-eqz v0, :cond_7

    .line 1241
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/DoStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/DoStatement;)Lorg/eclipse/jdt/core/dom/DoStatement;

    move-result-object p1

    return-object p1

    .line 1242
    :cond_7
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    if-eqz v0, :cond_8

    .line 1243
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;)Lorg/eclipse/jdt/core/dom/EmptyStatement;

    move-result-object p1

    return-object p1

    .line 1244
    :cond_8
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v0, :cond_9

    .line 1245
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    return-object p1

    .line 1246
    :cond_9
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;

    if-eqz v0, :cond_a

    .line 1247
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;)Lorg/eclipse/jdt/core/dom/ForStatement;

    move-result-object p1

    return-object p1

    .line 1248
    :cond_a
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;

    if-eqz v0, :cond_b

    .line 1249
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;)Lorg/eclipse/jdt/core/dom/IfStatement;

    move-result-object p1

    return-object p1

    .line 1250
    :cond_b
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;

    if-eqz v0, :cond_c

    .line 1251
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;)Lorg/eclipse/jdt/core/dom/LabeledStatement;

    move-result-object p1

    return-object p1

    .line 1252
    :cond_c
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;

    if-eqz v0, :cond_d

    .line 1253
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;)Lorg/eclipse/jdt/core/dom/ReturnStatement;

    move-result-object p1

    return-object p1

    .line 1254
    :cond_d
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;

    if-eqz v0, :cond_e

    .line 1255
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)Lorg/eclipse/jdt/core/dom/SwitchStatement;

    move-result-object p1

    return-object p1

    .line 1256
    :cond_e
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;

    if-eqz v0, :cond_f

    .line 1257
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;)Lorg/eclipse/jdt/core/dom/SynchronizedStatement;

    move-result-object p1

    return-object p1

    .line 1258
    :cond_f
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;

    if-eqz v0, :cond_10

    .line 1259
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;)Lorg/eclipse/jdt/core/dom/ThrowStatement;

    move-result-object p1

    return-object p1

    .line 1260
    :cond_10
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    if-eqz v0, :cond_11

    .line 1261
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;)Lorg/eclipse/jdt/core/dom/TryStatement;

    move-result-object p1

    return-object p1

    .line 1262
    :cond_11
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_15

    .line 1263
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1264
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    if-nez v1, :cond_12

    goto :goto_1

    .line 1265
    :cond_12
    check-cast v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    .line 1266
    new-instance p1, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {p1, v1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1267
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->setDeclaration(Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;)V

    .line 1268
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 1269
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object v0

    .line 1270
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_0

    .line 1271
    :cond_13
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->internalGetTypeDeclaration()Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    move-result-object v0

    .line 1272
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :goto_0
    return-object p1

    .line 1273
    :cond_14
    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createFakeEmptyStatement(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    return-object p1

    .line 1274
    :cond_15
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;

    if-eqz v0, :cond_16

    .line 1275
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;)Lorg/eclipse/jdt/core/dom/WhileStatement;

    move-result-object p1

    return-object p1

    .line 1276
    :cond_16
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_17

    .line 1277
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1278
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    .line 1279
    new-instance v1, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1280
    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1281
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    .line 1282
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementEnd:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 1283
    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v1

    .line 1284
    :cond_17
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createFakeEmptyStatement(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;)Lorg/eclipse/jdt/core/dom/StringLiteral;
    .locals 2

    .line 738
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->computeConstant()V

    .line 739
    new-instance v0, Lorg/eclipse/jdt/core/dom/StringLiteral;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/StringLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 740
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 741
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 742
    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/StringLiteral;->setLiteralValue(Ljava/lang/String;)V

    .line 743
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)Lorg/eclipse/jdt/core/dom/SwitchCase;
    .locals 7

    .line 432
    new-instance v0, Lorg/eclipse/jdt/core/dom/SwitchCase;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SwitchCase;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 433
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_3

    .line 434
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_2

    .line 435
    array-length v3, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_1

    goto :goto_2

    :cond_1
    aget-object v5, v1, v4

    .line 437
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SwitchCase;->expressions()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SwitchCase;->expressions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 439
    :cond_3
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 440
    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->internalSetExpression(Lorg/eclipse/jdt/core/dom/SwitchCase;Lorg/eclipse/jdt/core/dom/Expression;)V

    goto :goto_2

    .line 441
    :cond_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->internalSetExpression(Lorg/eclipse/jdt/core/dom/SwitchCase;Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 442
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-lt v1, v2, :cond_5

    .line 443
    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->isExpr:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->setSwitchLabeledRule(Z)V

    .line 444
    :cond_5
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 445
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->isExpr:Z

    if-eqz p1, :cond_6

    .line 446
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveArrowPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_3

    .line 447
    :cond_6
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveColonPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :goto_3
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)Lorg/eclipse/jdt/core/dom/SwitchStatement;
    .locals 5

    .line 1306
    new-instance v0, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1307
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1308
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1309
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz p1, :cond_3

    .line 1310
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_2

    .line 1311
    :cond_0
    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v4, :cond_1

    .line 1312
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->statements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndAddMultipleLocalDeclaration([Lorg/eclipse/jdt/internal/compiler/ast/Statement;ILjava/util/List;)V

    goto :goto_1

    .line 1313
    :cond_1
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1314
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->statements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;)Lorg/eclipse/jdt/core/dom/SynchronizedStatement;
    .locals 3

    .line 1315
    new-instance v0, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1316
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1317
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Block;)Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    .line 1318
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;)Lorg/eclipse/jdt/core/dom/ThisExpression;
    .locals 3

    .line 1144
    new-instance v0, Lorg/eclipse/jdt/core/dom/ThisExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ThisExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1145
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1146
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ThisExpression;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 1147
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    .line 1148
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1149
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingThisExpressionScopeResolution(Lorg/eclipse/jdt/core/dom/ThisExpression;)V

    :cond_0
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;)Lorg/eclipse/jdt/core/dom/ThrowStatement;
    .locals 3

    .line 1329
    new-instance v0, Lorg/eclipse/jdt/core/dom/ThrowStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ThrowStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1330
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1331
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;->exception:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ThrowStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;)Lorg/eclipse/jdt/core/dom/TryStatement;
    .locals 8

    .line 1337
    new-instance v0, Lorg/eclipse/jdt/core/dom/TryStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/TryStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1338
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1339
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_8

    .line 1340
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v3, v3, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    goto/16 :goto_3

    .line 1341
    :cond_0
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v4, v4, v3

    .line 1342
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v5, :cond_1

    .line 1343
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    .line 1344
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationExpression(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    move-result-object v5

    .line 1345
    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    .line 1346
    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    .line 1347
    invoke-virtual {v5, v6, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1348
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TryStatement;->resources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1349
    :cond_1
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v5, :cond_2

    .line 1350
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TryStatement;->resources()Ljava/util/List;

    move-result-object v5

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1351
    :cond_2
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v5, :cond_3

    .line 1352
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TryStatement;->resources()Ljava/util/List;

    move-result-object v5

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1353
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_2
    if-lt v3, v1, :cond_5

    goto :goto_3

    .line 1354
    :cond_5
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v4, v4, v3

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-nez v5, :cond_6

    .line 1355
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_3

    .line 1356
    :cond_6
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    .line 1357
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationExpression(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    move-result-object v5

    .line 1358
    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    .line 1359
    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    .line 1360
    invoke-virtual {v5, v6, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1361
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TryStatement;->resources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1362
    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 1363
    :cond_8
    :goto_3
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Block;)Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TryStatement;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    .line 1364
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v1, :cond_a

    .line 1365
    array-length v3, v1

    .line 1366
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    .line 1367
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :goto_4
    if-lt v2, v3, :cond_9

    goto :goto_5

    .line 1368
    :cond_9
    new-instance v6, Lorg/eclipse/jdt/core/dom/CatchClause;

    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/core/dom/CatchClause;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1369
    aget-object v7, v1, v2

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v5, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveStartingCatchPosition(II)I

    move-result v5

    .line 1370
    aget-object v7, v4, v2

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v5, v7}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1371
    aget-object v5, v4, v2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Block;)Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/core/dom/CatchClause;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    .line 1372
    aget-object v5, v1, v2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/core/dom/CatchClause;->setException(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;)V

    .line 1373
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TryStatement;->catchClauses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    aget-object v5, v4, v2

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1375
    :cond_a
    :goto_5
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz p1, :cond_b

    .line 1376
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Block;)Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->setFinally(Lorg/eclipse/jdt/core/dom/Block;)V

    :cond_b
    return-object v0
.end method

.method public convert([Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/dom/TypeDeclaration;
    .locals 9

    .line 313
    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 314
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 315
    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->setInterface(Z)V

    .line 317
    array-length v3, p1

    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_0

    .line 318
    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0

    .line 319
    :cond_0
    aget-object v5, p1, v4

    .line 320
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz v6, :cond_1

    .line 321
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    .line 322
    new-instance v6, Lorg/eclipse/jdt/core/dom/Initializer;

    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/core/dom/Initializer;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 323
    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Block;)Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/core/dom/Initializer;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    .line 324
    invoke-virtual {p0, v6, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/Initializer;Lorg/eclipse/jdt/internal/compiler/ast/Initializer;)V

    .line 325
    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 326
    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V

    .line 327
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 328
    :cond_1
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v6, :cond_3

    .line 329
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-lez v4, :cond_2

    add-int/lit8 v6, v4, -0x1

    .line 330
    aget-object v6, p1, v6

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v7, :cond_2

    .line 331
    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ne v6, v7, :cond_2

    .line 332
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    .line 333
    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationFragment(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 334
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToFieldDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    :cond_3
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v6, :cond_4

    .line 336
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    .line 337
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v6

    if-nez v6, :cond_6

    .line 338
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v2, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(ZLorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 339
    :cond_4
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v6, :cond_6

    .line 340
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 341
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v5

    if-nez v5, :cond_5

    .line 342
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_1

    .line 343
    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)Lorg/eclipse/jdt/core/dom/TypeParameter;
    .locals 8

    .line 1415
    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeParameter;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/TypeParameter;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1416
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1417
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 1418
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 1419
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 1420
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1421
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 1422
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1423
    aget-object v5, v3, v4

    if-eqz v5, :cond_0

    .line 1424
    iget v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 1425
    :cond_0
    invoke-direct {p0, v0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->annotateTypeParameter(Lorg/eclipse/jdt/core/dom/TypeParameter;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    .line 1426
    :cond_1
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 1427
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-eqz v3, :cond_2

    .line 1428
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    .line 1429
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeParameter;->typeBounds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    .line 1431
    :cond_2
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_4

    .line 1432
    array-length v6, v3

    :goto_0
    if-lt v4, v6, :cond_3

    goto :goto_1

    .line 1433
    :cond_3
    aget-object v5, v3, v4

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    .line 1434
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeParameter;->typeBounds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1435
    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v7

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v5

    add-int/2addr v7, v5

    add-int/lit8 v5, v7, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1436
    :cond_4
    :goto_1
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge v2, v3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    .line 1437
    :goto_2
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveClosingAngleBracketPosition(I)I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 1438
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1439
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_6

    .line 1440
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1441
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 1442
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeParameter;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_6
    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;)Lorg/eclipse/jdt/core/dom/WhileStatement;
    .locals 3

    .line 1464
    new-instance v0, Lorg/eclipse/jdt/core/dom/WhileStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/WhileStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 1465
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 1466
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 1467
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1468
    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->setBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    return-object v0
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/ASTConverter$IGetJavaDoc;Lorg/eclipse/jdt/core/dom/ASTConverter$ISetJavaDoc;)V
    .locals 0

    .line 853
    invoke-interface {p2}, Lorg/eclipse/jdt/core/dom/ASTConverter$IGetJavaDoc;->getJavaDoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object p2

    if-nez p2, :cond_0

    .line 854
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;)Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 855
    invoke-interface {p3, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter$ISetJavaDoc;->setJavadoc(Lorg/eclipse/jdt/core/dom/Javadoc;)V

    :cond_0
    return-void
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V
    .locals 2

    .line 866
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/eclipse/jdt/core/dom/c;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/core/dom/c;-><init>(Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V

    new-instance v1, Lorg/eclipse/jdt/core/dom/d;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/core/dom/d;-><init>(Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/ASTConverter$IGetJavaDoc;Lorg/eclipse/jdt/core/dom/ASTConverter$ISetJavaDoc;)V

    return-void
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V
    .locals 2

    .line 867
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/eclipse/jdt/core/dom/a;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/core/dom/a;-><init>(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V

    new-instance v1, Lorg/eclipse/jdt/core/dom/b;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/core/dom/b;-><init>(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/ASTConverter$IGetJavaDoc;Lorg/eclipse/jdt/core/dom/ASTConverter$ISetJavaDoc;)V

    return-void
.end method

.method public convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/PackageDeclaration;)V
    .locals 2

    .line 868
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 869
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/eclipse/jdt/core/dom/e;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/core/dom/e;-><init>(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)V

    new-instance v1, Lorg/eclipse/jdt/core/dom/f;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/core/dom/f;-><init>(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/ASTConverter$IGetJavaDoc;Lorg/eclipse/jdt/core/dom/ASTConverter$ISetJavaDoc;)V

    return-void
.end method

.method public convertImport(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)Lorg/eclipse/jdt/core/dom/ImportDeclaration;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getImportName(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationEnd:I

    sub-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->setOnDemand(Z)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->modifiers:I

    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v3, v3, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->setStatic(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_4
    return-object v0
.end method

.method public convertPackage(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/core/dom/PackageDeclaration;
    .locals 10

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    new-instance v1, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v3, v2

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v6, :cond_0

    invoke-virtual {p0, v2, v4, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setQualifiedNameNameAndSourceRanges([[C[JLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    goto :goto_0

    :cond_0
    new-instance v7, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v8, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v7, v8}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v8, Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    aget-wide v8, v4, v5

    const/16 v2, 0x20

    ushr-long/2addr v8, v2

    long-to-int v2, v8

    sub-int/2addr v3, v6

    aget-wide v3, v4, v3

    long-to-int v3, v3

    sub-int/2addr v3, v2

    add-int/2addr v3, v6

    invoke-virtual {v7, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iput v6, v7, Lorg/eclipse/jdt/core/dom/Name;->index:I

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v7, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    :goto_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationEnd:I

    sub-int/2addr v3, v2

    add-int/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v3, v3, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    array-length v3, v2

    :goto_1
    if-lt v5, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->annotations()Ljava/util/List;

    move-result-object v4

    aget-object v6, v2, v5

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    and-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_4
    :goto_2
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_5
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/PackageDeclaration;)V

    return-object v1
.end method

.method public convertToExpression(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public convertToFieldDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/FieldDeclaration;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationFragment(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    :cond_0
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeForField(Lorg/eclipse/jdt/core/dom/FieldDeclaration;Lorg/eclipse/jdt/core/dom/Type;I)V

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V

    return-object v1
.end method

.method public convertToModuleDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)Lorg/eclipse/jdt/core/dom/ModuleDeclaration;
    .locals 13

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkCanceled()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    const-wide/32 v2, 0x350000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->newModuleDeclaration()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setAnnotations(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->isOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->setOpen(Z)V

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    const/16 v2, 0x2e

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->sourcePositions:[J

    invoke-direct {p0, p1, v1, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getName(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[[C[J)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->moduleStatements()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lorg/eclipse/jdt/core/dom/ASTConverter$1;

    invoke-direct {v5, p0}, Lorg/eclipse/jdt/core/dom/ASTConverter$1;-><init>(Lorg/eclipse/jdt/core/dom/ASTConverter;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    if-lt v6, v7, :cond_8

    move v6, v5

    :goto_1
    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    if-lt v6, v7, :cond_7

    move v6, v5

    :goto_2
    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    if-lt v6, v7, :cond_5

    move v2, v5

    :goto_3
    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    if-lt v2, v6, :cond_4

    move v6, v5

    :goto_4
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    if-lt v6, v2, :cond_2

    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IModuleBinding;

    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->declarationSourceEnd:I

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getKnownEnd(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;II)I

    move-result v1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->declarationSourceStart:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0

    :cond_2
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v7, v2, v6

    new-instance v8, Lorg/eclipse/jdt/core/dom/ProvidesDirective;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v8, v2}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v10, v9

    move v2, v5

    :goto_5
    if-lt v2, v10, :cond_3

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceStart:I

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v2, v7}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v4, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    aget-object v11, v9, v2

    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->implementations()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0, v11}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    aget-object v6, v6, v2

    new-instance v7, Lorg/eclipse/jdt/core/dom/UsesDirective;

    iget-object v8, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v7, v8}, Lorg/eclipse/jdt/core/dom/UsesDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/core/dom/UsesDirective;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceStart:I

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    sub-int/2addr v6, v8

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v8, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_5
    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    aget-object v7, v7, v6

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    new-instance v9, Lorg/eclipse/jdt/core/dom/RequiresDirective;

    iget-object v10, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v9, v10}, Lorg/eclipse/jdt/core/dom/RequiresDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    invoke-static {v2, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v10

    iget-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->sourcePositions:[J

    invoke-direct {p0, v8, v10, v11}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getName(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[[C[J)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    iget-boolean v11, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v11, :cond_6

    invoke-virtual {p0, v10, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_6
    invoke-direct {p0, v7, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModuleModifiers(Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;Lorg/eclipse/jdt/core/dom/RequiresDirective;)V

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceStart:I

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationEnd:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v9, v8, v7}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v4, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_7
    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    aget-object v7, v7, v6

    new-instance v8, Lorg/eclipse/jdt/core/dom/OpensDirective;

    iget-object v9, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v8, v9}, Lorg/eclipse/jdt/core/dom/OpensDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-direct {p0, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getPackageVisibilityStatement(Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;Lorg/eclipse/jdt/core/dom/ModulePackageAccess;)Lorg/eclipse/jdt/core/dom/ModulePackageAccess;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_8
    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    aget-object v7, v7, v6

    new-instance v8, Lorg/eclipse/jdt/core/dom/ExportsDirective;

    iget-object v9, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v8, v9}, Lorg/eclipse/jdt/core/dom/ExportsDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-direct {p0, v7, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getPackageVisibilityStatement(Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;Lorg/eclipse/jdt/core/dom/ModulePackageAccess;)Lorg/eclipse/jdt/core/dom/ModulePackageAccess;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public convertToParenthesizedExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->adjustSourcePositionsForParent(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->trimWhiteSpacesAndComments(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x1fe00000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x15

    const v3, -0x1fe00001

    and-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v0
.end method

.method public convertToSingleVariableDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;
    .locals 11

    new-instance v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->extraDimensions()I

    move-result v2

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v4, v4, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    add-int/lit8 v6, v3, 0x1

    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v9

    move-object v5, p0

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setExtraAnnotatedDimensions(IILorg/eclipse/jdt/internal/compiler/ast/TypeReference;Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->internalSetExtraDimensions(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;I)V

    :goto_0
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_1

    :cond_1
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v0, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeForSingleVariableDeclaration(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;Lorg/eclipse/jdt/core/dom/Type;I)V

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    :cond_2
    return-object v0
.end method

.method public convertToVariableDeclarationExpression(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationFragment(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->fragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeForVariableDeclarationExpression(Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;Lorg/eclipse/jdt/core/dom/Type;I)V

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiersSourceStart:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    :cond_1
    return-object v1
.end method

.method public convertToVariableDeclarationFragment(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;
    .locals 9

    .line 1
    new-instance v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 2
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 3
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 4
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 5
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 6
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 7
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 8
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->extraDimensions()I

    move-result v8

    .line 9
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v3, v3, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 10
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v4, v3, 0x1

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 11
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    .line 12
    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setExtraAnnotatedDimensions(IILorg/eclipse/jdt/internal/compiler/ast/TypeReference;Ljava/util/List;I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0, v8}, Lorg/eclipse/jdt/core/dom/ASTConverter;->internalSetExtraDimensions(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;I)V

    .line 14
    :goto_0
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setInitializer(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 17
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 18
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    invoke-virtual {p0, v2, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveEndOfPotentialExtendedDimensions(III)I

    move-result v3

    const/high16 v2, -0x80000000

    if-ne v3, v2, :cond_2

    .line 19
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_2
    if-gez v3, :cond_3

    neg-int v3, v3

    .line 20
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    .line 21
    :cond_3
    :goto_1
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 22
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 24
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 25
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    :cond_4
    return-object v0
.end method

.method public convertToVariableDeclarationFragment(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;
    .locals 10

    .line 26
    new-instance v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 27
    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 28
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 29
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 30
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 31
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 32
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 33
    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 34
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->extraDimensions()I

    move-result v9

    .line 35
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v4, v4, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    .line 36
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    .line 37
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v8

    move-object v4, p0

    .line 38
    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setExtraAnnotatedDimensions(IILorg/eclipse/jdt/internal/compiler/ast/TypeReference;Ljava/util/List;I)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v0, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->internalSetExtraDimensions(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;I)V

    :goto_0
    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setInitializer(Lorg/eclipse/jdt/core/dom/Expression;)V

    .line 42
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 43
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    invoke-virtual {p0, v3, v4, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveEndOfPotentialExtendedDimensions(III)I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    .line 44
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_1

    :cond_2
    if-gez v3, :cond_3

    neg-int v2, v3

    .line 45
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 46
    :goto_1
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 47
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_4

    .line 48
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 49
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 50
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    :cond_4
    return-object v0
.end method

.method public convertToVariableDeclarationStatement(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToVariableDeclarationFragment(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setTypeForVariableDeclarationStatement(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;Lorg/eclipse/jdt/core/dom/Type;I)V

    iget-boolean v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Type;->isVar()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v2, Lorg/eclipse/jdt/core/dom/SimpleType;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/core/dom/SimpleName;->setVar(Z)V

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiersSourceStart:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    :cond_1
    return-object v1
.end method

.method public convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_4

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    new-instance v1, Lorg/eclipse/jdt/core/dom/WildcardType;

    iget-object v2, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/WildcardType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_1

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->kind:I

    if-ne v3, v11, :cond_0

    goto :goto_0

    :cond_0
    move v11, v10

    :goto_0
    invoke-virtual {v1, v2, v11}, Lorg/eclipse/jdt/core/dom/WildcardType;->setBound(Lorg/eclipse/jdt/core/dom/Type;Z)V

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_1

    :cond_1
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v11

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :goto_1
    iget-boolean v0, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v0, :cond_2

    invoke-virtual {v8, v1, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_3

    aget-object v0, v0, v10

    if-eqz v0, :cond_3

    invoke-direct {v8, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->annotateType(Lorg/eclipse/jdt/core/dom/AnnotatableType;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)I

    :cond_3
    return-object v1

    :cond_4
    iget v12, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v13

    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    const/4 v7, 0x2

    if-eqz v0, :cond_1b

    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_5

    aget-object v15, v0, v10

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    const/4 v0, -0x1

    if-eqz v15, :cond_6

    array-length v1, v15

    sub-int/2addr v1, v11

    aget-object v1, v15, v1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    add-int/2addr v1, v11

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    move-object v2, v9

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->getTypeName()[[C

    move-result-object v2

    aget-object v2, v2, v10

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v4, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->isPrimitiveType([C)Z

    move-result v4

    if-eqz v4, :cond_b

    if-ge v12, v1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v12

    :goto_4
    add-int v4, v12, v3

    invoke-virtual {v8, v1, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveEndOfElementTypeNamePosition(II)[I

    move-result-object v1

    aget v1, v1, v11

    if-ne v1, v0, :cond_8

    add-int/lit8 v1, v4, -0x1

    :cond_8
    new-instance v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    iget-object v4, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/core/dom/PrimitiveType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getPrimitiveTypeCode([C)Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->setPrimitiveTypeCode(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)V

    sub-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-virtual {v0, v12, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_9

    aget-object v1, v1, v10

    if-eqz v1, :cond_9

    invoke-direct {v8, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->annotateType(Lorg/eclipse/jdt/core/dom/AnnotatableType;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)I

    :cond_9
    :goto_5
    move-object v1, v0

    :cond_a
    :goto_6
    move v2, v12

    goto/16 :goto_d

    :cond_b
    instance-of v4, v9, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-eqz v4, :cond_14

    move-object v4, v9

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    new-instance v5, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v6, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    if-ge v12, v1, :cond_c

    goto :goto_7

    :cond_c
    move v1, v12

    :goto_7
    add-int v2, v12, v3

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveEndOfElementTypeNamePosition(II)[I

    move-result-object v1

    aget v6, v1, v11

    if-ne v6, v0, :cond_d

    add-int/lit8 v6, v2, -0x1

    :cond_d
    aget v1, v1, v10

    if-eq v1, v0, :cond_e

    sub-int v0, v6, v1

    add-int/2addr v0, v11

    invoke-virtual {v5, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_8

    :cond_e
    sub-int v0, v6, v12

    add-int/2addr v0, v11

    invoke-virtual {v5, v12, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :goto_8
    iget-object v0, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v0, v7, :cond_13

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleType;

    iget-object v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/core/dom/SimpleType;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_f

    aget-object v1, v1, v10

    if-eqz v1, :cond_f

    invoke-direct {v8, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->annotateType(Lorg/eclipse/jdt/core/dom/AnnotatableType;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)I

    :cond_f
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    if-lez v1, :cond_10

    if-ge v1, v12, :cond_10

    move v12, v1

    :cond_10
    new-instance v1, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    iget-object v2, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/ParameterizedType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_12

    array-length v4, v2

    move v15, v10

    :goto_9
    if-lt v15, v4, :cond_11

    add-int/2addr v6, v11

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveClosingAngleBracketPosition(I)I

    move-result v2

    sub-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-virtual {v1, v12, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_a

    :cond_11
    aget-object v6, v2, v15

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v14

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v6

    add-int/2addr v14, v6

    add-int/lit8 v6, v14, -0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_12
    sub-int/2addr v6, v12

    add-int/2addr v6, v11

    invoke-virtual {v1, v12, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :goto_a
    iget-boolean v2, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_a

    invoke-virtual {v8, v5, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v8, v0, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_6

    :cond_13
    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleType;

    iget-object v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/core/dom/SimpleType;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/2addr v1, v11

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    sub-int/2addr v6, v12

    add-int/2addr v6, v11

    invoke-virtual {v0, v12, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-boolean v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_9

    invoke-virtual {v8, v5, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_5

    :cond_14
    new-instance v4, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v5, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    if-ge v12, v1, :cond_15

    goto :goto_b

    :cond_15
    move v1, v12

    :goto_b
    add-int v2, v12, v3

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveEndOfElementTypeNamePosition(II)[I

    move-result-object v1

    aget v5, v1, v11

    if-ne v5, v0, :cond_16

    add-int/lit8 v5, v2, -0x1

    :cond_16
    aget v1, v1, v10

    if-eq v1, v0, :cond_17

    sub-int v0, v5, v1

    add-int/2addr v0, v11

    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_c

    :cond_17
    sub-int v0, v5, v12

    add-int/2addr v0, v11

    invoke-virtual {v4, v12, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :goto_c
    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleType;

    iget-object v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/core/dom/SimpleType;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    sub-int/2addr v5, v12

    add-int/2addr v5, v11

    invoke-virtual {v0, v12, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_18

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Type;->isVar()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v4, v11}, Lorg/eclipse/jdt/core/dom/SimpleName;->setVar(Z)V

    :cond_18
    iget-boolean v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_19

    invoke-virtual {v8, v4, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_19
    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_9

    aget-object v1, v1, v10

    if-eqz v1, :cond_9

    invoke-direct {v8, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->annotateType(Lorg/eclipse/jdt/core/dom/AnnotatableType;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)I

    goto/16 :goto_5

    :goto_d
    if-eqz v13, :cond_1a

    invoke-virtual {v9, v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v5

    move-object/from16 v0, p0

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToArray(Lorg/eclipse/jdt/core/dom/Type;III[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object v1

    iget-boolean v0, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v0, :cond_1a

    invoke-virtual {v8, v1, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->completeRecord(Lorg/eclipse/jdt/core/dom/ArrayType;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1a
    move v6, v7

    move v7, v10

    goto/16 :goto_23

    :cond_1b
    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v0, :cond_2c

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v4, v14

    add-int/lit8 v1, v4, -0x1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    iget-object v0, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v16, 0x20

    if-eq v0, v7, :cond_2b

    move v0, v10

    :goto_e
    if-lt v0, v4, :cond_1c

    move/from16 v17, v1

    :goto_f
    move/from16 v18, v10

    goto :goto_10

    :cond_1c
    if-eqz v6, :cond_1d

    aget-object v2, v6, v0

    if-eqz v2, :cond_1d

    move/from16 v17, v0

    move/from16 v18, v11

    goto :goto_10

    :cond_1d
    if-eqz v5, :cond_2a

    aget-object v2, v5, v0

    if-eqz v2, :cond_2a

    move/from16 v17, v0

    goto :goto_f

    :goto_10
    aget-wide v0, v3, v10

    ushr-long v0, v0, v16

    long-to-int v2, v0

    aget-wide v0, v3, v17

    long-to-int v1, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move v15, v2

    move-object v2, v3

    move-object v10, v3

    move-object v3, v5

    move/from16 v20, v4

    move-object v4, v14

    move-object/from16 v21, v5

    move/from16 v5, v20

    move-object/from16 v22, v6

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createBaseType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[[CIIZ)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    if-eqz v22, :cond_22

    aget-object v1, v22, v17

    if-eqz v1, :cond_22

    array-length v2, v1

    new-instance v3, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    iget-object v4, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/core/dom/ParameterizedType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput v11, v3, Lorg/eclipse/jdt/core/dom/ParameterizedType;->index:I

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    iget-boolean v4, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v4, :cond_1e

    invoke-virtual {v8, v3, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1e
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_11
    if-lt v4, v2, :cond_21

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v11

    goto :goto_12

    :cond_1f
    move/from16 v1, v19

    :goto_12
    add-int/2addr v1, v11

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveClosingAngleBracketPosition(I)I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    if-gt v15, v2, :cond_20

    move v2, v15

    :cond_20
    sub-int/2addr v1, v2

    add-int/2addr v1, v11

    invoke-virtual {v3, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    move-object v0, v3

    goto :goto_13

    :cond_21
    aget-object v5, v1, v4

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_22
    :goto_13
    add-int/lit8 v17, v17, 0x1

    move v3, v11

    move/from16 v1, v17

    move/from16 v2, v20

    :goto_14
    if-lt v1, v2, :cond_23

    move-object v1, v0

    move v3, v11

    move v2, v12

    :goto_15
    const/4 v6, 0x2

    :goto_16
    const/4 v7, 0x0

    goto/16 :goto_22

    :cond_23
    new-instance v4, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v5, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v5, Ljava/lang/String;

    aget-object v6, v14, v1

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;->setIdentifier(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    iput v5, v4, Lorg/eclipse/jdt/core/dom/Name;->index:I

    aget-wide v6, v10, v1

    move/from16 v17, v12

    ushr-long v11, v6, v16

    long-to-int v11, v11

    long-to-int v6, v6

    sub-int/2addr v6, v11

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v4, v11, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    new-instance v6, Lorg/eclipse/jdt/core/dom/QualifiedType;

    iget-object v7, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/core/dom/QualifiedType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/core/dom/QualifiedType;->setQualifier(Lorg/eclipse/jdt/core/dom/Type;)V

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/core/dom/QualifiedType;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v7

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v11

    add-int/2addr v7, v11

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    sub-int v12, v7, v0

    add-int/2addr v12, v11

    invoke-virtual {v6, v0, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    if-eqz v21, :cond_24

    aget-object v12, v21, v1

    if-eqz v12, :cond_24

    invoke-direct {v8, v6, v12}, Lorg/eclipse/jdt/core/dom/ASTConverter;->annotateType(Lorg/eclipse/jdt/core/dom/AnnotatableType;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)I

    move-result v12

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v15

    if-ge v15, v12, :cond_24

    if-gt v12, v7, :cond_24

    sub-int v15, v7, v12

    add-int/2addr v15, v11

    move v11, v15

    invoke-virtual {v4, v12, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-direct {v8, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->trimWhiteSpacesAndComments(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_24
    iget-boolean v11, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v11, :cond_25

    invoke-virtual {v8, v4, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v8, v6, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_25
    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-eqz v22, :cond_29

    aget-object v1, v22, v1

    if-eqz v1, :cond_29

    array-length v4, v1

    iput v3, v6, Lorg/eclipse/jdt/core/dom/QualifiedType;->index:I

    new-instance v11, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    iget-object v12, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/core/dom/ParameterizedType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput v3, v11, Lorg/eclipse/jdt/core/dom/ParameterizedType;->index:I

    invoke-virtual {v11, v6}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    iget-boolean v6, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v6, :cond_26

    invoke-virtual {v8, v11, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_26
    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_17
    if-lt v6, v4, :cond_28

    if-eqz v12, :cond_27

    invoke-virtual {v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x1

    add-int/lit8 v7, v1, -0x1

    goto :goto_18

    :cond_27
    const/4 v4, 0x1

    :goto_18
    add-int/2addr v7, v4

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveClosingAngleBracketPosition(I)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    invoke-virtual {v11, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    move-object v0, v11

    goto :goto_19

    :cond_28
    aget-object v12, v1, v6

    invoke-virtual {v8, v12}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v12

    invoke-virtual {v11}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_29
    iput v3, v6, Lorg/eclipse/jdt/core/dom/QualifiedType;->index:I

    move-object v0, v6

    :goto_19
    move v1, v5

    move/from16 v12, v17

    const/4 v11, 0x1

    goto/16 :goto_14

    :cond_2a
    move-object v10, v3

    move v2, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v17, v12

    add-int/lit8 v0, v0, 0x1

    move v4, v2

    move-object v3, v10

    move/from16 v12, v17

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_e

    :cond_2b
    move-object v10, v3

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->getTypeName()[[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    aget-wide v3, v10, v2

    ushr-long v2, v3, v16

    long-to-int v2, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-wide v4, v10, v1

    long-to-int v1, v4

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-virtual {v8, v0, v10, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setQualifiedNameNameAndSourceRanges([[C[JLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object v0

    new-instance v4, Lorg/eclipse/jdt/core/dom/SimpleType;

    iget-object v5, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/core/dom/SimpleType;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {v4, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    or-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    move-object v1, v4

    :goto_1a
    const/4 v3, 0x1

    goto/16 :goto_15

    :cond_2c
    move/from16 v17, v12

    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v0, :cond_31

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    iget-object v11, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v14, v12

    if-eqz v11, :cond_2f

    const/4 v0, 0x0

    :goto_1b
    if-lt v0, v14, :cond_2d

    goto :goto_1c

    :cond_2d
    aget-object v1, v11, v0

    if-eqz v1, :cond_2e

    move/from16 v16, v0

    goto :goto_1d

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    :goto_1c
    move/from16 v16, v14

    :goto_1d
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move v5, v14

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createBaseType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[[CIIZ)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    const/4 v1, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object v6, v0

    move/from16 v7, v16

    :goto_1e
    if-lt v7, v14, :cond_30

    move-object v1, v6

    move/from16 v2, v17

    goto :goto_1a

    :cond_30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createQualifiedType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[[CILorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/QualifiedType;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_31
    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    if-eqz v0, :cond_34

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v6, 0x2

    if-eq v1, v6, :cond_33

    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    new-instance v1, Lorg/eclipse/jdt/core/dom/UnionType;

    iget-object v2, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/UnionType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1f
    if-lt v3, v2, :cond_32

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/UnionType;->types()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :goto_20
    move/from16 v2, v17

    const/4 v3, 0x1

    goto/16 :goto_16

    :cond_32
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/UnionType;->types()Ljava/util/List;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_33
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    move-object v1, v0

    goto :goto_20

    :cond_34
    const/4 v6, 0x2

    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;

    if-eqz v0, :cond_37

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v1, v6, :cond_36

    const/4 v2, 0x3

    if-eq v1, v2, :cond_36

    const/4 v2, 0x4

    if-eq v1, v2, :cond_36

    new-instance v1, Lorg/eclipse/jdt/core/dom/IntersectionType;

    iget-object v2, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/IntersectionType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-lt v3, v2, :cond_35

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/IntersectionType;->types()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_20

    :cond_35
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/IntersectionType;->types()Ljava/util/List;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_36
    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    move-object v1, v0

    move/from16 v2, v17

    goto :goto_22

    :cond_37
    const/4 v3, 0x1

    const/4 v7, 0x0

    move/from16 v2, v17

    const/4 v1, 0x0

    :goto_22
    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v2

    add-int/lit8 v4, v0, 0x1

    if-eqz v13, :cond_38

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v5

    move-object/from16 v0, p0

    move v3, v4

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToArray(Lorg/eclipse/jdt/core/dom/Type;III[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object v1

    iget-boolean v0, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v0, :cond_38

    invoke-virtual {v8, v1, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->completeRecord(Lorg/eclipse/jdt/core/dom/ArrayType;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_38
    :goto_23
    iget-boolean v0, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v0, :cond_39

    invoke-virtual {v8, v1, v9}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_39
    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-eqz v0, :cond_3a

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->NO_TYPE_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v0, v2, :cond_3e

    goto :goto_25

    :cond_3a
    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v0, :cond_3e

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v2, v2

    move v10, v7

    :goto_24
    if-lt v10, v2, :cond_3b

    goto :goto_26

    :cond_3b
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v10

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->NO_TYPE_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne v3, v4, :cond_3d

    :goto_25
    iget-object v0, v8, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v0, v6, :cond_3c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3c

    goto :goto_26

    :cond_3c
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    const/4 v4, 0x1

    or-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    goto :goto_26

    :cond_3d
    const/4 v3, 0x3

    const/4 v4, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    :cond_3e
    :goto_26
    return-object v1
.end method

.method public createComment([I)Lorg/eclipse/jdt/core/dom/Comment;
    .locals 3

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v2, p1, v1

    if-lez v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->docParser:Lorg/eclipse/jdt/core/dom/DocCommentParser;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->parse([I)Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_0
    neg-int p1, v2

    if-nez v0, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->docParser:Lorg/eclipse/jdt/core/dom/DocCommentParser;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    aget-char v1, v2, v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    new-instance v1, Lorg/eclipse/jdt/core/dom/LineComment;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/LineComment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/core/dom/BlockComment;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/BlockComment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    new-instance v1, Lorg/eclipse/jdt/core/dom/BlockComment;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/BlockComment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    goto :goto_0

    :cond_3
    neg-int v0, v0

    new-instance v1, Lorg/eclipse/jdt/core/dom/LineComment;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/LineComment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    :goto_0
    sub-int/2addr p1, v0

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    move-object p1, v1

    :cond_4
    return-object p1
.end method

.method public createFakeEmptyStatement(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/EmptyStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public createFakeNullLiteral(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->referenceContext:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/NullLiteral;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/NullLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-object v0
.end method

.method public getImportName(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)Lorg/eclipse/jdt/core/dom/Name;
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->getName(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[[C[J)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1
.end method

.method public getOperatorFor(I)Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;
    .locals 1

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->RIGHT_SHIFT_UNSIGNED:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->RIGHT_SHIFT_SIGNED:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_3
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->REMAINDER:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_4
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->TIMES:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_5
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->PLUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_6
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->MINUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_7
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LEFT_SHIFT:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_8
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->DIVIDE:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_9
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->XOR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_a
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->GREATER_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_b
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->GREATER:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_c
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LESS_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_d
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LESS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_e
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_f
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_10
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CONDITIONAL_OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :pswitch_11
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CONDITIONAL_AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->NOT_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPrimitiveTypeCode([C)Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget-char v1, v0, v1

    const/16 v2, 0x66

    const/16 v3, 0x61

    const/16 v4, 0x74

    const/4 v5, 0x5

    const/16 v6, 0x6c

    const/16 v7, 0x6f

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x69

    const/16 v12, 0x6e

    if-eq v1, v2, :cond_4

    if-eq v1, v6, :cond_3

    const/16 v13, 0x73

    const/16 v14, 0x72

    const/16 v15, 0x68

    if-eq v1, v13, :cond_2

    const/16 v13, 0x76

    if-eq v1, v13, :cond_1

    const/4 v2, 0x6

    const/16 v13, 0x65

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    array-length v1, v0

    if-ne v1, v2, :cond_6

    aget-char v1, v0, v11

    if-ne v1, v7, :cond_6

    aget-char v1, v0, v10

    const/16 v2, 0x75

    if-ne v1, v2, :cond_6

    aget-char v1, v0, v9

    const/16 v2, 0x62

    if-ne v1, v2, :cond_6

    aget-char v1, v0, v8

    if-ne v1, v6, :cond_6

    aget-char v0, v0, v5

    if-ne v0, v13, :cond_6

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->DOUBLE:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object v0

    :pswitch_1
    array-length v1, v0

    if-ne v1, v8, :cond_6

    aget-char v1, v0, v11

    if-ne v1, v15, :cond_6

    aget-char v1, v0, v10

    if-ne v1, v3, :cond_6

    aget-char v0, v0, v9

    if-ne v0, v14, :cond_6

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->CHAR:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object v0

    :pswitch_2
    array-length v1, v0

    if-ne v1, v8, :cond_0

    aget-char v1, v0, v11

    const/16 v14, 0x79

    if-ne v1, v14, :cond_0

    aget-char v1, v0, v10

    if-ne v1, v4, :cond_0

    aget-char v1, v0, v9

    if-ne v1, v13, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->BYTE:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object v0

    :cond_0
    array-length v1, v0

    const/4 v4, 0x7

    if-ne v1, v4, :cond_6

    aget-char v1, v0, v11

    if-ne v1, v7, :cond_6

    aget-char v1, v0, v10

    if-ne v1, v7, :cond_6

    aget-char v1, v0, v9

    if-ne v1, v6, :cond_6

    aget-char v1, v0, v8

    if-ne v1, v13, :cond_6

    aget-char v1, v0, v5

    if-ne v1, v3, :cond_6

    aget-char v0, v0, v2

    if-ne v0, v12, :cond_6

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->BOOLEAN:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object v0

    :cond_1
    array-length v1, v0

    if-ne v1, v8, :cond_6

    aget-char v1, v0, v11

    if-ne v1, v7, :cond_6

    aget-char v1, v0, v10

    if-ne v1, v2, :cond_6

    aget-char v0, v0, v9

    const/16 v1, 0x64

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->VOID:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object v0

    :cond_2
    array-length v1, v0

    if-ne v1, v5, :cond_6

    aget-char v1, v0, v11

    if-ne v1, v15, :cond_6

    aget-char v1, v0, v10

    if-ne v1, v7, :cond_6

    aget-char v1, v0, v9

    if-ne v1, v14, :cond_6

    aget-char v0, v0, v8

    if-ne v0, v4, :cond_6

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->SHORT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object v0

    :cond_3
    array-length v1, v0

    if-ne v1, v8, :cond_6

    aget-char v1, v0, v11

    if-ne v1, v7, :cond_6

    aget-char v1, v0, v10

    if-ne v1, v12, :cond_6

    aget-char v0, v0, v9

    const/16 v1, 0x67

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->LONG:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object v0

    :cond_4
    array-length v1, v0

    if-ne v1, v9, :cond_6

    aget-char v1, v0, v11

    if-ne v1, v12, :cond_6

    aget-char v0, v0, v10

    if-ne v0, v4, :cond_6

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->INT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object v0

    :cond_5
    array-length v1, v0

    if-ne v1, v5, :cond_6

    aget-char v1, v0, v11

    if-ne v1, v6, :cond_6

    aget-char v1, v0, v10

    if-ne v1, v7, :cond_6

    aget-char v1, v0, v9

    if-ne v1, v3, :cond_6

    aget-char v0, v0, v8

    if-ne v0, v4, :cond_6

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->FLOAT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object v0

    :cond_6
    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPrimitiveType([C)Z
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget-char v2, v0, v1

    const/16 v3, 0x66

    const/16 v4, 0x61

    const/16 v5, 0x74

    const/4 v6, 0x5

    const/16 v7, 0x6c

    const/16 v8, 0x6f

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v2, v3, :cond_c

    const/16 v3, 0x69

    if-eq v2, v3, :cond_a

    if-eq v2, v7, :cond_8

    const/16 v14, 0x73

    const/16 v15, 0x72

    const/16 v3, 0x68

    if-eq v2, v14, :cond_6

    const/16 v14, 0x76

    if-eq v2, v14, :cond_4

    const/4 v14, 0x6

    const/16 v13, 0x65

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    array-length v2, v0

    if-ne v2, v14, :cond_0

    aget-char v2, v0, v12

    if-ne v2, v8, :cond_0

    aget-char v2, v0, v11

    const/16 v3, 0x75

    if-ne v2, v3, :cond_0

    aget-char v2, v0, v10

    const/16 v3, 0x62

    if-ne v2, v3, :cond_0

    aget-char v2, v0, v9

    if-ne v2, v7, :cond_0

    aget-char v0, v0, v6

    if-ne v0, v13, :cond_0

    return v12

    :cond_0
    return v1

    :pswitch_1
    array-length v2, v0

    if-ne v2, v9, :cond_1

    aget-char v2, v0, v12

    if-ne v2, v3, :cond_1

    aget-char v2, v0, v11

    if-ne v2, v4, :cond_1

    aget-char v0, v0, v10

    if-ne v0, v15, :cond_1

    return v12

    :cond_1
    return v1

    :pswitch_2
    array-length v2, v0

    if-ne v2, v9, :cond_2

    aget-char v2, v0, v12

    const/16 v3, 0x79

    if-ne v2, v3, :cond_2

    aget-char v2, v0, v11

    if-ne v2, v5, :cond_2

    aget-char v2, v0, v10

    if-ne v2, v13, :cond_2

    return v12

    :cond_2
    array-length v2, v0

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    aget-char v2, v0, v12

    if-ne v2, v8, :cond_3

    aget-char v2, v0, v11

    if-ne v2, v8, :cond_3

    aget-char v2, v0, v10

    if-ne v2, v7, :cond_3

    aget-char v2, v0, v9

    if-ne v2, v13, :cond_3

    aget-char v2, v0, v6

    if-ne v2, v4, :cond_3

    aget-char v0, v0, v14

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_3

    return v12

    :cond_3
    return v1

    :cond_4
    array-length v2, v0

    if-ne v2, v9, :cond_5

    aget-char v2, v0, v12

    if-ne v2, v8, :cond_5

    aget-char v2, v0, v11

    const/16 v3, 0x69

    if-ne v2, v3, :cond_5

    aget-char v0, v0, v10

    const/16 v2, 0x64

    if-ne v0, v2, :cond_5

    return v12

    :cond_5
    return v1

    :cond_6
    array-length v2, v0

    if-ne v2, v6, :cond_7

    aget-char v2, v0, v12

    if-ne v2, v3, :cond_7

    aget-char v2, v0, v11

    if-ne v2, v8, :cond_7

    aget-char v2, v0, v10

    if-ne v2, v15, :cond_7

    aget-char v0, v0, v9

    if-ne v0, v5, :cond_7

    return v12

    :cond_7
    return v1

    :cond_8
    array-length v2, v0

    if-ne v2, v9, :cond_9

    aget-char v2, v0, v12

    if-ne v2, v8, :cond_9

    aget-char v2, v0, v11

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_9

    aget-char v0, v0, v10

    const/16 v2, 0x67

    if-ne v0, v2, :cond_9

    return v12

    :cond_9
    return v1

    :cond_a
    array-length v2, v0

    if-ne v2, v10, :cond_b

    aget-char v2, v0, v12

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_b

    aget-char v0, v0, v11

    if-ne v0, v5, :cond_b

    return v12

    :cond_b
    return v1

    :cond_c
    array-length v2, v0

    if-ne v2, v6, :cond_d

    aget-char v2, v0, v12

    if-ne v2, v7, :cond_d

    aget-char v2, v0, v11

    if-ne v2, v8, :cond_d

    aget-char v2, v0, v10

    if-ne v2, v4, :cond_d

    aget-char v0, v0, v9

    if-ne v0, v5, :cond_d

    return v12

    :cond_d
    return v1

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public recordName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Name;->isQualifiedName()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Name;->isQualifiedName()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/core/dom/QualifiedName;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/NullLiteral;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingResolver;->store(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public recordNodes(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/TagElement;)V
    .locals 7

    .line 3
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 6
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x43

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    .line 7
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/dom/MemberRef;

    .line 8
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/MemberRef;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    .line 10
    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->getNodeStartingAt(I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {p0, v2, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 12
    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 13
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/MemberRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    instance-of v0, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    if-eqz v0, :cond_3

    .line 15
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 16
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_4

    .line 17
    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_1

    .line 18
    :cond_3
    instance-of v0, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v0, :cond_4

    .line 19
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 20
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_4

    .line 21
    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :cond_4
    :goto_1
    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/MemberRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_11

    .line 24
    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodRef;

    .line 25
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodRef;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    .line 26
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    .line 27
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v2, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 28
    :cond_6
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_8

    const/16 v5, 0x17

    if-ne v4, v5, :cond_7

    goto :goto_2

    :cond_7
    const/16 v5, 0x81

    if-ne v4, v5, :cond_6

    .line 29
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-char v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v6, 0x23

    if-ne v5, v6, :cond_6

    .line 30
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    .line 31
    :catch_0
    :cond_8
    :goto_2
    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->getNodeStartingAt(I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 32
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 33
    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v4, :cond_9

    .line 34
    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_b

    .line 35
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_3

    .line 36
    :cond_9
    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v4, :cond_b

    .line 37
    move-object v4, v2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 38
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v5, :cond_a

    .line 39
    move-object v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 40
    :cond_a
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_b
    :goto_3
    if-eqz v3, :cond_c

    .line 41
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 42
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 43
    :cond_c
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodRef;->parameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 44
    :cond_d
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    .line 45
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    .line 46
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->getNodeStartingAt(I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_d

    .line 47
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 48
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;

    if-eqz v3, :cond_d

    .line 49
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;

    .line 50
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;->argument:Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 51
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v4, v4, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_f

    .line 52
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->isVarArgs()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->setVarargs(Z)V

    .line 53
    :cond_f
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 54
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Type;->isSimpleType()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 55
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/SimpleType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_4

    .line 56
    :cond_10
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 57
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 59
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Type;->isSimpleType()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 60
    check-cast v0, Lorg/eclipse/jdt/core/dom/SimpleType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_4

    .line 61
    :cond_11
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_13

    .line 62
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_12

    goto :goto_5

    .line 63
    :cond_12
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_0

    .line 64
    check-cast v0, Lorg/eclipse/jdt/core/dom/TagElement;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/core/dom/TagElement;)V

    goto/16 :goto_0

    .line 65
    :cond_13
    :goto_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->getNodeStartingAt(I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v1

    .line 66
    check-cast v0, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_0
.end method

.method public recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->pendingNameScopeResolution:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->pendingNameScopeResolution:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->pendingNameScopeResolution:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public recordPendingThisExpressionScopeResolution(Lorg/eclipse/jdt/core/dom/ThisExpression;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->pendingThisExpressionScopeResolution:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->pendingThisExpressionScopeResolution:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->pendingThisExpressionScopeResolution:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeLeadingAndTrailingCommentsFromLiteral(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-void

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public retrieveClosingAngleBracketPosition(I)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->returnOnlyGreater:Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_2

    return p1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p1, v1

    return p1

    :catch_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->returnOnlyGreater:Z

    return p1
.end method

.method public retrieveColonPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    const/16 v0, 0x3e

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setNodeSourceEndPosition(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    return-void
.end method

.method public retrieveDimensionAndSetPositions(IILorg/eclipse/jdt/core/dom/Dimension;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    if-nez p2, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    move p2, v3

    :cond_2
    const/4 v4, 0x6

    if-eq v2, v4, :cond_8

    const/16 v4, 0x17

    if-eq v2, v4, :cond_7

    const/16 v4, 0x19

    if-eq v2, v4, :cond_6

    const/16 v4, 0x42

    if-eq v2, v4, :cond_3

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr p2, v3

    sub-int/2addr p2, p1

    add-int/2addr p2, v3

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    if-lez v1, :cond_9

    goto :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    return-void
.end method

.method public retrieveEllipsisStartPosition(II)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x7a

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, -0x1

    return p1

    :catch_0
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public retrieveEndOfElementTypeNamePosition(II)[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 p1, 0x0

    :goto_0
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p2

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x16

    if-eq p2, v0, :cond_3

    const/16 v0, 0x17

    if-eq p2, v0, :cond_2

    const/16 v0, 0x19

    if-eq p2, v0, :cond_1

    const/16 v0, 0x63

    if-eq p2, v0, :cond_3

    const/16 v0, 0x64

    if-eq p2, v0, :cond_3

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :pswitch_0
    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 p1, p1, -0x1

    filled-new-array {p2, p1}, [I

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :goto_1
    const/4 p1, -0x1

    filled-new-array {p1, p1}, [I

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public retrieveEndOfPotentialExtendedDimensions(III)I
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 p3, 0x1

    if-le p1, p2, :cond_0

    add-int/lit8 p2, p1, -0x1

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    move v2, p2

    move p2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_1

    goto :goto_5

    :cond_1
    if-eqz p1, :cond_4

    const/16 p2, 0x17

    if-ne v3, p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 p2, 0x19

    if-ne v3, p2, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_1
    move p2, p3

    goto :goto_0

    :cond_3
    :goto_2
    if-lez v0, :cond_4

    :goto_3
    goto :goto_1

    :cond_4
    const/4 p2, 0x6

    if-eq v3, p2, :cond_b

    const/16 p2, 0x1a

    if-eq v3, p2, :cond_9

    const/16 p2, 0x25

    if-eq v3, p2, :cond_8

    const/16 p2, 0x31

    if-eq v3, p2, :cond_b

    const/16 p2, 0x42

    if-eq v3, p2, :cond_7

    const/16 p2, 0x20

    if-eq v3, p2, :cond_5

    const/16 p2, 0x21

    if-eq v3, p2, :cond_7

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    return v2

    :cond_6
    :try_start_1
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :goto_4
    add-int/lit8 v2, p2, -0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, -0x1

    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_8
    move p1, p3

    move p2, p1

    goto :goto_0

    :cond_9
    if-nez v1, :cond_a

    return v2

    :cond_a
    neg-int p1, v2

    return p1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move p3, p2

    :catch_1
    move p2, p3

    :goto_5
    if-eqz p2, :cond_c

    const/high16 v2, -0x80000000

    :cond_c
    return v2
.end method

.method public retrieveEndOfRightParenthesisPosition(II)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p2

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x17

    if-eq p2, v0, :cond_3

    const/16 v0, 0x19

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public retrieveIdentifierAndSetPositions(IILorg/eclipse/jdt/core/dom/Name;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x16

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public retrieveIdentifierEndPosition(II)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x16

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public retrieveInitAndSetPositions(IILorg/eclipse/jdt/core/dom/Name;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x24

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public retrieveProperRightBracketPosition(II)I
    .locals 1

    .line 4
    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveProperRightBracketPosition(III)I

    move-result p1

    return p1
.end method

.method public retrieveProperRightBracketPosition(III)I
    .locals 4

    .line 1
    iget-object p3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    invoke-virtual {p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :cond_0
    :goto_0
    const/4 v1, -0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    if-eq v2, v3, :cond_8

    const/16 v3, 0x17

    if-eq v2, v3, :cond_7

    const/16 v3, 0x19

    if-eq v2, v3, :cond_6

    const/16 v3, 0x42

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7a

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    :cond_3
    add-int/2addr p2, v1

    if-lez p3, :cond_4

    goto :goto_0

    :cond_4
    if-lez p2, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_6
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    return v1
.end method

.method public retrieveRightBrace(II)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x21

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, -0x1

    return p1

    :catch_0
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public retrieveRightBraceOrSemiColonPosition(II)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x1a

    if-eq p1, p2, :cond_2

    const/16 p2, 0x21

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, -0x1

    return p1

    :catch_0
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public retrieveSemiColonPosition(Lorg/eclipse/jdt/core/dom/Expression;)I
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, -0x1

    return p1

    :catch_0
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public retrieveStartBlockPosition(II)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x31

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public retrieveStartingCatchPosition(II)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x66

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public setAST(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 3

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    new-instance v0, Lorg/eclipse/jdt/core/dom/DocCommentParser;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->insideComments:Z

    invoke-direct {v0, p1, v1, v2}, Lorg/eclipse/jdt/core/dom/DocCommentParser;-><init>(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/internal/compiler/parser/Scanner;Z)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->docParser:Lorg/eclipse/jdt/core/dom/DocCommentParser;

    return-void
.end method

.method public setAnnotations(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v0, v1, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Ljava/util/List;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/IExtendedModifier;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IExtendedModifier;->isAnnotation()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->annotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setExtraAnnotatedDimensions(IILorg/eclipse/jdt/internal/compiler/ast/TypeReference;Ljava/util/List;I)V
    .locals 2

    if-lez p5, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p3

    :goto_0
    sub-int p5, v0, p5

    :goto_1
    if-lt p5, v0, :cond_1

    goto :goto_3

    :cond_1
    if-nez p3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    aget-object v1, p3, p5

    :goto_2
    invoke-direct {p0, p1, p2, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToDimensions(II[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Dimension;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr p1, v1

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method public setModifiers(Ljava/util/List;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V
    .locals 4

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    .line 7
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v2, 0x25

    if-eq v0, v2, :cond_5

    const/16 v2, 0x30

    if-eq v0, v2, :cond_4

    const/16 v2, 0x32

    if-eq v0, v2, :cond_3

    const/16 v2, 0x49

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 8
    :pswitch_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->VOLATILE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto/16 :goto_2

    .line 9
    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->TRANSIENT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    .line 10
    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STRICTFP_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    .line 11
    :pswitch_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PUBLIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    .line 12
    :pswitch_4
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PROTECTED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    .line 13
    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PRIVATE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    .line 14
    :pswitch_6
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->NATIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    .line 15
    :pswitch_7
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->FINAL_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    .line 16
    :pswitch_8
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->ABSTRACT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    .line 17
    :cond_2
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->DEFAULT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    .line 18
    :cond_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->SYNCHRONIZED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    .line 19
    :cond_4
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 20
    array-length v0, p2

    if-ge v1, v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    .line 21
    aget-object v1, p2, v1

    .line 22
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    move v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 2
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/BodyDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    return-void
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 4
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/BodyDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    return-void
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/BodyDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Ljava/util/List;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    return-void
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 29
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/BodyDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    goto :goto_0

    .line 30
    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    .line 31
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p2, :cond_1

    .line 32
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/EnumDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 3

    .line 25
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 26
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/BodyDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    return-void
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 35
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/BodyDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    goto :goto_0

    .line 36
    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    .line 37
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p2, :cond_1

    .line 38
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/Initializer;Lorg/eclipse/jdt/internal/compiler/ast/Initializer;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 41
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/BodyDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    goto :goto_0

    .line 42
    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    .line 43
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 47
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/BodyDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    goto :goto_0

    .line 48
    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    .line 49
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V
    .locals 5

    .line 51
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 52
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 53
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v0, 0x0

    .line 54
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x25

    if-eq v1, v2, :cond_4

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return-void

    .line 55
    :pswitch_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->VOLATILE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto/16 :goto_1

    .line 56
    :pswitch_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->TRANSIENT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 57
    :pswitch_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STRICTFP_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 58
    :pswitch_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PUBLIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 59
    :pswitch_4
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PROTECTED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 60
    :pswitch_5
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PRIVATE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 61
    :pswitch_6
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->NATIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 62
    :pswitch_7
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->FINAL_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 63
    :pswitch_8
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->ABSTRACT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 64
    :cond_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->SYNCHRONIZED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 65
    :cond_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 66
    array-length v1, p2

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 67
    aget-object v0, p2, v0

    .line 68
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    invoke-virtual {v3, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    move v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    :pswitch_9
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 71
    :cond_6
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->internalSetModifiers(I)V

    .line 72
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p2, :cond_7

    .line 73
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :catch_0
    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V
    .locals 5

    .line 74
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 75
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 76
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v0, 0x0

    .line 77
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x25

    if-eq v1, v2, :cond_4

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return-void

    .line 78
    :pswitch_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->VOLATILE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto/16 :goto_1

    .line 79
    :pswitch_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->TRANSIENT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 80
    :pswitch_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STRICTFP_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 81
    :pswitch_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PUBLIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 82
    :pswitch_4
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PROTECTED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 83
    :pswitch_5
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PRIVATE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 84
    :pswitch_6
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->NATIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 85
    :pswitch_7
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->FINAL_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 86
    :pswitch_8
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->ABSTRACT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 87
    :cond_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->SYNCHRONIZED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 88
    :cond_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 89
    array-length v1, p2

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 90
    aget-object v0, p2, v0

    .line 91
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    invoke-virtual {v3, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    move v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    :pswitch_9
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 94
    :cond_6
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->internalSetModifiers(I)V

    .line 95
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p2, :cond_7

    .line 96
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :catch_0
    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 99
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setModifiers(Lorg/eclipse/jdt/core/dom/BodyDeclaration;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    goto :goto_0

    .line 100
    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    const v1, 0xfdff

    and-int/2addr v0, v1

    .line 101
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    .line 102
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V
    .locals 5

    .line 104
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 105
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 106
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v0, 0x0

    .line 107
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x25

    if-eq v1, v2, :cond_4

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return-void

    .line 108
    :pswitch_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->VOLATILE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto/16 :goto_1

    .line 109
    :pswitch_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->TRANSIENT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 110
    :pswitch_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STRICTFP_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 111
    :pswitch_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PUBLIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 112
    :pswitch_4
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PROTECTED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 113
    :pswitch_5
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PRIVATE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 114
    :pswitch_6
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->NATIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 115
    :pswitch_7
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->FINAL_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 116
    :pswitch_8
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->ABSTRACT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 117
    :cond_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->SYNCHRONIZED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 118
    :cond_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 119
    array-length v1, p2

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 120
    aget-object v0, p2, v0

    .line 121
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    invoke-virtual {v3, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    move v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    :pswitch_9
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 124
    :cond_6
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 125
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->internalSetModifiers(I)V

    .line 126
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p2, :cond_7

    .line 127
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :catch_0
    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public setModifiers(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V
    .locals 5

    .line 128
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 129
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 130
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v0, 0x0

    .line 131
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x25

    if-eq v1, v2, :cond_4

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return-void

    .line 132
    :pswitch_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->VOLATILE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto/16 :goto_1

    .line 133
    :pswitch_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->TRANSIENT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 134
    :pswitch_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STRICTFP_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 135
    :pswitch_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PUBLIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 136
    :pswitch_4
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PROTECTED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 137
    :pswitch_5
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PRIVATE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 138
    :pswitch_6
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->NATIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 139
    :pswitch_7
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->FINAL_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 140
    :pswitch_8
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->ABSTRACT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 141
    :cond_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->SYNCHRONIZED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    .line 142
    :cond_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->createModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 143
    array-length v1, p2

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 144
    aget-object v0, p2, v0

    .line 145
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/core/dom/Annotation;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    invoke-virtual {v3, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    move v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    :pswitch_9
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 148
    :cond_6
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 149
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->internalSetModifiers(I)V

    .line 150
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p2, :cond_7

    .line 151
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    :catch_0
    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public setQualifiedNameNameAndSourceRanges([[C[JILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/core/dom/QualifiedName;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x1

    add-int/lit8 v3, p3, 0x1

    .line 42
    new-instance v4, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v5, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 43
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p1, v6

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    .line 44
    iput v2, v4, Lorg/eclipse/jdt/core/dom/Name;->index:I

    .line 45
    aget-wide v5, p2, v6

    const/16 v7, 0x20

    ushr-long v8, v5, v7

    long-to-int v8, v8

    long-to-int v5, v5

    sub-int/2addr v5, v8

    add-int/2addr v5, v2

    .line 46
    invoke-virtual {v4, v8, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 47
    new-instance v5, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v6, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 48
    new-instance v6, Ljava/lang/String;

    aget-object v9, p1, v2

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 49
    iput v6, v5, Lorg/eclipse/jdt/core/dom/Name;->index:I

    .line 50
    aget-wide v9, p2, v2

    ushr-long v11, v9, v7

    long-to-int v11, v11

    long-to-int v9, v9

    sub-int v10, v9, v11

    add-int/2addr v10, v2

    .line 51
    invoke-virtual {v5, v11, v10}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 52
    new-instance v10, Lorg/eclipse/jdt/core/dom/QualifiedName;

    iget-object v11, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v10, v11}, Lorg/eclipse/jdt/core/dom/QualifiedName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 53
    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/core/dom/QualifiedName;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 54
    invoke-virtual {v10, v5}, Lorg/eclipse/jdt/core/dom/QualifiedName;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 55
    iget-boolean v11, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v11, :cond_0

    .line 56
    invoke-virtual {p0, v10, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 57
    invoke-virtual {p0, v10}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 58
    invoke-virtual {p0, v4, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 59
    invoke-virtual {p0, v5, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 60
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 61
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 62
    :cond_0
    iput v6, v10, Lorg/eclipse/jdt/core/dom/Name;->index:I

    sub-int/2addr v9, v8

    add-int/2addr v9, v2

    .line 63
    invoke-virtual {v10, v8, v9}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    const/4 v4, 0x0

    :goto_0
    if-lt v6, v3, :cond_2

    if-nez v4, :cond_1

    .line 64
    iget-boolean v2, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p0, v10, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 66
    invoke-virtual {p0, v10}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    :cond_1
    return-object v10

    .line 67
    :cond_2
    new-instance v4, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v5, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 68
    new-instance v5, Ljava/lang/String;

    aget-object v9, p1, v6

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    add-int/lit8 v5, v6, 0x1

    .line 69
    iput v5, v4, Lorg/eclipse/jdt/core/dom/Name;->index:I

    .line 70
    aget-wide v11, p2, v6

    ushr-long v13, v11, v7

    long-to-int v6, v13

    long-to-int v9, v11

    sub-int v11, v9, v6

    add-int/2addr v11, v2

    .line 71
    invoke-virtual {v4, v6, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 72
    new-instance v6, Lorg/eclipse/jdt/core/dom/QualifiedName;

    iget-object v11, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v6, v11}, Lorg/eclipse/jdt/core/dom/QualifiedName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 73
    invoke-virtual {v6, v10}, Lorg/eclipse/jdt/core/dom/QualifiedName;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 74
    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/core/dom/QualifiedName;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 75
    iget v10, v4, Lorg/eclipse/jdt/core/dom/Name;->index:I

    iput v10, v6, Lorg/eclipse/jdt/core/dom/Name;->index:I

    sub-int/2addr v9, v8

    add-int/2addr v9, v2

    .line 76
    invoke-virtual {v6, v8, v9}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 77
    iget-boolean v9, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v9, :cond_3

    .line 78
    invoke-virtual {p0, v6, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 79
    invoke-virtual {p0, v4, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 80
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 81
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    :cond_3
    move-object v10, v6

    move v6, v5

    goto :goto_0
.end method

.method public setQualifiedNameNameAndSourceRanges([[C[JLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/dom/QualifiedName;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    array-length v3, v1

    .line 2
    new-instance v4, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v5, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 3
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, v1, v6

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 4
    iput v5, v4, Lorg/eclipse/jdt/core/dom/Name;->index:I

    .line 5
    aget-wide v6, p2, v6

    const/16 v8, 0x20

    ushr-long v9, v6, v8

    long-to-int v9, v9

    long-to-int v6, v6

    sub-int/2addr v6, v9

    add-int/2addr v6, v5

    .line 6
    invoke-virtual {v4, v9, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 7
    new-instance v6, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v7, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 8
    new-instance v7, Ljava/lang/String;

    aget-object v10, v1, v5

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    const/4 v7, 0x2

    .line 9
    iput v7, v6, Lorg/eclipse/jdt/core/dom/Name;->index:I

    .line 10
    aget-wide v10, p2, v5

    ushr-long v12, v10, v8

    long-to-int v12, v12

    long-to-int v10, v10

    sub-int v11, v10, v12

    add-int/2addr v11, v5

    .line 11
    invoke-virtual {v6, v12, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 12
    new-instance v11, Lorg/eclipse/jdt/core/dom/QualifiedName;

    iget-object v12, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/core/dom/QualifiedName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 13
    invoke-virtual {v11, v4}, Lorg/eclipse/jdt/core/dom/QualifiedName;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 14
    invoke-virtual {v11, v6}, Lorg/eclipse/jdt/core/dom/QualifiedName;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 15
    iget-boolean v12, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v12, :cond_0

    .line 16
    invoke-virtual {v0, v11, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 17
    invoke-virtual {v0, v11}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 18
    invoke-virtual {v0, v4, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 19
    invoke-virtual {v0, v6, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 20
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 21
    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 22
    :cond_0
    iput v7, v11, Lorg/eclipse/jdt/core/dom/Name;->index:I

    sub-int/2addr v10, v9

    add-int/2addr v10, v5

    .line 23
    invoke-virtual {v11, v9, v10}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :goto_0
    if-lt v7, v3, :cond_2

    .line 24
    iget-boolean v1, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v0, v11, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 26
    invoke-virtual {v0, v11}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    :cond_1
    return-object v11

    .line 27
    :cond_2
    new-instance v4, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v6, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v4, v6}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 28
    new-instance v6, Ljava/lang/String;

    aget-object v10, v1, v7

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    add-int/lit8 v6, v7, 0x1

    .line 29
    iput v6, v4, Lorg/eclipse/jdt/core/dom/Name;->index:I

    .line 30
    aget-wide v12, p2, v7

    ushr-long v14, v12, v8

    long-to-int v7, v14

    long-to-int v10, v12

    sub-int v12, v10, v7

    add-int/2addr v12, v5

    .line 31
    invoke-virtual {v4, v7, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 32
    new-instance v7, Lorg/eclipse/jdt/core/dom/QualifiedName;

    iget-object v12, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v7, v12}, Lorg/eclipse/jdt/core/dom/QualifiedName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 33
    invoke-virtual {v7, v11}, Lorg/eclipse/jdt/core/dom/QualifiedName;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 34
    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/core/dom/QualifiedName;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    .line 35
    iget v11, v4, Lorg/eclipse/jdt/core/dom/Name;->index:I

    iput v11, v7, Lorg/eclipse/jdt/core/dom/Name;->index:I

    sub-int/2addr v10, v9

    add-int/2addr v10, v5

    .line 36
    invoke-virtual {v7, v9, v10}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 37
    iget-boolean v10, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz v10, :cond_3

    .line 38
    invoke-virtual {v0, v7, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 39
    invoke-virtual {v0, v4, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    .line 40
    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    .line 41
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordPendingNameScopeResolution(Lorg/eclipse/jdt/core/dom/Name;)V

    :cond_3
    move-object v11, v7

    move v7, v6

    goto :goto_0
.end method

.method public setTypeForField(Lorg/eclipse/jdt/core/dom/FieldDeclaration;Lorg/eclipse/jdt/core/dom/Type;I)V
    .locals 2

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result v1

    sub-int/2addr v1, p3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1, p3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->extractSubArrayType(Lorg/eclipse/jdt/core/dom/ArrayType;II)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :goto_0
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndSetMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result p3

    const/16 v0, 0x8

    if-ge p3, v0, :cond_3

    move-object p3, p2

    check-cast p3, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->updateInnerPositions(Lorg/eclipse/jdt/core/dom/Type;I)V

    :cond_3
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    :goto_1
    return-void
.end method

.method public setTypeForMethodDeclaration(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;Lorg/eclipse/jdt/core/dom/Type;I)V
    .locals 0

    .line 22
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-void
.end method

.method public setTypeForMethodDeclaration(Lorg/eclipse/jdt/core/dom/MethodDeclaration;Lorg/eclipse/jdt/core/dom/Type;I)V
    .locals 3

    const/4 v0, 0x2

    if-eqz p3, :cond_5

    .line 1
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/core/dom/ArrayType;

    .line 3
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result v2

    sub-int/2addr v2, p3

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p3

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p3, v1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    .line 6
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 7
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v1, v0, :cond_0

    .line 8
    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReturnType2(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalSetReturnType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-direct {p0, v1, v2, p3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->extractSubArrayType(Lorg/eclipse/jdt/core/dom/ArrayType;II)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object p3

    .line 11
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq v1, v0, :cond_2

    .line 12
    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReturnType2(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalSetReturnType(Lorg/eclipse/jdt/core/dom/Type;)V

    .line 14
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 15
    :goto_1
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndSetMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object p3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget p3, p3, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq p3, v0, :cond_4

    .line 17
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReturnType2(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalSetReturnType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object p3, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget p3, p3, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-eq p3, v0, :cond_6

    .line 20
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReturnType2(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalSetReturnType(Lorg/eclipse/jdt/core/dom/Type;)V

    :goto_2
    return-void
.end method

.method public setTypeForSingleVariableDeclaration(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;Lorg/eclipse/jdt/core/dom/Type;I)V
    .locals 2

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result v1

    sub-int/2addr v1, p3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1, p3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->extractSubArrayType(Lorg/eclipse/jdt/core/dom/ArrayType;II)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object p3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    :goto_0
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndSetMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    :goto_1
    return-void
.end method

.method public setTypeForVariableDeclarationExpression(Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;Lorg/eclipse/jdt/core/dom/Type;I)V
    .locals 2

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result v1

    sub-int/2addr v1, p3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1, p3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->extractSubArrayType(Lorg/eclipse/jdt/core/dom/ArrayType;II)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :goto_0
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndSetMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    :goto_1
    return-void
.end method

.method public setTypeForVariableDeclarationStatement(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;Lorg/eclipse/jdt/core/dom/Type;I)V
    .locals 2

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result v1

    sub-int/2addr v1, p3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1, p3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->extractSubArrayType(Lorg/eclipse/jdt/core/dom/ArrayType;II)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;->updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :goto_0
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndSetMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    :goto_1
    return-void
.end method

.method public setTypeNameForAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/dom/Annotation;)V
    .locals 4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setQualifiedNameNameAndSourceRanges([[C[JLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/Annotation;->setTypeName(Lorg/eclipse/jdt/core/dom/Name;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iput v3, v1, Lorg/eclipse/jdt/core/dom/Name;->index:I

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/core/dom/Annotation;->setTypeName(Lorg/eclipse/jdt/core/dom/Name;)V

    iget-boolean p2, p0, Lorg/eclipse/jdt/core/dom/ASTConverter;->resolveBindings:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->recordNodes(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateInnerPositions(Lorg/eclipse/jdt/core/dom/Type;I)V
    .locals 3

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->componentType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    sub-int/2addr p2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->retrieveProperRightBracketPosition(II)I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    check-cast p1, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->componentType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

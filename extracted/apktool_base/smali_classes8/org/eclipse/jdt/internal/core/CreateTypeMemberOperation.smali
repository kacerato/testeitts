.class public abstract Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;
.super Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;
.source "SourceFile"


# instance fields
.field protected alteredName:Ljava/lang/String;

.field protected createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

.field protected source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    return-void
.end method

.method private removeIndentAndNewLines(Ljava/lang/String;Lorg/eclipse/jdt/core/ICompilationUnit;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->getTabWidth(Ljava/util/Map;)I

    move-result v4

    invoke-static {v0}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->getIndentWidth(Ljava/util/Map;)I

    move-result v5

    invoke-static {p1, v4, v5}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->measureIndentUnits(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, -0x1

    :cond_0
    add-int/lit8 v6, v0, -0x1

    if-lt v2, v6, :cond_1

    :goto_0
    move v6, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_2
    :goto_1
    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IOpenable;->findRecommendedLineSeparator()Ljava/lang/String;

    move-result-object v7

    add-int/2addr v0, v1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-static/range {v2 .. v7}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->changeIndent(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public generateElementAST(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->removeIndentAndNewLines(Ljava/lang/String;Lorg/eclipse/jdt/core/ICompilationUnit;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    const/16 p2, 0xb

    invoke-static {p2}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource([C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setProject(Lorg/eclipse/jdt/core/IJavaProject;)V

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v0

    const/16 v1, 0x37

    const/16 v2, 0x3d8

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->generateSyntaxIncorrectAST()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {p2, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_1
    check-cast p2, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->generateSyntaxIncorrectAST()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {p2, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->alteredName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->alteredName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->rename(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->alteredName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->alteredName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {p2, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_6
    :goto_2
    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object p1

    :cond_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->createStringPlaceholder(Ljava/lang/String;I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public generateSyntaxIncorrectAST()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " public class A {"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0xb

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource([C)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildPropertyDescriptor(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result p1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/16 v0, 0x47

    if-eq p1, v0, :cond_1

    const/16 v0, 0x51

    if-eq p1, v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object p1

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object p1
.end method

.method public getType()Lorg/eclipse/jdt/core/IType;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    return-object v0
.end method

.method public abstract rename(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/SimpleName;
.end method

.method public setAlteredName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->alteredName:Ljava/lang/String;

    return-void
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->verify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->source:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3d8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->generateElementAST(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->verifyNameCollision()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method

.method public verifyNameCollision()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method

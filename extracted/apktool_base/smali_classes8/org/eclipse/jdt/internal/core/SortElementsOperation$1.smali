.class Lorg/eclipse/jdt/internal/core/SortElementsOperation$1;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/SortElementsOperation;->sortCompilationUnit(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/SortElementsOperation;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Z
    .locals 5

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "malformed"

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    .line 11
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "relativeOrder"

    invoke-virtual {v2, v4, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->isMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Z
    .locals 5

    .line 13
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "malformed"

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    .line 17
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "relativeOrder"

    invoke-virtual {v2, v4, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->isMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "malformed"

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    .line 5
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "relativeOrder"

    invoke-virtual {v2, v4, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->isMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Z
    .locals 5

    .line 25
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "relativeOrder"

    if-nez v2, :cond_1

    .line 27
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->enumConstants()Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "malformed"

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 30
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    .line 31
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->isMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    .line 34
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->isMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z
    .locals 5

    .line 19
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "malformed"

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    .line 23
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "relativeOrder"

    invoke-virtual {v2, v4, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->isMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0
.end method

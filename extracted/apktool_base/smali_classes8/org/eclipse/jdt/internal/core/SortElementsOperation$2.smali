.class Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;
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

.field private final synthetic val$group:Lorg/eclipse/text/edits/TextEditGroup;

.field private final synthetic val$hasChanges:[Z

.field private final synthetic val$rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/SortElementsOperation;Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/text/edits/TextEditGroup;[Z)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$group:Lorg/eclipse/text/edits/TextEditGroup;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$hasChanges:[Z

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    return-void
.end method

.method private sortElements(Ljava/util/List;Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eq v3, v4, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->createMoveTarget(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$group:Lorg/eclipse/text/edits/TextEditGroup;

    invoke-virtual {p2, v3, v4, v5}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->replace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$hasChanges:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Z
    .locals 4

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->checkMalformedNodes(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    sget-object v3, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->sortElements(Ljava/util/List;Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;)V

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Z
    .locals 4

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->checkMalformedNodes(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    sget-object v3, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->sortElements(Ljava/util/List;Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;)V

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->checkMalformedNodes(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    sget-object v3, Lorg/eclipse/jdt/core/dom/CompilationUnit;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->sortElements(Ljava/util/List;Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;)V

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Z
    .locals 4

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->checkMalformedNodes(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    sget-object v3, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->sortElements(Ljava/util/List;Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;)V

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->enumConstants()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    sget-object v3, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->ENUM_CONSTANTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->sortElements(Ljava/util/List;Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;)V

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z
    .locals 4

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->this$0:Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->checkMalformedNodes(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->val$rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    sget-object v3, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;->sortElements(Ljava/util/List;Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;)V

    return v1
.end method

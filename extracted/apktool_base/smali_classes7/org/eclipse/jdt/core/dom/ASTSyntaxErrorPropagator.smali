.class Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# instance fields
.field private problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>(Z)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-void
.end method

.method private checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v4

    const v5, 0x60000106

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    goto :goto_2

    :cond_1
    :pswitch_0
    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v5

    add-int/2addr v5, v4

    if-gt v4, v3, :cond_3

    if-gt v3, v5, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v2

    const/4 v3, 0x1

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x600000cc
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x600000d1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x600000e6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x600000fa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Z
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Initializer;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;->checkAndTagAsMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.class public Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# static fields
.field private static final JLS12:I = 0xc

.field private static final JLS2:I = 0x2

.field private static final JLS3:I = 0x3

.field private static final JLS4:I = 0x4

.field private static final JLS8:I = 0x8

.field private static final JLS9:I = 0x9


# instance fields
.field protected buffer:Ljava/lang/StringBuffer;

.field private indent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private getName(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Lorg/eclipse/jdt/core/dom/Name;
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1
.end method

.method private static getReturnType(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p0

    return-object p0
.end method

.method private static getSuperclass(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/Name;
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclass()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p0

    return-object p0
.end method

.method private getSwitchExpression(Lorg/eclipse/jdt/core/dom/SwitchCase;)Lorg/eclipse/jdt/core/dom/Expression;
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1
.end method

.method private static getTypeDeclaration(Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;)Lorg/eclipse/jdt/core/dom/TypeDeclaration;
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getTypeDeclaration()Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    move-result-object p0

    return-object p0
.end method

.method private printTypes(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/Type;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private superInterfaces(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Ljava/util/List;
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaces()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static thrownExceptions(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private visit(Lorg/eclipse/jdt/core/dom/ModulePackageAccess;Ljava/lang/String;)Z
    .locals 1

    .line 472
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 473
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 476
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object p1

    const-string p2, "to"

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printTypes(Ljava/util/List;Ljava/lang/String;)V

    .line 477
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method private visitAnnotationsList(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Annotation;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private visitComponentType(Lorg/eclipse/jdt/core/dom/ArrayType;)V
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getComponentType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    return-void
.end method

.method private visitReferenceTypeArguments(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private visitSwitchNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "switch ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/SwitchExpression;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/dom/SwitchExpression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v2, "{\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/core/dom/SwitchExpression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->statements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Statement;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->statements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Statement;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    goto :goto_2

    :cond_5
    :goto_3
    iget p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private visitTypeAnnotations(Lorg/eclipse/jdt/core/dom/AnnotatableType;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitAnnotationsList(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printIndent()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public printModifiers(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    :cond_2
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    :cond_3
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "abstract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    :cond_4
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    :cond_5
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isSynchronized(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "synchronized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    :cond_6
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isVolatile(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "volatile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    :cond_7
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isNative(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "native "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    :cond_8
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isStrictfp(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "strictfp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    :cond_9
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isTransient(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 22
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "transient "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    return-void
.end method

.method public printModifiers(Ljava/util/List;)V
    .locals 2

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 25
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 26
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "@interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    .line 11
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;)Z
    .locals 2

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 15
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 19
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getDefault()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getDefault()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 23
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Z
    .locals 2

    .line 24
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    .line 26
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    .line 28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 29
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 30
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    .line 31
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayAccess;)Z
    .locals 2

    .line 32
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayAccess;->getArray()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 33
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayAccess;->getIndex()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 35
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayCreation;)Z
    .locals 5

    .line 36
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->getType()Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result v1

    .line 39
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 41
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->dimensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move v0, v2

    :goto_1
    if-lt v0, v1, :cond_1

    .line 42
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->getInitializer()Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->getInitializer()Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_0
    return v2

    .line 44
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v4, "[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Expression;

    .line 47
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 48
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayInitializer;)Z
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->expressions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Expression;

    .line 53
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayType;)Z
    .locals 4

    .line 56
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitComponentType(Lorg/eclipse/jdt/core/dom/ArrayType;)V

    .line 58
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 60
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_1

    :goto_1
    return v2

    .line 62
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/Dimension;

    .line 63
    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AssertStatement;)Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 65
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "assert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AssertStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 67
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AssertStatement;->getMessage()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AssertStatement;->getMessage()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 70
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Assignment;)Z
    .locals 2

    .line 71
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getLeftHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 72
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getOperator()Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getRightHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Block;)Z
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    .line 76
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    .line 78
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 79
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 80
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Statement;

    .line 81
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/BlockComment;)Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 83
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "/* */"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/BooleanLiteral;)Z
    .locals 1

    .line 84
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BooleanLiteral;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/BreakStatement;)Z
    .locals 4

    .line 87
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->isImplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 89
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-lt v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->isImplicit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v3, "break"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    const-string v3, " "

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 94
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 95
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 98
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CastExpression;)Z
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CastExpression;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 101
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CastExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CatchClause;)Z
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "catch ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CatchClause;->getException()Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 105
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CatchClause;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CharacterLiteral;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Z
    .locals 3

    .line 108
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 110
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 113
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->getName(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 114
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, ","

    if-lt v0, v1, :cond_5

    .line 115
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 116
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 119
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    .line 120
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 123
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 124
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 126
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 128
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_7
    const/4 p1, 0x0

    return p1

    .line 129
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Expression;

    .line 130
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Z
    .locals 2

    .line 133
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 134
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getModule()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getModule()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 136
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 138
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 139
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    .line 141
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_1

    .line 142
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    .line 143
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ConditionalExpression;)Z
    .locals 2

    .line 144
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 145
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getThenExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 147
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getElseExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;)Z
    .locals 3

    .line 149
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 150
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, ","

    if-lt v0, v1, :cond_2

    .line 151
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 155
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    .line 156
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 159
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "this("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 161
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ");\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 162
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Expression;

    .line 163
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ContinueStatement;)Z
    .locals 2

    .line 166
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 167
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "continue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ContinueStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ContinueStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 171
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CreationReference;)Z
    .locals 1

    .line 172
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CreationReference;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 173
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CreationReference;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitReferenceTypeArguments(Ljava/util/List;)V

    .line 174
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "new"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Dimension;)Z
    .locals 2

    .line 175
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Dimension;->annotations()Ljava/util/List;

    move-result-object p1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitAnnotationsList(Ljava/util/List;)V

    .line 179
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/DoStatement;)Z
    .locals 2

    .line 180
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 181
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "do "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 183
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " while ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 185
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ");\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EmptyStatement;)Z
    .locals 1

    .line 186
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 187
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnhancedForStatement;)Z
    .locals 2

    .line 188
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 189
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getParameter()Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 191
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 193
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Z
    .locals 3

    .line 195
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 198
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 199
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 200
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->arguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 201
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->arguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 204
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Expression;

    .line 205
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 208
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 209
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Z
    .locals 4

    .line 210
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 213
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 214
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 216
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v2, ", "

    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v3, "implements "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 220
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 221
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/Type;

    .line 222
    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 225
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->enumConstants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 227
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 228
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 230
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    .line 231
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_3

    .line 232
    :cond_6
    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 233
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    .line 234
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExportsDirective;)Z
    .locals 1

    .line 237
    const-string v0, "exports"

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visit(Lorg/eclipse/jdt/core/dom/ModulePackageAccess;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;)Z
    .locals 1

    .line 238
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 239
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitReferenceTypeArguments(Ljava/util/List;)V

    .line 240
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExpressionStatement;)Z
    .locals 1

    .line 241
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 242
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 243
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldAccess;)Z
    .locals 2

    .line 244
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldAccess;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 245
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldAccess;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Z
    .locals 2

    .line 247
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 250
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 251
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(I)V

    .line 252
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 253
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 254
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 255
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 258
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    .line 259
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 260
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ForStatement;)Z
    .locals 3

    .line 262
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 263
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_4

    .line 265
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1

    .line 272
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Expression;

    .line 273
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 274
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 275
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Expression;

    .line 276
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/IfStatement;)Z
    .locals 2

    .line 278
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 279
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "if ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 281
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getThenStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 283
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getElseStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " else "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getElseStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Z
    .locals 2

    .line 286
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 287
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "import "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 289
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 292
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isOnDemand()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ".*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/InfixExpression;)Z
    .locals 4

    .line 295
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 296
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 297
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 299
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 300
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Expression;

    .line 306
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Initializer;)Z
    .locals 2

    .line 307
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 309
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 310
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(I)V

    .line 311
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 312
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 313
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Initializer;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/InstanceofExpression;)Z
    .locals 2

    .line 314
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 315
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " instanceof "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/IntersectionType;)Z
    .locals 2

    .line 317
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IntersectionType;->types()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 318
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Type;

    .line 319
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 320
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Javadoc;)Z
    .locals 2

    .line 322
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 323
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "/** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Javadoc;->tags()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "\n */\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 326
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 327
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LabeledStatement;)Z
    .locals 2

    .line 328
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 329
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LabeledStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 330
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LabeledStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LambdaExpression;)Z
    .locals 4

    .line 332
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->hasParentheses()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 334
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->parameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->getBody()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1

    .line 338
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    .line 339
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 340
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LineComment;)Z
    .locals 1

    .line 342
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "//\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MarkerAnnotation;)Z
    .locals 2

    .line 343
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MemberRef;)Z
    .locals 2

    .line 345
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MemberRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MemberRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MemberRef;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MemberValuePair;)Z
    .locals 2

    .line 349
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MemberValuePair;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 350
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MemberValuePair;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Z
    .locals 7

    .line 352
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 354
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 355
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 356
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(I)V

    .line 357
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v2, 0x3

    const-string v3, ","

    if-lt v0, v2, :cond_4

    .line 358
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 359
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 360
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 362
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 363
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/TypeParameter;

    .line 364
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 367
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v0

    const-string v2, " "

    if-nez v0, :cond_7

    .line 368
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 369
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->getReturnType(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_2

    .line 370
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 371
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_2

    .line 372
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 375
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9

    .line 377
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 378
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 379
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverQualifier()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 381
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 382
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v4, "this"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 385
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 386
    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_15

    .line 387
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getExtraDimensions()I

    move-result v4

    .line 389
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v5, 0x0

    if-lt v0, v1, :cond_c

    .line 390
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v0

    move v3, v5

    :goto_4
    if-lt v3, v4, :cond_b

    goto :goto_6

    .line 391
    :cond_b
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/Dimension;

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visit(Lorg/eclipse/jdt/core/dom/Dimension;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    move v0, v5

    :goto_5
    if-lt v0, v4, :cond_14

    .line 392
    :goto_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const-string v3, ", "

    const-string v4, " throws "

    if-ge v0, v1, :cond_f

    .line 393
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->thrownExceptions(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 394
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->thrownExceptions(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    .line 396
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 397
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Name;

    .line 398
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 399
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 400
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 401
    :cond_f
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 402
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    .line 404
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 405
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    .line 406
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 408
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 409
    :cond_12
    :goto_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    if-nez v0, :cond_13

    .line 410
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 411
    :cond_13
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :goto_a
    return v5

    .line 412
    :cond_14
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v6, "[]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 413
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    .line 414
    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 415
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 416
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodInvocation;)Z
    .locals 3

    .line 417
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 419
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, ","

    if-lt v0, v1, :cond_3

    .line 421
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 422
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 425
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    .line 426
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 427
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 429
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 430
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 432
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 433
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Expression;

    .line 434
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 435
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodRef;)Z
    .locals 2

    .line 437
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRef;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 441
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRef;->parameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 443
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 444
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    .line 445
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 446
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodRefParameter;)Z
    .locals 2

    .line 448
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 449
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 450
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->isVarargs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Modifier;)Z
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->getKeyword()Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)Z
    .locals 2

    .line 456
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 458
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 459
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "module"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 464
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    .line 466
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->moduleStatements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    iget p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    .line 468
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 469
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ModuleDirective;

    .line 470
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ModuleModifier;)Z
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->getKeyword()Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NameQualifiedType;)Z
    .locals 2

    .line 478
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 479
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitTypeAnnotations(Lorg/eclipse/jdt/core/dom/AnnotatableType;)V

    .line 481
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NormalAnnotation;)Z
    .locals 2

    .line 482
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 484
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->values()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 487
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/MemberValuePair;

    .line 488
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 489
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NullLiteral;)Z
    .locals 1

    .line 491
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NumberLiteral;)Z
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NumberLiteral;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/OpensDirective;)Z
    .locals 1

    .line 493
    const-string v0, "opens"

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visit(Lorg/eclipse/jdt/core/dom/ModulePackageAccess;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)Z
    .locals 3

    .line 494
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 495
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 497
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 498
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Annotation;

    .line 499
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 500
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 501
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 502
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 504
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ParameterizedType;)Z
    .locals 2

    .line 505
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 506
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 509
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Type;

    .line 510
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 511
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;)Z
    .locals 2

    .line 513
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 515
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PostfixExpression;)Z
    .locals 1

    .line 516
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->getOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 517
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PrefixExpression;)Z
    .locals 2

    .line 518
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->getOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PrimitiveType;)Z
    .locals 1

    .line 520
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitTypeAnnotations(Lorg/eclipse/jdt/core/dom/AnnotatableType;)V

    .line 521
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->getPrimitiveTypeCode()Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ProvidesDirective;)Z
    .locals 2

    .line 522
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 523
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "provides"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 526
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->implementations()Ljava/util/List;

    move-result-object p1

    const-string v0, "with"

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printTypes(Ljava/util/List;Ljava/lang/String;)V

    .line 527
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/QualifiedName;)Z
    .locals 2

    .line 528
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 529
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/QualifiedType;)Z
    .locals 2

    .line 531
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedType;->getQualifier()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 532
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitTypeAnnotations(Lorg/eclipse/jdt/core/dom/AnnotatableType;)V

    .line 534
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/RequiresDirective;)Z
    .locals 2

    .line 535
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 536
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "requires"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 539
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 540
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ReturnStatement;)Z
    .locals 2

    .line 541
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 542
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ReturnStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ReturnStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 546
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SimpleName;)Z
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SimpleType;)Z
    .locals 0

    .line 548
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitTypeAnnotations(Lorg/eclipse/jdt/core/dom/AnnotatableType;)V

    .line 549
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;)Z
    .locals 2

    .line 550
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 552
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 554
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;)Z
    .locals 5

    .line 555
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 556
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 557
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getModifiers()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(I)V

    .line 558
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 559
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 560
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 561
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v1, :cond_4

    .line 562
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-lt v0, v2, :cond_3

    .line 564
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations()Ljava/util/List;

    move-result-object v0

    .line 565
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 566
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 567
    :cond_2
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitAnnotationsList(Ljava/util/List;)V

    .line 568
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 571
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v0

    .line 572
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_6

    .line 573
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v1

    move v2, v3

    :goto_0
    if-lt v2, v0, :cond_5

    goto :goto_2

    .line 574
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/Dimension;

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visit(Lorg/eclipse/jdt/core/dom/Dimension;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move v1, v3

    :goto_1
    if-lt v1, v0, :cond_8

    .line 575
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 576
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_7
    return v3

    .line 578
    :cond_8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v4, "[]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/StringLiteral;)Z
    .locals 1

    .line 579
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StringLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;)Z
    .locals 3

    .line 580
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 581
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 583
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, ","

    if-lt v0, v1, :cond_3

    .line 585
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 586
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 588
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 589
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    .line 590
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 591
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 593
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "super("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 595
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ");\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 596
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Expression;

    .line 597
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 598
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 599
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperFieldAccess;)Z
    .locals 2

    .line 600
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 602
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "super."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;)Z
    .locals 3

    .line 605
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 607
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "super."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, ","

    if-lt v0, v1, :cond_3

    .line 610
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 611
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 613
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 614
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    .line 615
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 616
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 618
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 619
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 621
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 622
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Expression;

    .line 623
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 624
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 625
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperMethodReference;)Z
    .locals 2

    .line 626
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 628
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 629
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "super"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitReferenceTypeArguments(Ljava/util/List;)V

    .line 631
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchCase;)Z
    .locals 5

    .line 632
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0xc

    const-string v2, "case "

    if-lt v0, v1, :cond_5

    .line 633
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isDefault()Z

    move-result v0

    const-string v1, ":"

    const-string v3, " ->"

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isSwitchLabeledRule()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 636
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->expressions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 638
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Expression;

    .line 639
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 640
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, ", "

    goto :goto_1

    .line 641
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isSwitchLabeledRule()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v3

    goto :goto_1

    :cond_4
    move-object v4, v1

    .line 642
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 643
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 644
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "default :\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 645
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 646
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->getSwitchExpression(Lorg/eclipse/jdt/core/dom/SwitchCase;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 647
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ":\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 648
    :goto_2
    iget p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchExpression;)Z
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitSwitchNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchStatement;)Z
    .locals 0

    .line 650
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitSwitchNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SynchronizedStatement;)Z
    .locals 2

    .line 651
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "synchronized ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 653
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TagElement;)Z
    .locals 9

    .line 655
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->isNested()Z

    move-result v0

    const-string v1, "\n * "

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 657
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 658
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 660
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 661
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->isNested()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 662
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    return v3

    .line 663
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 664
    instance-of v7, v6, Lorg/eclipse/jdt/core/dom/TextElement;

    if-eqz v7, :cond_4

    .line 665
    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/core/dom/TextElement;

    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/TextElement;->getText()Ljava/lang/String;

    move-result-object v7

    .line 666
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    move v7, v3

    :goto_3
    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    .line 667
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-eqz v0, :cond_6

    if-nez v7, :cond_6

    .line 668
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    :cond_6
    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    if-nez v7, :cond_7

    .line 670
    instance-of v0, v6, Lorg/eclipse/jdt/core/dom/TagElement;

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    move v5, v7

    goto :goto_2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TextElement;)Z
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TextElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ThisExpression;)Z
    .locals 1

    .line 672
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ThisExpression;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ThisExpression;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 674
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "this"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ThrowStatement;)Z
    .locals 2

    .line 676
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 677
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "throw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ThrowStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 679
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TryStatement;)Z
    .locals 3

    .line 680
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 681
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "try "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 683
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->resources()Ljava/util/List;

    move-result-object v0

    .line 684
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 685
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 686
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 687
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 688
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Expression;

    .line 689
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 690
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 692
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 693
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->catchClauses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 695
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->getFinally()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 696
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " finally "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->getFinally()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 698
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/CatchClause;

    .line 699
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z
    .locals 7

    .line 700
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 702
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 703
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(I)V

    .line 704
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 705
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 706
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "interface "

    goto :goto_0

    :cond_3
    const-string v3, "class "

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 708
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-lt v0, v2, :cond_6

    .line 709
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 710
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 712
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 713
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/TypeParameter;

    .line 714
    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 715
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 716
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 717
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 718
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const-string v4, ", "

    const-string v5, "implements "

    const-string v6, "extends "

    if-ne v0, v1, :cond_b

    .line 719
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->getSuperclass(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 720
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 721
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->getSuperclass(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 722
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 723
    :cond_7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->superInterfaces(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 724
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v6

    goto :goto_3

    :cond_8
    move-object v1, v5

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 725
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->superInterfaces(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 726
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 727
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Name;

    .line 728
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 729
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 730
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 731
    :cond_b
    :goto_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-lt v0, v2, :cond_10

    .line 732
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclassType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 733
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclassType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 735
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 736
    :cond_c
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 737
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v5, v6

    :cond_d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    .line 739
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 740
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    .line 741
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 742
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 743
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 744
    :cond_10
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    .line 746
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 747
    iget p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->indent:I

    .line 748
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 749
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 750
    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    .line 751
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_8
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;)Z
    .locals 2

    .line 752
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 753
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->getTypeDeclaration(Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;)Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 754
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 755
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeLiteral;)Z
    .locals 1

    .line 756
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeLiteral;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 757
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeMethodReference;)Z
    .locals 1

    .line 758
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 759
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitReferenceTypeArguments(Ljava/util/List;)V

    .line 760
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeParameter;)Z
    .locals 2

    .line 761
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 762
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 763
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 764
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->typeBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 765
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->typeBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 767
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Type;

    .line 768
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 769
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/UnionType;)Z
    .locals 2

    .line 771
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/UnionType;->types()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 772
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Type;

    .line 773
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 774
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/UsesDirective;)Z
    .locals 2

    .line 776
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 777
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "uses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 779
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/UsesDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 780
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;)Z
    .locals 2

    .line 781
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 782
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->getModifiers()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(I)V

    .line 783
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 784
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 785
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 786
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 788
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    .line 789
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 790
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Z
    .locals 5

    .line 792
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 793
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v0

    .line 794
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 795
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v1

    move v2, v3

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_2

    .line 796
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/Dimension;

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visit(Lorg/eclipse/jdt/core/dom/Dimension;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-lt v1, v0, :cond_3

    .line 797
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 798
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_2
    return v3

    .line 800
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v4, "[]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Z
    .locals 2

    .line 801
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 802
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 803
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->getModifiers()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(I)V

    .line 804
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 805
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printModifiers(Ljava/util/List;)V

    .line 806
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 807
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 809
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 810
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    .line 811
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 812
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/WhileStatement;)Z
    .locals 2

    .line 814
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->printIndent()V

    .line 815
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "while ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 817
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/WildcardType;)Z
    .locals 2

    .line 819
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->visitTypeAnnotations(Lorg/eclipse/jdt/core/dom/AnnotatableType;)V

    .line 820
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 821
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WildcardType;->getBound()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 822
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WildcardType;->isUpperBound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 823
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " extends "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 824
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " super "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    :goto_0
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

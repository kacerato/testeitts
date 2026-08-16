.class public abstract Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/visitor/GenericVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
        "Ljava/util/List<",
        "TR;>;TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;Ljava/lang/Object;Lcom/github/javaparser/ast/Node;)Ljava/util/stream/Stream;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->lambda$visit$0(Ljava/lang/Object;Lcom/github/javaparser/ast/Node;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$visit$0(Ljava/lang/Object;Lcom/github/javaparser/ast/Node;)Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "v"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;->visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/ArrayCreationLevel;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 156
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 279
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/PackageDeclaration;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 285
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 287
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 290
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 457
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Modifier;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 899
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 901
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 826
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lc0/Z0;

    invoke-direct {v0}, Lc0/Z0;-><init>()V

    .line 827
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lc0/a1;

    invoke-direct {v0, p0, p2}, Lc0/a1;-><init>(Lcom/github/javaparser/ast/visitor/GenericListVisitorAdapter;Ljava/lang/Object;)V

    .line 828
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 829
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/PackageDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 634
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 635
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 636
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 637
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 639
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/AnnotationDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 113
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 128
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 245
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getPermittedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 249
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    .line 257
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    .line 259
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 261
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    .line 262
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 952
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 953
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 954
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 955
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 956
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 957
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 958
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 959
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 960
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 961
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 962
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 963
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 964
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 965
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    .line 966
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 304
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 305
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 309
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 312
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 314
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 315
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    .line 318
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 320
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    .line 321
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/EnumConstantDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 353
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 354
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 355
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 357
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 359
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 362
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/EnumDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 367
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 368
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 369
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 372
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 373
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 375
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 377
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    .line 378
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 410
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 412
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 414
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 415
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 417
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/InitializerDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 460
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 462
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 463
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 464
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 465
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 560
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 561
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 562
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 564
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 565
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 566
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 568
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 569
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 570
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 571
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 572
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    .line 573
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 574
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    .line 575
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_8

    .line 577
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 578
    :cond_8
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 579
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_9

    .line 580
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/Parameter;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 641
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 642
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 643
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 644
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 645
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 646
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 647
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 648
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 649
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 650
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 651
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 652
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 653
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/ReceiverParameter;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 884
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 885
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 886
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 887
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 888
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 889
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 890
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 891
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/RecordDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 931
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 932
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 933
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 934
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 935
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 936
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 937
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 938
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 939
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 940
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 941
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 942
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 943
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 944
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    .line 945
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 946
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    .line 947
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 948
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 949
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    .line 950
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 792
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 793
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 794
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 795
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 796
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 797
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 798
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 799
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/comments/BlockComment;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 199
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/comments/JavadocComment;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 492
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/comments/LineComment;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 512
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/ArrayAccessExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 136
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/ArrayCreationExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 147
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 162
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/AssignExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 182
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 187
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/BinaryExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getRight()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 195
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 209
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/CastExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 221
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 224
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/CharLiteralExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 236
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/ClassExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ClassExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 242
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/ConditionalExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 295
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 297
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 300
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 340
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/EnclosedExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 347
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 350
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/FieldAccessExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 399
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 401
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 402
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 404
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 405
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 406
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 407
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/InstanceOfExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 468
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 469
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/PatternExpr;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 471
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 472
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 473
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 474
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 475
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 476
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 480
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/LambdaExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 504
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 505
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 506
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 507
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 508
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/LongLiteralExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 528
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 530
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 531
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 532
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 534
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/MemberValuePair;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 537
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 538
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 539
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 540
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 541
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 542
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/MethodCallExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 545
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 546
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 547
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 548
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 550
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 551
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 552
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 553
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 554
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 555
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 556
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/MethodReferenceExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 583
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 584
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 586
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 587
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 589
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/Name;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 597
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 599
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 600
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 602
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/NameExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 591
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 592
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 595
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 605
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 606
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 607
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 608
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 609
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 610
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/NullLiteralExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 614
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/ObjectCreationExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 618
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 619
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 620
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 623
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 624
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 625
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 626
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 627
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 628
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 629
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 630
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 631
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/RecordPatternExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 968
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 969
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 970
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getPatternList()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 971
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 972
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 973
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 974
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 975
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 976
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 670
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 673
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 674
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 675
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 676
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 677
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 678
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/StringLiteralExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 682
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/SuperExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 684
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 686
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 687
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 689
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/SwitchExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 903
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 904
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 905
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 906
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 907
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 908
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 909
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 917
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 919
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/ThisExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 720
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 721
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 723
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/TypeExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypeExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 745
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 746
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 748
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/TypePatternExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 921
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 922
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 923
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 924
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 925
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/PatternExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 926
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 927
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 928
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 929
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/UnaryExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 761
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 762
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 764
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 781
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 782
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 783
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 784
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 785
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 786
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 787
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 788
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/modules/ModuleDeclaration;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 831
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 832
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 833
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 834
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 835
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 836
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 837
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 838
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 839
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/modules/ModuleExportsDirective;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 840
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 841
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 842
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 843
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 844
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 845
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 846
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 847
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/modules/ModuleOpensDirective;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 850
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 851
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 852
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 853
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 854
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 855
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 858
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 859
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 860
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 861
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 863
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 866
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 867
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 868
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 869
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 870
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 871
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/modules/ModuleUsesDirective;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 873
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 874
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 875
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 877
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/AssertStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 176
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 179
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 205
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/BreakStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 216
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/CatchClause;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getParameter()Lcom/github/javaparser/ast/body/Parameter;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 232
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/ContinueStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 325
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 328
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/DoStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 333
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 336
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/EmptyStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 344
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 381
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 384
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 387
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 390
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/ExpressionStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 393
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 396
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/ForEachStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 433
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 434
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 435
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 436
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 437
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 438
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 440
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/ForStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 420
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 421
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 423
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 425
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 426
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 427
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 428
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 429
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 430
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/IfStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 443
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 444
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/stmt/Statement;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 446
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 448
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 451
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/LabeledStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 495
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 497
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 498
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 500
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 515
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 516
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 518
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;->getRecordDeclaration()Lcom/github/javaparser/ast/body/RecordDeclaration;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 521
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 522
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 524
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/ReturnStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 663
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 664
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 666
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/SwitchEntry;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 691
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 693
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 694
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 695
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 696
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 697
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 698
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 699
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 700
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/SwitchStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 702
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 703
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 704
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 705
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 706
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 707
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 708
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/SynchronizedStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 711
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 712
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 713
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 714
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 715
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 716
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/ThrowStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 726
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 727
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 729
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/TryStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 732
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 733
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 735
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 736
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 737
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 738
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 739
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 740
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 741
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 742
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/UnparsableStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 879
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 881
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/WhileStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 808
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 809
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 810
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 811
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 812
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 813
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/YieldStmt;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 911
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 912
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 913
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 915
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/ArrayType;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 170
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 265
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 271
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 276
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/IntersectionType;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/IntersectionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 483
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 485
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 486
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 488
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/PrimitiveType;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 655
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 656
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 657
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 659
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/TypeParameter;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 751
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 752
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 753
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 754
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 755
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 756
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 757
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 758
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/UnionType;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 766
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/UnionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 767
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 768
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 769
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 770
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 771
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 772
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/UnknownType;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 774
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 775
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 776
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 778
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/VarType;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 893
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 894
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 895
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 896
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 897
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/VoidType;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 802
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 803
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 805
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/WildcardType;",
            "TA;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 817
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 818
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 820
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 821
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 822
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 823
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 824
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 825
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

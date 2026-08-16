.class public abstract Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/visitor/VoidVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
        "TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V
    .locals 0
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
            "Lcom/github/javaparser/ast/Node;",
            "TA;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public defaultAction(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)V
    .locals 0
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
            "TA;)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

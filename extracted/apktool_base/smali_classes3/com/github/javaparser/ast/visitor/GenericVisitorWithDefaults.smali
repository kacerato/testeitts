.class public abstract Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;
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
        "TR;TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public defaultAction(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
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
            "TA;)TR;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/visitor/GenericVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
        "Ljava/lang/Boolean;",
        "Lcom/github/javaparser/ast/visitor/Visitable;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON:Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->SINGLETON:Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->SINGLETON:Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;

    invoke-interface {p0, v0, p1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/CompilationUnit;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 102
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 184
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/Modifier;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 195
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 185
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 103
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 110
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 107
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 201
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 114
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 109
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 108
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 112
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 117
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 115
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 116
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 193
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 200
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 113
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/BlockComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 106
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/JavadocComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 118
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/LineComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 105
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 128
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 129
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 130
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/AssignExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 131
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 132
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 144
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CastExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 133
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 142
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 135
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 143
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 136
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 137
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 138
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 140
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 181
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 141
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 155
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 158
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 146
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 182
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 149
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NameExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 147
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 157
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 145
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 148
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 202
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 150
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 156
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 139
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SuperExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 152
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 196
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 198
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ThisExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 151
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypeExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 183
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 199
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 153
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 154
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 186
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 188
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 191
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 189
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 187
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 190
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 162
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 163
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 169
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/CatchClause;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 180
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 173
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/DoStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 174
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 165
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 159
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 166
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 175
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 176
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/IfStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 171
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 164
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 161
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 170
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 168
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 167
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 178
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 177
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 179
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 192
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 172
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 197
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/ArrayType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 119
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/IntersectionType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/PrimitiveType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 120
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/TypeParameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 104
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 124
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnknownType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 127
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 194
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/VoidType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 125
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/WildcardType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 126
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/CompilationUnit;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/Modifier;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/comments/BlockComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/comments/JavadocComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/comments/LineComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/AssignExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/CastExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/NameExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SuperExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ThisExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/TypeExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/CatchClause;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/DoStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/IfStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/ArrayType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/IntersectionType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/PrimitiveType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/TypeParameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/UnknownType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/VoidType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/ObjectIdentityEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/WildcardType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

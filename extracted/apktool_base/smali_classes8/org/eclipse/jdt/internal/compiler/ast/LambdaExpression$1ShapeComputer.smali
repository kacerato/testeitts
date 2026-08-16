.class Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ShapeComputer;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->analyzeShape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShapeComputer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ShapeComputer;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ShapeComputer;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    .line 6
    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    .line 7
    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsValue:Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ShapeComputer;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    .line 9
    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    .line 10
    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsVoid:Z

    :goto_0
    return p2
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

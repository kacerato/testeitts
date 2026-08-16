.class Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/Statement;->breaksOut([C)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field breaksOut:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field private final synthetic val$label:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->val$label:[C

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public breaksOut()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->breaksOut:Z

    return v0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->val$label:[C

    if-eqz p2, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->breaksOut:Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/DoStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->val$label:[C

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->val$label:[C

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->val$label:[C

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->val$label:[C

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->val$label:[C

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->val$label:[C

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->val$label:[C

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->val$label:[C

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$1;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->shouldGenerateSecretReceiverVariable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field accessesnonFinalOuterLocals:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public accessesnonFinalOuterLocals()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$1;->accessesnonFinalOuterLocals:Z

    return v0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->getName()[[C

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getBinding([[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isEffectivelyFinal()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$1;->accessesnonFinalOuterLocals:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

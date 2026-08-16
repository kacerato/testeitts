.class Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalTypeSubstitutor"
.end annotation


# instance fields
.field localTypes2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;->localTypes2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingLambdaScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;->localTypes2:Ljava/util/Map;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->transferConstantPoolNameTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v0

    :cond_0
    return-object p2

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

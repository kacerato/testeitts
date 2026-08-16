.class Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$PolyScanner;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckStuckPolicy"
.end annotation


# instance fields
.field depVars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field pt:Lorg/openjdk/tools/javac/code/Type;

.field stuckVars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$PolyScanner;-><init>()V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->stuckVars:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->depVars:Ljava/util/Set;

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {p1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object p1, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->stuckVars:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {p1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->stuckVars:Ljava/util/Set;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public depVars()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->depVars:Ljava/util/Set;

    return-object v0
.end method

.method public isStuck()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->stuckVars:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public scanLambdaBody(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    :try_start_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    throw p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy$1;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy$1;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :goto_0
    return-void
.end method

.method public stuckVars()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->stuckVars:Ljava/util/Set;

    return-object v0
.end method

.method public typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->stuckVars:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferenceVars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->stuckVars:Ljava/util/Set;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->isFunctionalInterface(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeVarsIn(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;->IMPLICIT:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->stuckVars:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->depVars:Ljava/util/Set;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeVarsIn(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->scanLambdaBody(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferenceVars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->stuckVars:Ljava/util/Set;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->isFunctionalInterface(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeVarsIn(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getOverloadKind()Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    move-result-object p1

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;->OVERLOADED:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->stuckVars:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->depVars:Ljava/util/Set;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeVarsIn(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.class Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;
.super Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MostSpecificCheckContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;
    }
.end annotation


# instance fields
.field actual:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;ZLorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->actual:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->compatibleBySubtyping(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->unrelatedFunctionalInterfaces(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->functionalInterfaceMostSpecific(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p0

    return p0
.end method

.method private compatibleBySubtyping(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->strict:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->unboxedType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSubtypeNoCapture(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method private functionalInterfaceMostSpecific(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 12

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    move-object v6, v0

    check-cast v6, Lorg/openjdk/tools/javac/code/Type$ForAll;

    move-object v7, p1

    check-cast v7, Lorg/openjdk/tools/javac/code/Type$ForAll;

    invoke-virtual {v4, v6, v7}, Lorg/openjdk/tools/javac/code/Types;->hasSameBounds(Lorg/openjdk/tools/javac/code/Type$ForAll;Lorg/openjdk/tools/javac/code/Type$ForAll;)Z

    move-result v4

    if-nez v4, :cond_0

    return v5

    :cond_0
    move-object v4, v1

    move-object v6, v3

    :goto_0
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v7, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v8, v8, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v8, v8, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v9, v6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    invoke-virtual {v8, v9, v3, v1}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    invoke-virtual {v7, v1}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v9

    if-eqz v9, :cond_1

    return v5

    :cond_1
    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v7

    if-nez v7, :cond_2

    return v5

    :cond_2
    iget-object v4, v4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    :goto_1
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v7, Lorg/openjdk/tools/javac/code/Type;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v8, v8, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v8, v8, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v9, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v8, v9, v2, v1}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v10, v6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v10, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v9, v10, v3, v1}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    invoke-virtual {v7, v1}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v10

    if-eqz v10, :cond_5

    return v5

    :cond_5
    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v10, v10, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v10, v10, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v11

    invoke-virtual {v11, v9}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v7

    if-nez v7, :cond_6

    return v5

    :cond_6
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v7, v7, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v7, v7, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v7

    if-nez v7, :cond_7

    return v5

    :cond_7
    iget-object v4, v4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {v0, p2, v3, v1}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v5

    :cond_a
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean p1, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    return p1

    :cond_b
    :goto_2
    return v5
.end method

.method private unrelatedFunctionalInterfaces(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->isFunctionalInterface(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->isFunctionalInterface(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->unrelatedInterfaces(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private unrelatedInterfaces(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->unrelatedInterfaces(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->unrelatedInterfaces(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, p1, v3}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-boolean p3, p3, Lorg/openjdk/tools/javac/comp/Resolve;->allowFunctionalInterfaceMostSpecific:Z

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->unrelatedFunctionalInterfaces(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->actual:Lorg/openjdk/tools/javac/code/Type;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object p3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->actual:Lorg/openjdk/tools/javac/code/Type;

    check-cast p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->speculativeTree(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->stuckTree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eq p3, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->functionalInterfaceMostSpecific(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->compatibleBySubtyping(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

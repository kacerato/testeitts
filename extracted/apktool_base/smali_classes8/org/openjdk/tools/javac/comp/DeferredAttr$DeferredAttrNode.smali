.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeferredAttrNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;
    }
.end annotation


# instance fields
.field deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

.field dt:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

.field resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->dt:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    return-void
.end method


# virtual methods
.method public process(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Z
    .locals 6

    sget-object v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$6;->$SwitchMap$com$sun$tools$javac$comp$DeferredAttr$AttrMode:[I

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Bad mode"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;->isStuck()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->dt:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->dummyStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    new-instance v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;

    invoke-direct {v3, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;)V

    invoke-static {p1, v0, v2, v3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->access$000(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;)Lorg/openjdk/tools/javac/code/Type;

    return v1

    :cond_2
    const-string v0, "Cannot get here"

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;->isStuck()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->parent:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->emptyDeferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    if-eq v0, v2, :cond_3

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;->stuckVars()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->parent:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->dt:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    new-instance v4, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$1;

    iget-object v5, v3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-direct {v4, p0, v5, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$1;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)V

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->dup(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object p1

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    invoke-virtual {v0, v2, p1, v3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->addDeferredAttrNode(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->dt:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->stuckType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->insideOverloadPhase()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v2, "attribution shouldn\'t be happening here"

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->dup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->dt:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->dummyStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->basicCompleter:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;

    invoke-static {v0, p1, v3, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->access$000(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;)Lorg/openjdk/tools/javac/code/Type;

    return v1
.end method

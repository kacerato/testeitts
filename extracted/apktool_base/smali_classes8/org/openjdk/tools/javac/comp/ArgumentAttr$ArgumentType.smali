.class abstract Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/ArgumentAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ArgumentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
        ">",
        "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;",
        "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;"
    }
.end annotation


# instance fields
.field speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field speculativeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;TT;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$000(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/DeferredAttr;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)V

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTypes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final complete(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$000(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/DeferredAttr;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->basicCompleter:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;->complete(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->overloadCheck(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_1
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTypes:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSpeculative:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->argumentTypeCache:Ljava/util/Map;

    new-instance v2, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$000(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/DeferredAttr;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->basicCompleter:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;->complete(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public final completer()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;
    .locals 0

    return-object p0
.end method

.method public abstract dup(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract overloadCheck(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;
.end method

.method public speculativeTree(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->pertinentToApplicability:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->speculativeTree(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public speculativeType(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->pertinentToApplicability:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v2

    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    if-ne v3, p2, :cond_0

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->msym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_1
    sget-object p1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    return-object p1

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->speculativeType(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

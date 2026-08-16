.class public Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;
.super Lorg/openjdk/tools/javac/code/Type;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeferredType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;
    }
.end annotation


# instance fields
.field env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

.field pertinentToApplicability:Z

.field speculativeCache:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

.field public tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    const/4 v0, 0x0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeMetadata;->EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/code/Type;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->pertinentToApplicability:Z

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/comp/Attr;->copyEnv(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->env:Lorg/openjdk/tools/javac/comp/Env;

    new-instance p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->speculativeCache:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->check(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method private check(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    .line 8
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    .line 9
    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->emptyDeferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 11
    invoke-interface {p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;->isStuck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->pertinentToApplicability:Z

    .line 13
    invoke-virtual {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->addDeferredAttrNode(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;)V

    .line 14
    sget-object p1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    return-object p1

    .line 15
    :cond_1
    :try_start_0
    invoke-interface {p3, p0, p1, v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;->complete(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p2, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    .line 17
    throw p1
.end method


# virtual methods
.method public check(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    .line 3
    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->insideOverloadPhase()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {v0, v1, p1, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)V

    goto :goto_2

    .line 5
    :cond_2
    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$OverloadStuckPolicy;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {v0, v1, p1, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$OverloadStuckPolicy;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)V

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->dummyStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    .line 7
    :goto_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->completer()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->check(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    move-result-object p1

    return-object p1
.end method

.method public cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot add metadata to a deferred type"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public completer()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->basicCompleter:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/code/TypeTag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object v0
.end method

.method public speculativeTree(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->speculativeCache:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->msym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;->get(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->stuckTree:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_0
    return-object p1
.end method

.method public speculativeType(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->speculativeCache:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;->get(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DeferredType"

    return-object v0
.end method

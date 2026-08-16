.class Lorg/openjdk/tools/javac/comp/DeferredAttr$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$4;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$6;->$SwitchMap$com$sun$tools$javac$comp$DeferredAttr$AttrMode:[I

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p3, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-eqz p3, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$4;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p3, v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p3, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-eqz p3, :cond_3

    sget-object v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-ne p3, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$4;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p3, v0, v1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p3

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->speculativeCache:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;

    invoke-virtual {p1, p3, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;->put(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)V

    iget-object p1, p3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

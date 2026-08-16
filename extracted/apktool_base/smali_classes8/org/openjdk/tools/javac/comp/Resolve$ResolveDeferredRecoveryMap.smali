.class Lorg/openjdk/tools/javac/comp/Resolve$ResolveDeferredRecoveryMap;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolveDeferredRecoveryMap"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ResolveDeferredRecoveryMap;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-void
.end method


# virtual methods
.method public typeOf(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;->typeOf(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

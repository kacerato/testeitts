.class Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;
.super Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMemberType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/ArgumentAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolvedMethodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMemberType<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    .line 3
    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMemberType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dup(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;->dup(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;

    move-result-object p1

    return-object p1
.end method

.method public dup(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v6, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTypes:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Ljava/util/Map;)V

    return-object v6
.end method

.method public methodType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public resultInfo(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 0

    return-object p1
.end method

.class Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;
.super Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/ArgumentAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParensType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCParens;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCParens;",
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

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCParens;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    .line 3
    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dup(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;->dup(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;

    move-result-object p1

    return-object p1
.end method

.method public dup(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCParens;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCParens;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v6, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTypes:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;Ljava/util/Map;)V

    return-object v6
.end method

.method public overloadCheck(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->checkSpeculative(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

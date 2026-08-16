.class abstract Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMemberType;
.super Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/ArgumentAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ResolvedMemberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
        ">",
        "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
        "TE;>;"
    }
.end annotation


# instance fields
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
            ">;TE;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMemberType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public abstract methodType()Lorg/openjdk/tools/javac/code/Type;
.end method

.method public overloadCheck(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMemberType;->methodType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMemberType;->resultInfo(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object p1

    if-eqz p2, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPartial()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->check(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public abstract resultInfo(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
.end method

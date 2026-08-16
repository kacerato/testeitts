.class Lorg/openjdk/tools/javac/comp/DeferredAttr$3;
.super Lorg/openjdk/tools/javac/code/Types$TypeMapping;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;-><init>(Lorg/openjdk/tools/javac/util/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Types$TypeMapping<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$3;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$TypeMapping;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$3;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$3;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    .line 3
    sget-object p2, Lorg/openjdk/tools/javac/code/TypeTag;->DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    .line 5
    new-instance p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$3;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->treeCopier:Lorg/openjdk/tools/javac/tree/TreeCopier;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {p2, v0, v1, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)V

    return-object p2

    :cond_0
    return-object p1
.end method

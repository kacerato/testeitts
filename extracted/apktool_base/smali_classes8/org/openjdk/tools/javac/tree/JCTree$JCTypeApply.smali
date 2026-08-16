.class public Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/ParameterizedTypeTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCTypeApply"
.end annotation


# instance fields
.field public arguments:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/tree/TreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitParameterizedType(Lorg/openjdk/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V

    return-void
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEAPPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public bridge synthetic getType()Lorg/openjdk/source/tree/Tree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->getType()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

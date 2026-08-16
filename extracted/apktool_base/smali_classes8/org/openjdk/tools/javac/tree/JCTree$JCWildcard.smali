.class public Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/WildcardTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCWildcard"
.end annotation


# instance fields
.field public inner:Lorg/openjdk/tools/javac/tree/JCTree;

.field public kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;-><init>()V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->inner:Lorg/openjdk/tools/javac/tree/JCTree;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitWildcard(Lorg/openjdk/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitWildcard(Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;)V

    return-void
.end method

.method public bridge synthetic getBound()Lorg/openjdk/source/tree/Tree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->getBound()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getBound()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->inner:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$1;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->SUPER_WILDCARD:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wildcard bound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0

    :cond_2
    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->WILDCARD:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

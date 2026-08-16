.class public Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/LiteralTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCLiteral"
.end annotation


# instance fields
.field public typetag:Lorg/openjdk/tools/javac/code/TypeTag;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitLiteral(Lorg/openjdk/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitLiteral(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)V

    return-void
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/TypeTag;->getKindLiteral()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LITERAL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v1, v0

    if-ne v1, v0, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "bad value for char literal"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p0
.end method

.method public bridge synthetic setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    return-object p1
.end method

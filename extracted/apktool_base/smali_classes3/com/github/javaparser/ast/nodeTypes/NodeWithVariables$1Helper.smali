.class Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->calculateMaximumCommonType(Ljava/util/List;)Ljava/util/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Helper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;Lcom/github/javaparser/ast/type/Type;I)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;->toArrayLevel(Lcom/github/javaparser/ast/type/Type;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private toArrayLevel(Lcom/github/javaparser/ast/type/Type;I)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/Type;",
            "I)",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v0

    if-le p2, v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v0

    :goto_0
    if-le v0, p2, :cond_2

    instance-of v1, p1, Lcom/github/javaparser/ast/type/ArrayType;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, Lcom/github/javaparser/ast/type/ArrayType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

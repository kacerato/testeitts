.class public Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/PrimitiveTypeTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCPrimitiveTypeTree"
.end annotation


# instance fields
.field public typetag:Lorg/openjdk/tools/javac/code/TypeTag;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/TypeTag;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitPrimitiveType(Lorg/openjdk/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTypeIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V

    return-void
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->PRIMITIVE_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getPrimitiveTypeKind()Lorg/openjdk/javax/lang/model/type/TypeKind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/TypeTag;->getPrimitiveTypeKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEIDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

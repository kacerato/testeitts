.class public Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/AnnotatedTypeTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCAnnotatedType"
.end annotation


# instance fields
.field public annotations:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitAnnotatedType(Lorg/openjdk/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V

    return-void
.end method

.method public bridge synthetic getAnnotations()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->getAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public bridge synthetic getUnderlyingType()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->getUnderlyingType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

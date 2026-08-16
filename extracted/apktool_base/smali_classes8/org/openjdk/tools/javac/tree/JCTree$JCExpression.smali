.class public abstract Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
.super Lorg/openjdk/tools/javac/tree/JCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/ExpressionTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JCExpression"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree;-><init>()V

    return-void
.end method


# virtual methods
.method public isPoly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStandalone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setPos(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree;->setPos(I)Lorg/openjdk/tools/javac/tree/JCTree;

    return-object p0
.end method

.method public bridge synthetic setPos(I)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setPos(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;

    return-object p0
.end method

.method public bridge synthetic setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

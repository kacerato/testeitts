.class public abstract Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JCPolyExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;
    }
.end annotation


# instance fields
.field public polyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;-><init>()V

    return-void
.end method


# virtual methods
.method public isPoly()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;->polyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->POLY:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStandalone()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;->polyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->STANDALONE:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

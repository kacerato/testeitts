.class public Lorg/eclipse/jdt/internal/core/BinaryLambdaExpression;
.super Lorg/eclipse/jdt/internal/core/LambdaExpression;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;III)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/core/LambdaExpression;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIILorg/eclipse/jdt/internal/core/LambdaMethod;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/LambdaExpression;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIILorg/eclipse/jdt/internal/core/LambdaMethod;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/LambdaExpression;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V

    return-void
.end method


# virtual methods
.method public getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0

    return-object p0
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

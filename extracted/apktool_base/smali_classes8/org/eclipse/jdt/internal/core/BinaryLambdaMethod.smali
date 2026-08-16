.class public Lorg/eclipse/jdt/internal/core/BinaryLambdaMethod;
.super Lorg/eclipse/jdt/internal/core/LambdaMethod;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/eclipse/jdt/internal/core/LambdaMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;)V

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

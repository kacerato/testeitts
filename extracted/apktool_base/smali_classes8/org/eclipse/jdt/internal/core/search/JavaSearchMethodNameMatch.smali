.class public Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;
.super Lorg/eclipse/jdt/core/search/MethodNameMatch;
.source "SourceFile"


# instance fields
.field private accessibility:I

.field method:Lorg/eclipse/jdt/core/IMethod;

.field modifiers:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IMethod;I)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/search/MethodNameMatch;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;->accessibility:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;->method:Lorg/eclipse/jdt/core/IMethod;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;->modifiers:I

    return-void
.end method


# virtual methods
.method public getAccessibility()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;->accessibility:I

    return v0
.end method

.method public getMethod()Lorg/eclipse/jdt/core/IMethod;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;->method:Lorg/eclipse/jdt/core/IMethod;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;->modifiers:I

    return v0
.end method

.method public setAccessibility(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;->accessibility:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchMethodNameMatch;->method:Lorg/eclipse/jdt/core/IMethod;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

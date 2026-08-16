.class public final Lcom/android/tools/r8/internal/IW;
.super Lcom/android/tools/r8/internal/JW;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/references/MethodReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/MethodReference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/JW;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/IW;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/JW;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v2

    .line 6
    invoke-static {p1, v0, v1, v2}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/IW;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/IW;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/IW;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/IW;

    iget-object v0, p0, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    iget-object p1, p1, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/references/MethodReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getHolderClass()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->hashCode()I

    move-result v0

    return v0
.end method

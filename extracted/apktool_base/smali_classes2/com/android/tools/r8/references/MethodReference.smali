.class public final Lcom/android/tools/r8/references/MethodReference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic e:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/references/ClassReference;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/android/tools/r8/internal/hC;

.field private final d:Lcom/android/tools/r8/references/TypeReference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/references/TypeReference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/references/MethodReference;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/references/MethodReference;->a:Lcom/android/tools/r8/references/ClassReference;

    iput-object p2, p0, Lcom/android/tools/r8/references/MethodReference;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/references/MethodReference;->c:Lcom/android/tools/r8/internal/hC;

    iput-object p4, p0, Lcom/android/tools/r8/references/MethodReference;->d:Lcom/android/tools/r8/references/TypeReference;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/references/MethodReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/references/MethodReference;

    iget-object v1, p0, Lcom/android/tools/r8/references/MethodReference;->a:Lcom/android/tools/r8/references/ClassReference;

    iget-object v3, p1, Lcom/android/tools/r8/references/MethodReference;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/references/ClassReference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/references/MethodReference;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/references/MethodReference;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/references/MethodReference;->c:Lcom/android/tools/r8/internal/hC;

    iget-object v3, p1, Lcom/android/tools/r8/references/MethodReference;->c:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/hC;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/references/MethodReference;->d:Lcom/android/tools/r8/references/TypeReference;

    iget-object p1, p1, Lcom/android/tools/r8/references/MethodReference;->d:Lcom/android/tools/r8/references/TypeReference;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getFormalTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/references/TypeReference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/references/MethodReference;->c:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public getHolderClass()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/MethodReference;->a:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method

.method public getMethodDescriptor()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/position/a;

    invoke-direct {v1}, Lcom/android/tools/r8/position/a;-><init>()V

    sget-object v2, Lcom/android/tools/r8/internal/zq0$a;->b:Lcom/android/tools/r8/internal/zq0$a;

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Ljava/util/function/Function;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "V"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/references/TypeReference;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/MethodReference;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnType()Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/MethodReference;->d:Lcom/android/tools/r8/references/TypeReference;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/references/MethodReference;->a:Lcom/android/tools/r8/references/ClassReference;

    iget-object v1, p0, Lcom/android/tools/r8/references/MethodReference;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/references/MethodReference;->c:Lcom/android/tools/r8/internal/hC;

    iget-object v3, p0, Lcom/android/tools/r8/references/MethodReference;->d:Lcom/android/tools/r8/references/TypeReference;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toSourceString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/references/MethodReference;->d:Lcom/android/tools/r8/references/TypeReference;

    if-nez v1, :cond_0

    const-string v1, "void"

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/references/MethodReference;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-interface {v1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/references/MethodReference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/hs1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/hs1;-><init>()V

    sget-object v3, Lcom/android/tools/r8/internal/zq0$a;->b:Lcom/android/tools/r8/internal/zq0$a;

    const-string v4, ", "

    invoke-static {v4, v1, v2, v3}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Ljava/util/function/Function;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getMethodDescriptor()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

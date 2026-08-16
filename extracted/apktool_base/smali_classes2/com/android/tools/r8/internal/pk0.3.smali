.class public final Lcom/android/tools/r8/internal/pk0;
.super Lcom/android/tools/r8/internal/rk0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/references/MethodReference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/MethodReference;Ljava/util/OptionalInt;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/rk0;-><init>(Ljava/util/OptionalInt;)V

    sget-boolean p2, Lcom/android/tools/r8/internal/pk0;->e:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/pk0;->d:Lcom/android/tools/r8/references/MethodReference;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/pk0;
    .locals 0

    return-object p0
.end method

.method public final asKnown()Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;
    .locals 0

    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/retrace/RetracedMethodReference;

    sget-object v0, Lcom/android/tools/r8/internal/rk0;->c:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/pk0;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/pk0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rk0;->b:Ljava/util/OptionalInt;

    iget-object v3, p1, Lcom/android/tools/r8/internal/rk0;->b:Ljava/util/OptionalInt;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/pk0;->d:Lcom/android/tools/r8/references/MethodReference;

    iget-object p1, p1, Lcom/android/tools/r8/internal/pk0;->d:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/references/MethodReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getFormalTypes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pk0;->d:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/pk0;->d:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/lk0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/lk0;-><init>(ZLcom/android/tools/r8/references/ClassReference;)V

    return-object v1
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pk0;->d:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMethodReference()Lcom/android/tools/r8/references/MethodReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pk0;->d:Lcom/android/tools/r8/references/MethodReference;

    return-object v0
.end method

.method public final getReturnType()Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/pk0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pk0;->isVoid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/pk0;->d:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/pk0;->d:Lcom/android/tools/r8/references/MethodReference;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rk0;->b:Ljava/util/OptionalInt;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isVoid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pk0;->d:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class public final Lcom/android/tools/r8/internal/lk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedClassReference;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/references/ClassReference;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLcom/android/tools/r8/references/ClassReference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/lk0;->c:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/lk0;->b:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/lk0;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    check-cast p1, Lcom/android/tools/r8/internal/lk0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/references/ClassReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getBinaryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/ClassReference;->getBinaryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClassReference()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method

.method public final getDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRetracedType()Lcom/android/tools/r8/retrace/RetracedTypeReference;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    new-instance v1, Lcom/android/tools/r8/internal/uk0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/uk0;-><init>(Lcom/android/tools/r8/references/TypeReference;)V

    return-object v1
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/ClassReference;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isKnown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lk0;->b:Z

    return v0
.end method

.method public final isUnknown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lk0;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

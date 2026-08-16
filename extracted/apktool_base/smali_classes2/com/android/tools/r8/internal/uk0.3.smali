.class public final Lcom/android/tools/r8/internal/uk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedTypeReference;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/references/TypeReference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/TypeReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uk0;->a:Lcom/android/tools/r8/references/TypeReference;

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

    const-class v1, Lcom/android/tools/r8/internal/uk0;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/uk0;->a:Lcom/android/tools/r8/references/TypeReference;

    check-cast p1, Lcom/android/tools/r8/internal/uk0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/uk0;->a:Lcom/android/tools/r8/references/TypeReference;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/uk0;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uk0;->isVoid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/uk0;->a:Lcom/android/tools/r8/references/TypeReference;

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeReference()Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uk0;->a:Lcom/android/tools/r8/references/TypeReference;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uk0;->a:Lcom/android/tools/r8/references/TypeReference;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isVoid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uk0;->a:Lcom/android/tools/r8/references/TypeReference;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toArray(I)Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uk0;->a:Lcom/android/tools/r8/references/TypeReference;

    invoke-static {v0, p1}, Lcom/android/tools/r8/references/Reference;->array(Lcom/android/tools/r8/references/TypeReference;I)Lcom/android/tools/r8/references/ArrayReference;

    move-result-object p1

    return-object p1
.end method

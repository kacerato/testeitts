.class public final Lcom/android/tools/r8/references/ArrayReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/references/TypeReference;


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private final a:I

.field private final b:Lcom/android/tools/r8/references/TypeReference;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ILcom/android/tools/r8/references/TypeReference;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/references/ArrayReference;->d:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/references/ArrayReference;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/references/ArrayReference;->b:Lcom/android/tools/r8/references/TypeReference;

    iput-object p3, p0, Lcom/android/tools/r8/references/ArrayReference;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/references/TypeReference;I)Lcom/android/tools/r8/references/ArrayReference;
    .locals 5

    .line 6
    new-instance v0, Lcom/android/tools/r8/references/ArrayReference;

    .line 7
    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/Bl;->a:Lcom/android/tools/r8/internal/nC;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    const/16 v4, 0x5b

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-direct {v0, p1, p0, v1}, Lcom/android/tools/r8/references/ArrayReference;-><init>(ILcom/android/tools/r8/references/TypeReference;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/references/ArrayReference;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    if-lez v0, :cond_1

    .line 3
    new-instance v1, Lcom/android/tools/r8/references/ArrayReference;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcom/android/tools/r8/references/ArrayReference;-><init>(ILcom/android/tools/r8/references/TypeReference;Ljava/lang/String;)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array type descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asArray()Lcom/android/tools/r8/references/ArrayReference;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic asPrimitive()Lcom/android/tools/r8/references/PrimitiveReference;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/references/TypeReference;->asPrimitive()Lcom/android/tools/r8/references/PrimitiveReference;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/references/ArrayReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/references/ArrayReference;

    iget v1, p0, Lcom/android/tools/r8/references/ArrayReference;->a:I

    iget v3, p1, Lcom/android/tools/r8/references/ArrayReference;->a:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/references/ArrayReference;->b:Lcom/android/tools/r8/references/TypeReference;

    iget-object p1, p1, Lcom/android/tools/r8/references/ArrayReference;->b:Lcom/android/tools/r8/references/TypeReference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getBaseType()Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/ArrayReference;->b:Lcom/android/tools/r8/references/TypeReference;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/ArrayReference;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensions()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/references/ArrayReference;->a:I

    return v0
.end method

.method public getMemberType()Lcom/android/tools/r8/references/TypeReference;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/references/ArrayReference;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->arrayFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ArrayReference;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/references/ArrayReference;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/references/ArrayReference;->b:Lcom/android/tools/r8/references/TypeReference;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

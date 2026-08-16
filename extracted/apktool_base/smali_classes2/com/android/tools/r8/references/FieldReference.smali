.class public final Lcom/android/tools/r8/references/FieldReference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/references/ClassReference;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/android/tools/r8/references/TypeReference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/references/FieldReference;->d:Z

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
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/references/FieldReference;->a:Lcom/android/tools/r8/references/ClassReference;

    iput-object p2, p0, Lcom/android/tools/r8/references/FieldReference;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/references/FieldReference;->c:Lcom/android/tools/r8/references/TypeReference;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/references/FieldReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/references/FieldReference;

    iget-object v1, p0, Lcom/android/tools/r8/references/FieldReference;->a:Lcom/android/tools/r8/references/ClassReference;

    iget-object v3, p1, Lcom/android/tools/r8/references/FieldReference;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/references/ClassReference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/references/FieldReference;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/references/FieldReference;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/references/FieldReference;->c:Lcom/android/tools/r8/references/TypeReference;

    iget-object p1, p1, Lcom/android/tools/r8/references/FieldReference;->c:Lcom/android/tools/r8/references/TypeReference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/FieldReference;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldType()Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/FieldReference;->c:Lcom/android/tools/r8/references/TypeReference;

    return-object v0
.end method

.method public getHolderClass()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/FieldReference;->a:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/references/FieldReference;->a:Lcom/android/tools/r8/references/ClassReference;

    iget-object v1, p0, Lcom/android/tools/r8/references/FieldReference;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/references/FieldReference;->c:Lcom/android/tools/r8/references/TypeReference;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toSourceString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getFieldType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getFieldName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getFieldType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/references/TypeReference;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

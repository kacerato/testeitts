.class public final Lcom/android/tools/r8/internal/mk0;
.super Lcom/android/tools/r8/internal/ok0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;


# instance fields
.field public final b:Lcom/android/tools/r8/references/FieldReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/FieldReference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ok0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mk0;->b:Lcom/android/tools/r8/references/FieldReference;

    return-void
.end method


# virtual methods
.method public final asKnown()Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;
    .locals 0

    return-object p0
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

    const-class v1, Lcom/android/tools/r8/internal/mk0;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/mk0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/mk0;->b:Lcom/android/tools/r8/references/FieldReference;

    iget-object p1, p1, Lcom/android/tools/r8/internal/mk0;->b:Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/references/FieldReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getFieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mk0;->b:Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/FieldReference;->getFieldName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFieldReference()Lcom/android/tools/r8/references/FieldReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mk0;->b:Lcom/android/tools/r8/references/FieldReference;

    return-object v0
.end method

.method public final getFieldType()Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mk0;->b:Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/FieldReference;->getFieldType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    return-object v0
.end method

.method public final getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/mk0;->b:Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/lk0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/lk0;-><init>(ZLcom/android/tools/r8/references/ClassReference;)V

    return-object v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mk0;->b:Lcom/android/tools/r8/references/FieldReference;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

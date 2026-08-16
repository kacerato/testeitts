.class public final Lcom/android/tools/r8/internal/bw;
.super Lcom/android/tools/r8/internal/cw;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/references/FieldReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/FieldReference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cw;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bw;->a:Lcom/android/tools/r8/references/FieldReference;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/bw;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/cw;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/bw;->a:Lcom/android/tools/r8/references/FieldReference;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/references/FieldReference;->getFieldName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/bw;->a:Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v1}, Lcom/android/tools/r8/references/FieldReference;->getFieldType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/references/Reference;->field(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/FieldReference;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/bw;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/bw;-><init>(Lcom/android/tools/r8/references/FieldReference;)V

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

    const-class v1, Lcom/android/tools/r8/internal/bw;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/bw;

    iget-object v0, p0, Lcom/android/tools/r8/internal/bw;->a:Lcom/android/tools/r8/references/FieldReference;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bw;->a:Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/references/FieldReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getHolderClass()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bw;->a:Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bw;->a:Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/FieldReference;->getFieldName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bw;->a:Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/FieldReference;->hashCode()I

    move-result v0

    return v0
.end method

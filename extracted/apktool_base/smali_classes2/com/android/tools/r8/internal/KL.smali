.class public final synthetic Lcom/android/tools/r8/internal/KL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/tW;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[I

.field public final synthetic c:[I

.field public final synthetic d:[Ljava/lang/String;

.field public final synthetic e:[Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(I[I[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/KL;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/KL;->b:[I

    iput-object p3, p0, Lcom/android/tools/r8/internal/KL;->c:[I

    iput-object p4, p0, Lcom/android/tools/r8/internal/KL;->d:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/tools/r8/internal/KL;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/android/tools/r8/internal/KL;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/tools/r8/internal/KL;->g:Ljava/lang/String;

    iput p8, p0, Lcom/android/tools/r8/internal/KL;->h:I

    return-void
.end method


# virtual methods
.method public final synthetic annotationType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/android/tools/r8/internal/tW;

    return-object v0
.end method

.method public final synthetic bv()[I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->c:[I

    return-object v0
.end method

.method public final synthetic d1()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic d2()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/tW;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/tW;

    iget v0, p0, Lcom/android/tools/r8/internal/KL;->a:I

    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->k()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->b:[I

    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->mv()[I

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->c:[I

    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->bv()[I

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->d:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->d1()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->e:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->d2()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->f:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->xs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->g:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->pn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/KL;->h:I

    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->xi()I

    move-result p1

    if-eq v0, p1, :cond_8

    return v1

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/KL;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const v1, 0x18eb8e6c

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    const v2, -0x75bbc229

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    const v2, -0x7ac30aa3

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    const v2, -0x2e2c2247

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->e:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    const v2, -0x2e2c21c8

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x61e38c3f

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x20e29771

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/tools/r8/internal/KL;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    const v2, -0x7fff723f

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic k()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/KL;->a:I

    return v0
.end method

.method public final synthetic mv()[I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->b:[I

    return-object v0
.end method

.method public final synthetic pn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@kotlin.Metadata(kind="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/tools/r8/internal/KL;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", metadataVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bytecodeVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->e:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KL;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraInt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/KL;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic xi()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/KL;->h:I

    return v0
.end method

.method public final synthetic xs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KL;->f:Ljava/lang/String;

    return-object v0
.end method

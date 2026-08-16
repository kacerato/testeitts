.class public final Lcom/google/common/collect/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation build Lv2/b;
.end annotation


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/collect/P;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/P;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/P;->b:I

    return-void
.end method

.method public b(I)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/P;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/P;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/P;->b:I

    return v0
.end method

.method public d(I)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/P;->b:I

    iput p1, p0, Lcom/google/common/collect/P;->b:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/P;->b:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/P;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/P;

    iget p1, p1, Lcom/google/common/collect/P;->b:I

    iget v0, p0, Lcom/google/common/collect/P;->b:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/P;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/P;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

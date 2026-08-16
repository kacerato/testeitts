.class public final Lcom/google/common/collect/t2;
.super Lcom/google/common/collect/r1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r1<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field public static final l:[Ljava/lang/Object;

.field public static final m:Lcom/google/common/collect/t2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient g:[Ljava/lang/Object;
    .annotation build Lv2/d;
    .end annotation
.end field

.field public final transient h:I

.field public final transient i:[Ljava/lang/Object;
    .annotation build Lv2/d;
    .end annotation
.end field

.field public final transient j:I

.field public final transient k:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    sput-object v4, Lcom/google/common/collect/t2;->l:[Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/t2;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/t2;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/google/common/collect/t2;->m:Lcom/google/common/collect/t2;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/r1;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/t2;->g:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/t2;->h:I

    iput-object p3, p0, Lcom/google/common/collect/t2;->i:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/common/collect/t2;->j:I

    iput p5, p0, Lcom/google/common/collect/t2;->k:I

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/t2;->g:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/t2;->k:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/common/collect/t2;->k:I

    add-int/2addr p2, p1

    return p2
.end method

.method public c()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/t2;->g:[Ljava/lang/Object;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/t2;->i:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/google/common/collect/t2;->j:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/t2;->k:I

    return v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/t2;->h:I

    return v0
.end method

.method public i()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/t2;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/t2;->k:I

    return v0
.end method

.method public x()Lcom/google/common/collect/g1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t2;->g:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/t2;->k:I

    invoke-static {v0, v1}, Lcom/google/common/collect/g1;->l([Ljava/lang/Object;I)Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

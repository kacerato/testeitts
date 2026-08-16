.class public final Lcom/google/common/collect/v1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public final c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field public final d:[I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/K2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/K2<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/common/collect/K2;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/v1$b;->b:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/K2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/v1$b;->c:[Ljava/lang/Object;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/v1$b;->d:[I

    invoke-interface {p1}, Lcom/google/common/collect/K2;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/V1$a;

    iget-object v2, p0, Lcom/google/common/collect/v1$b;->c:[Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/common/collect/v1$b;->d:[I

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/v1$b;->c:[Ljava/lang/Object;

    array-length v0, v0

    new-instance v1, Lcom/google/common/collect/v1$a;

    iget-object v2, p0, Lcom/google/common/collect/v1$b;->b:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lcom/google/common/collect/v1$a;-><init>(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/v1$b;->c:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/google/common/collect/v1$b;->d:[I

    aget v4, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/google/common/collect/v1$a;->s(Ljava/lang/Object;I)Lcom/google/common/collect/v1$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/v1$a;->t()Lcom/google/common/collect/v1;

    move-result-object v0

    return-object v0
.end method

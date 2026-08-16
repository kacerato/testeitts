.class public Lcom/google/common/collect/K1$d;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/K1;->D()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/K1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/K1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/K1$d;->b:Lcom/google/common/collect/K1;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1$h;

    iget-object v1, p0, Lcom/google/common/collect/K1$d;->b:Lcom/google/common/collect/K1;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/K1$h;-><init>(Lcom/google/common/collect/K1;I)V

    new-instance p1, Lcom/google/common/collect/K1$d$a;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/common/collect/K1$d$a;-><init>(Lcom/google/common/collect/K1$d;Ljava/util/ListIterator;Lcom/google/common/collect/K1$h;)V

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/K1$d;->b:Lcom/google/common/collect/K1;

    invoke-static {v0}, Lcom/google/common/collect/K1;->u(Lcom/google/common/collect/K1;)I

    move-result v0

    return v0
.end method

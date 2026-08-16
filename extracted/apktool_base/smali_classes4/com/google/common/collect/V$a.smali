.class public Lcom/google/common/collect/V$a;
.super Lcom/google/common/collect/W1$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/V;->O0()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/W1$i<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/V;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/V;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/V$a;->b:Lcom/google/common/collect/V;

    invoke-direct {p0}, Lcom/google/common/collect/W1$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/V$a;->b:Lcom/google/common/collect/V;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/V$a;->b:Lcom/google/common/collect/V;

    invoke-virtual {v0}, Lcom/google/common/collect/V;->P0()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/V$a;->b:Lcom/google/common/collect/V;

    invoke-virtual {v0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

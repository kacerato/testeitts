.class public Lcom/google/common/collect/u$a;
.super Lcom/google/common/collect/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "Lcom/google/common/collect/S2$a<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/u;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/u$a;->d:Lcom/google/common/collect/u;

    invoke-direct {p0, p2}, Lcom/google/common/collect/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/u$a;->b(I)Lcom/google/common/collect/S2$a;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/google/common/collect/S2$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$a;->d:Lcom/google/common/collect/u;

    invoke-static {v0, p1}, Lcom/google/common/collect/u;->f(Lcom/google/common/collect/u;I)Lcom/google/common/collect/S2$a;

    move-result-object p1

    return-object p1
.end method

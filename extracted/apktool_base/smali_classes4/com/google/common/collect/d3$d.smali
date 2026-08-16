.class public Lcom/google/common/collect/d3$d;
.super Lcom/google/common/collect/p0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d3;->a(Ljava/lang/Object;)Lcom/google/common/collect/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/p0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/google/common/collect/d3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/d3;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d3$d;->d:Lcom/google/common/collect/d3;

    iput-object p2, p0, Lcom/google/common/collect/d3$d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/p0;-><init>()V

    return-void
.end method


# virtual methods
.method public M()Lcom/google/common/collect/e3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d3$e;

    iget-object v1, p0, Lcom/google/common/collect/d3$d;->d:Lcom/google/common/collect/d3;

    iget-object v2, p0, Lcom/google/common/collect/d3$d;->c:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/d3$e;-><init>(Lcom/google/common/collect/d3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/d3$d;->M()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

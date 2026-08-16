.class public Lcom/google/common/collect/d3$b;
.super Lcom/google/common/collect/p0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d3;->f(Ljava/lang/Object;)Lcom/google/common/collect/p0;
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

    iput-object p1, p0, Lcom/google/common/collect/d3$b;->d:Lcom/google/common/collect/d3;

    iput-object p2, p0, Lcom/google/common/collect/d3$b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/p0;-><init>()V

    return-void
.end method


# virtual methods
.method public M()Lcom/google/common/collect/e3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d3$b;->d:Lcom/google/common/collect/d3;

    iget-object v1, p0, Lcom/google/common/collect/d3$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/d3;->e(Ljava/lang/Object;)Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/d3$b;->M()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

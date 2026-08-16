.class public Lcom/google/common/collect/T1$k$e;
.super Lcom/google/common/collect/T1$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/T1$k;->k(Ljava/util/Comparator;)Lcom/google/common/collect/T1$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/T1$m<",
        "TK0;TV0;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/Comparator;

.field public final synthetic c:Lcom/google/common/collect/T1$k;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/T1$k;Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/T1$k$e;->c:Lcom/google/common/collect/T1$k;

    iput-object p2, p0, Lcom/google/common/collect/T1$k$e;->b:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/T1$m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/S1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T1$k$e;->l()Lcom/google/common/collect/N2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Lcom/google/common/collect/C2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T1$k$e;->l()Lcom/google/common/collect/N2;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/common/collect/N2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/N2<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T1$k$e;->c:Lcom/google/common/collect/T1$k;

    invoke-virtual {v0}, Lcom/google/common/collect/T1$k;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/T1$n;

    iget-object v2, p0, Lcom/google/common/collect/T1$k$e;->b:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lcom/google/common/collect/T1$n;-><init>(Ljava/util/Comparator;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/U1;->x(Ljava/util/Map;Lw2/Q;)Lcom/google/common/collect/N2;

    move-result-object v0

    return-object v0
.end method

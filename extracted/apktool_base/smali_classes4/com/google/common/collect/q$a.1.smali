.class public Lcom/google/common/collect/q$a;
.super Lcom/google/common/collect/V2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/q;->d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/V2<",
        "Lcom/google/common/collect/S2$a<",
        "TR;TC;TV;>;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/q;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/common/collect/V2;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    check-cast p1, Lcom/google/common/collect/S2$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q$a;->b(Lcom/google/common/collect/S2$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/common/collect/S2$a;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;)TV;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

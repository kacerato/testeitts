.class public Lcom/google/common/collect/p0$c$a;
.super Lcom/google/common/collect/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/p0$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "Ljava/util/Iterator<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/p0$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/p0$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/p0$c$a;->d:Lcom/google/common/collect/p0$c;

    invoke-direct {p0, p2}, Lcom/google/common/collect/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p0$c$a;->b(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p0$c$a;->d:Lcom/google/common/collect/p0$c;

    iget-object v0, v0, Lcom/google/common/collect/p0$c;->c:[Ljava/lang/Iterable;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/google/common/collect/D1$j;
.super Lcom/google/common/collect/p0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/D1;->E(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Iterable;
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
.field public final synthetic c:Ljava/lang/Iterable;

.field public final synthetic d:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/D1$j;->c:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/D1$j;->d:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/p0;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/D1$j;->c:Ljava/lang/Iterable;

    invoke-static {}, Lcom/google/common/collect/D1;->S()Lw2/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/D1;->U(Ljava/lang/Iterable;Lw2/t;)Ljava/lang/Iterable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/D1$j;->d:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->O(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

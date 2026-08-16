.class public Lcom/google/common/collect/D1$e;
.super Lcom/google/common/collect/p0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/D1;->p(Ljava/lang/Iterable;Lw2/I;)Ljava/lang/Iterable;
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

.field public final synthetic d:Lw2/I;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lw2/I;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/D1$e;->c:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/D1$e;->d:Lw2/I;

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

    iget-object v0, p0, Lcom/google/common/collect/D1$e;->c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/D1$e;->d:Lw2/I;

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->y(Ljava/util/Iterator;Lw2/I;)Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/common/collect/d3$a;
.super Lcom/google/common/collect/d3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d3;->g(Lw2/t;)Lcom/google/common/collect/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw2/t;


# direct methods
.method public constructor <init>(Lw2/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d3$a;->a:Lw2/t;

    invoke-direct {p0}, Lcom/google/common/collect/d3;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d3$a;->a:Lw2/t;

    invoke-interface {v0, p1}, Lw2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

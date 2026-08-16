.class public Lcom/google/common/collect/E1$h;
.super Lcom/google/common/collect/V2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/V2<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lw2/t;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lw2/t;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/E1$h;->c:Lw2/t;

    invoke-direct {p0, p1}, Lcom/google/common/collect/V2;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/E1$h;->c:Lw2/t;

    invoke-interface {v0, p1}, Lw2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/google/common/collect/M1$m$a;
.super Lcom/google/common/collect/W2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/M1$m;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/W2<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/M1$m;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/M1$m;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/M1$m$a;->c:Lcom/google/common/collect/M1$m;

    invoke-direct {p0, p2}, Lcom/google/common/collect/W2;-><init>(Ljava/util/ListIterator;)V

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

    iget-object v0, p0, Lcom/google/common/collect/M1$m$a;->c:Lcom/google/common/collect/M1$m;

    iget-object v0, v0, Lcom/google/common/collect/M1$m;->c:Lw2/t;

    invoke-interface {v0, p1}, Lw2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/google/common/collect/x2$c;
.super Lcom/google/common/collect/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g1<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/x2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/x2$c;->d:Lcom/google/common/collect/x2;

    invoke-direct {p0}, Lcom/google/common/collect/g1;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/x2;Lcom/google/common/collect/x2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/x2$c;-><init>(Lcom/google/common/collect/x2;)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x2$c;->d:Lcom/google/common/collect/x2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x2;->M(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/x2$c;->d:Lcom/google/common/collect/x2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->size()I

    move-result v0

    return v0
.end method

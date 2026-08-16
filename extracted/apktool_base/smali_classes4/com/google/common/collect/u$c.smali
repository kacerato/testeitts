.class public Lcom/google/common/collect/u$c;
.super Lcom/google/common/collect/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u;->d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/u;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/u$c;->d:Lcom/google/common/collect/u;

    invoke-direct {p0, p2}, Lcom/google/common/collect/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$c;->d:Lcom/google/common/collect/u;

    invoke-static {v0, p1}, Lcom/google/common/collect/u;->l(Lcom/google/common/collect/u;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

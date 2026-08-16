.class public Lcom/google/common/collect/D$a;
.super Lcom/google/common/collect/D$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/D;->L()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/D<",
        "TK;TV;>.e<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/D;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/D;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/D$a;->f:Lcom/google/common/collect/D;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/D$e;-><init>(Lcom/google/common/collect/D;Lcom/google/common/collect/D$a;)V

    return-void
.end method


# virtual methods
.method public b(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/D$a;->f:Lcom/google/common/collect/D;

    invoke-static {v0, p1}, Lcom/google/common/collect/D;->b(Lcom/google/common/collect/D;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

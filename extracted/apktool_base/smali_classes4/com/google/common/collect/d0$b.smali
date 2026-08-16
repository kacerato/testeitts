.class public Lcom/google/common/collect/d0$b;
.super Lcom/google/common/collect/d0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d0;->g()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d0<",
        "TE;>.c<",
        "Lcom/google/common/collect/V1$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/d0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d0$b;->e:Lcom/google/common/collect/d0;

    invoke-direct {p0, p1}, Lcom/google/common/collect/d0$c;-><init>(Lcom/google/common/collect/d0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0$b;->b(I)Lcom/google/common/collect/V1$a;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d0$b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/d0$b$a;-><init>(Lcom/google/common/collect/d0$b;I)V

    return-object v0
.end method

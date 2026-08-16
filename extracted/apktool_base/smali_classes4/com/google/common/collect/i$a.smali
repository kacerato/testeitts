.class public Lcom/google/common/collect/i$a;
.super Lcom/google/common/collect/W1$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/W1$h<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/i;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i$a;->b:Lcom/google/common/collect/i;

    invoke-direct {p0}, Lcom/google/common/collect/W1$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i$a;->b:Lcom/google/common/collect/i;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i$a;->b:Lcom/google/common/collect/i;

    invoke-virtual {v0}, Lcom/google/common/collect/i;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

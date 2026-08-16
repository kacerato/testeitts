.class public Lcom/google/common/collect/a3$a;
.super Lcom/google/common/collect/W1$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a3;->G(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/V1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/W1$f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/a3$f;

.field public final synthetic c:Lcom/google/common/collect/a3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a3;Lcom/google/common/collect/a3$f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/a3$a;->c:Lcom/google/common/collect/a3;

    iput-object p2, p0, Lcom/google/common/collect/a3$a;->b:Lcom/google/common/collect/a3$f;

    invoke-direct {p0}, Lcom/google/common/collect/W1$f;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/a3$a;->b:Lcom/google/common/collect/a3$f;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$f;->w()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/a3$a;->c:Lcom/google/common/collect/a3;

    invoke-virtual {p0}, Lcom/google/common/collect/a3$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a3;->Ad(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a3$a;->b:Lcom/google/common/collect/a3$f;

    invoke-virtual {v0}, Lcom/google/common/collect/a3$f;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

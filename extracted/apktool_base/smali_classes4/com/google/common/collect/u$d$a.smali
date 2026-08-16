.class public Lcom/google/common/collect/u$d$a;
.super Lcom/google/common/collect/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u$d;->f(I)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/collect/u$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u$d;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/u$d$a;->c:Lcom/google/common/collect/u$d;

    iput p2, p0, Lcom/google/common/collect/u$d$a;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/g;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$d$a;->c:Lcom/google/common/collect/u$d;

    iget v1, p0, Lcom/google/common/collect/u$d$a;->b:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/u$d;->g(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$d$a;->c:Lcom/google/common/collect/u$d;

    iget v1, p0, Lcom/google/common/collect/u$d$a;->b:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/u$d;->j(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$d$a;->c:Lcom/google/common/collect/u$d;

    iget v1, p0, Lcom/google/common/collect/u$d$a;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/u$d;->k(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

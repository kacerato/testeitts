.class public Lcom/google/common/collect/i1$a;
.super Lcom/google/common/collect/e3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i1;->w()Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e3<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/e3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1;Lcom/google/common/collect/e3;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/i1$a;->b:Lcom/google/common/collect/e3;

    invoke-direct {p0}, Lcom/google/common/collect/e3;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i1$a;->b:Lcom/google/common/collect/e3;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i1$a;->b:Lcom/google/common/collect/e3;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

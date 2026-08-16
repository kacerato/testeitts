.class public final Lcom/google/common/collect/q1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/q1$f;->b:Lcom/google/common/collect/g1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/q1$f;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/q1;->E()Lcom/google/common/collect/q1;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/q1$f;->b:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/j2;->a()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/q1;->r()Lcom/google/common/collect/q1;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/common/collect/q1;

    iget-object v1, p0, Lcom/google/common/collect/q1$f;->b:Lcom/google/common/collect/g1;

    invoke-direct {v0, v1}, Lcom/google/common/collect/q1;-><init>(Lcom/google/common/collect/g1;)V

    return-object v0
.end method

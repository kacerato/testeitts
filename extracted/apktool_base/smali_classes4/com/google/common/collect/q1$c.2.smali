.class public Lcom/google/common/collect/q1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
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

.field public final c:Lcom/google/common/collect/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/W<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/W;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;",
            "Lcom/google/common/collect/W<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/q1$c;->b:Lcom/google/common/collect/g1;

    iput-object p2, p0, Lcom/google/common/collect/q1$c;->c:Lcom/google/common/collect/W;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/q1;

    iget-object v1, p0, Lcom/google/common/collect/q1$c;->b:Lcom/google/common/collect/g1;

    invoke-direct {v0, v1}, Lcom/google/common/collect/q1;-><init>(Lcom/google/common/collect/g1;)V

    iget-object v1, p0, Lcom/google/common/collect/q1$c;->c:Lcom/google/common/collect/W;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/q1;->v(Lcom/google/common/collect/W;)Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

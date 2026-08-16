.class public abstract Lcom/google/common/collect/Q2$i;
.super Lcom/google/common/collect/D2$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/D2$k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Q2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Q2$i;->b:Lcom/google/common/collect/Q2;

    invoke-direct {p0}, Lcom/google/common/collect/D2$k;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/Q2;Lcom/google/common/collect/Q2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/Q2$i;-><init>(Lcom/google/common/collect/Q2;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Q2$i;->b:Lcom/google/common/collect/Q2;

    iget-object v0, v0, Lcom/google/common/collect/Q2;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Q2$i;->b:Lcom/google/common/collect/Q2;

    iget-object v0, v0, Lcom/google/common/collect/Q2;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

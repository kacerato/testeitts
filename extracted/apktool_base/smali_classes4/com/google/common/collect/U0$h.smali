.class public abstract Lcom/google/common/collect/U0$h;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/U0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/U0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/U0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/U0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/U0<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/U0$h;->b:Lcom/google/common/collect/U0;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U0$h;->b:Lcom/google/common/collect/U0;

    invoke-virtual {v0}, Lcom/google/common/collect/U0;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U0$h$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U0$h$a;-><init>(Lcom/google/common/collect/U0$h;)V

    return-object v0
.end method

.method public abstract j(I)Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U0$h;->b:Lcom/google/common/collect/U0;

    iget v0, v0, Lcom/google/common/collect/U0;->d:I

    return v0
.end method

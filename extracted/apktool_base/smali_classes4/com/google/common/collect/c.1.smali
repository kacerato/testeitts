.class public abstract Lcom/google/common/collect/c;
.super Lcom/google/common/collect/e3;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e3<",
        "TT;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# instance fields
.field public b:Lcom/google/common/collect/c$b;

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/e3;-><init>()V

    sget-object v0, Lcom/google/common/collect/c$b;->NOT_READY:Lcom/google/common/collect/c$b;

    iput-object v0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/c$b;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    sget-object v0, Lcom/google/common/collect/c$b;->DONE:Lcom/google/common/collect/c$b;

    iput-object v0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/c$b;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Z
    .locals 2

    sget-object v0, Lcom/google/common/collect/c$b;->FAILED:Lcom/google/common/collect/c$b;

    iput-object v0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/c$b;

    invoke-virtual {p0}, Lcom/google/common/collect/c;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/c;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/c$b;

    sget-object v1, Lcom/google/common/collect/c$b;->DONE:Lcom/google/common/collect/c$b;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/common/collect/c$b;->READY:Lcom/google/common/collect/c$b;

    iput-object v0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/c$b;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNext()Z
    .locals 4
    .annotation build LI2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/c$b;

    sget-object v1, Lcom/google/common/collect/c$b;->FAILED:Lcom/google/common/collect/c$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    sget-object v0, Lcom/google/common/collect/c$a;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/c;->d()Z

    move-result v0

    return v0

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/collect/c$b;->NOT_READY:Lcom/google/common/collect/c$b;

    iput-object v0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/c$b;

    iget-object v0, p0, Lcom/google/common/collect/c;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/c;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/c;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

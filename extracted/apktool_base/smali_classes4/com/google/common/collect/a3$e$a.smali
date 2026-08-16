.class public final enum Lcom/google/common/collect/a3$e$a;
.super Lcom/google/common/collect/a3$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a3$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/a3$e;-><init>(Ljava/lang/String;ILcom/google/common/collect/a3$a;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/common/collect/a3$f;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a3$f<",
            "*>;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/a3$f;->d(Lcom/google/common/collect/a3$f;)I

    move-result p1

    return p1
.end method

.method public c(Lcom/google/common/collect/a3$f;)J
    .locals 2
    .param p1    # Lcom/google/common/collect/a3$f;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a3$f<",
            "*>;)J"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/a3$f;->f(Lcom/google/common/collect/a3$f;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

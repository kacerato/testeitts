.class public final Lcom/google/common/collect/U0$g;
.super Lcom/google/common/collect/U0$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/U0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/U0$h<",
        "TK;TV;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/U0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/U0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/U0$g;->c:Lcom/google/common/collect/U0;

    invoke-direct {p0, p1}, Lcom/google/common/collect/U0$h;-><init>(Lcom/google/common/collect/U0;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/U0$g;->c:Lcom/google/common/collect/U0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/U0;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U0$g;->c:Lcom/google/common/collect/U0;

    iget-object v0, v0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/U0$g;->c:Lcom/google/common/collect/U0;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/U0;->v(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/U0$g;->c:Lcom/google/common/collect/U0;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/U0;->I(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class public final Lcom/google/common/collect/U0$a;
.super Lcom/google/common/collect/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/U0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public c:I

.field public final synthetic d:Lcom/google/common/collect/U0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/U0;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/U0$a;->d:Lcom/google/common/collect/U0;

    invoke-direct {p0}, Lcom/google/common/collect/g;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/U0$a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/U0$a;->c:I

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/U0$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/U0$a;->d:Lcom/google/common/collect/U0;

    iget v2, v1, Lcom/google/common/collect/U0;->d:I

    if-gt v0, v2, :cond_0

    iget-object v1, v1, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/google/common/collect/U0$a;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/U0$a;->d:Lcom/google/common/collect/U0;

    iget-object v1, p0, Lcom/google/common/collect/U0$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/U0;->r(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/U0$a;->c:I

    :cond_1
    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U0$a;->b:Ljava/lang/Object;

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

    invoke-virtual {p0}, Lcom/google/common/collect/U0$a;->e()V

    iget v0, p0, Lcom/google/common/collect/U0$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Z1;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/U0$a;->d:Lcom/google/common/collect/U0;

    iget-object v1, v1, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    invoke-virtual {p0}, Lcom/google/common/collect/U0$a;->e()V

    iget v0, p0, Lcom/google/common/collect/U0$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/U0$a;->d:Lcom/google/common/collect/U0;

    iget-object v1, p0, Lcom/google/common/collect/U0$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/U0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/Z1;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/U0$a;->d:Lcom/google/common/collect/U0;

    iget-object v1, v1, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/U0$a;->d:Lcom/google/common/collect/U0;

    iget v2, p0, Lcom/google/common/collect/U0$a;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/google/common/collect/U0;->c(Lcom/google/common/collect/U0;ILjava/lang/Object;Z)V

    return-object v0
.end method

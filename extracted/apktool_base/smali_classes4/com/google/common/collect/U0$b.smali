.class public final Lcom/google/common/collect/U0$b;
.super Lcom/google/common/collect/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/U0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/g<",
        "TV;TK;>;"
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

.field public final c:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/U0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/U0<",
            "TK;TV;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/g;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/U0$b;->b:Lcom/google/common/collect/U0;

    iget-object p1, p1, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/U0$b;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/U0$b;->d:I

    return-void
.end method

.method private e()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/U0$b;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/U0$b;->b:Lcom/google/common/collect/U0;

    iget v2, v1, Lcom/google/common/collect/U0;->d:I

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/U0$b;->c:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v2, v0}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/U0$b;->b:Lcom/google/common/collect/U0;

    iget-object v1, p0, Lcom/google/common/collect/U0$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/U0;->u(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/U0$b;->d:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U0$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/U0$b;->e()V

    iget v0, p0, Lcom/google/common/collect/U0$b;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Z1;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/U0$b;->b:Lcom/google/common/collect/U0;

    iget-object v1, v1, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

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
            "(TK;)TK;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/U0$b;->e()V

    iget v0, p0, Lcom/google/common/collect/U0$b;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/U0$b;->b:Lcom/google/common/collect/U0;

    iget-object v1, p0, Lcom/google/common/collect/U0$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/common/collect/U0;->C(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/Z1;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/U0$b;->b:Lcom/google/common/collect/U0;

    iget-object v1, v1, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/U0$b;->b:Lcom/google/common/collect/U0;

    iget v3, p0, Lcom/google/common/collect/U0$b;->d:I

    invoke-static {v1, v3, p1, v2}, Lcom/google/common/collect/U0;->e(Lcom/google/common/collect/U0;ILjava/lang/Object;Z)V

    return-object v0
.end method

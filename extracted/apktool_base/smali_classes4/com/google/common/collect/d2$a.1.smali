.class public Lcom/google/common/collect/d2$a;
.super Lcom/google/common/collect/W1$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/W1$f<",
        "TK;>;"
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

.field public final synthetic d:Lcom/google/common/collect/d2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/d2;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d2$a;->d:Lcom/google/common/collect/d2;

    invoke-direct {p0}, Lcom/google/common/collect/W1$f;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/d2;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/d2$a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/d2$a;->c:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/d2$a;->b()V

    iget v0, p0, Lcom/google/common/collect/d2$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/d2$a;->d:Lcom/google/common/collect/d2;

    iget-object v1, p0, Lcom/google/common/collect/d2$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/d2;->v(Ljava/lang/Object;I)I

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/d2$a;->d:Lcom/google/common/collect/d2;

    iget-object v1, v1, Lcom/google/common/collect/d2;->b:[I

    aget v2, v1, v0

    aput p1, v1, v0

    return v2
.end method

.method public b()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/d2$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/d2$a;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v1}, Lcom/google/common/collect/d2;->D()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/d2$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/d2$a;->d:Lcom/google/common/collect/d2;

    iget-object v1, v1, Lcom/google/common/collect/d2;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/d2$a;->c:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/d2$a;->d:Lcom/google/common/collect/d2;

    iget-object v1, p0, Lcom/google/common/collect/d2$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/d2;->n(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/d2$a;->c:I

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/d2$a;->b()V

    iget v0, p0, Lcom/google/common/collect/d2$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/d2$a;->d:Lcom/google/common/collect/d2;

    iget-object v1, v1, Lcom/google/common/collect/d2;->b:[I

    aget v0, v1, v0

    :goto_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d2$a;->b:Ljava/lang/Object;

    return-object v0
.end method

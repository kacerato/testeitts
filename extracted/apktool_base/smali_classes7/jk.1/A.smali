.class public Ljk/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/q;


# instance fields
.field public volatile a:I

.field public b:I

.field public c:[Ljk/i;

.field public d:[Ljk/i;

.field public e:Ljk/i;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Ljk/A;->a:I

    const/4 v0, -0x1

    iput v0, p0, Ljk/A;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Ljk/A;->c:[Ljk/i;

    iput-object v1, p0, Ljk/A;->d:[Ljk/i;

    iput-object v1, p0, Ljk/A;->e:Ljk/i;

    iput v0, p0, Ljk/A;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ljk/A;->a:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljk/A;->a:I

    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ljk/A;->b:I

    return v0
.end method

.method public c()[Ljk/i;
    .locals 1

    iget-object v0, p0, Ljk/A;->c:[Ljk/i;

    return-object v0
.end method

.method public d()[Ljk/i;
    .locals 1

    iget-object v0, p0, Ljk/A;->d:[Ljk/i;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Ljk/A;->a:I

    return v0
.end method

.method public f()Ljk/i;
    .locals 1

    iget-object v0, p0, Ljk/A;->e:Ljk/i;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ljk/A;->f:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Ljk/A;->a:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Ljk/A;->b:I

    return-void
.end method

.method public j([Ljk/i;)V
    .locals 0

    iput-object p1, p0, Ljk/A;->c:[Ljk/i;

    return-void
.end method

.method public k([Ljk/i;)V
    .locals 0

    iput-object p1, p0, Ljk/A;->d:[Ljk/i;

    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Ljk/A;->a:I

    return-void
.end method

.method public m(Ljk/i;)V
    .locals 0

    iput-object p1, p0, Ljk/A;->e:Ljk/i;

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Ljk/A;->f:I

    return-void
.end method

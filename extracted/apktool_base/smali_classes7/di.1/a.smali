.class public Ldi/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Ldi/a;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, Ldi/a;->b:I

    iput p2, p0, Ldi/a;->c:I

    iput p3, p0, Ldi/a;->d:I

    iput p4, p0, Ldi/a;->e:I

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    invoke-virtual {v1}, Loh/s;->M()I

    move-result v1

    iput v1, p0, Ldi/a;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/s;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/s;

    invoke-virtual {p1}, Loh/s;->M()I

    move-result p1

    iput p1, p0, Ldi/a;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/E;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->M()I

    move-result v0

    iput v0, p0, Ldi/a;->c:I

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->M()I

    move-result v0

    iput v0, p0, Ldi/a;->d:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->M()I

    move-result p1

    iput p1, p0, Ldi/a;->e:I

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object parse error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Ldi/a;
    .locals 1

    instance-of v0, p0, Ldi/a;

    if-eqz v0, :cond_0

    check-cast p0, Ldi/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ldi/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Ldi/a;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    iget v2, p0, Ldi/a;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget v1, p0, Ldi/a;->d:I

    if-nez v1, :cond_0

    new-instance v1, Loh/s;

    iget v2, p0, Ldi/a;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    new-instance v1, Loh/h;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Loh/h;-><init>(I)V

    new-instance v2, Loh/s;

    iget v3, p0, Ldi/a;->c:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/s;

    iget v3, p0, Ldi/a;->d:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/s;

    iget v3, p0, Ldi/a;->e:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/G0;

    invoke-direct {v2, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :goto_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()I
    .locals 1

    iget v0, p0, Ldi/a;->c:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Ldi/a;->d:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Ldi/a;->e:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Ldi/a;->b:I

    return v0
.end method

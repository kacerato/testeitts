.class public Lsh/t;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lfi/d;

.field public c:Lhi/E;

.field public d:Loh/n;

.field public e:Lhi/c0;


# direct methods
.method public constructor <init>(Lfi/d;Lhi/E;Loh/n;Lhi/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/t;->b:Lfi/d;

    iput-object p2, p0, Lsh/t;->c:Lhi/E;

    iput-object p3, p0, Lsh/t;->d:Loh/n;

    iput-object p4, p0, Lsh/t;->e:Lhi/c0;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    iput-object v0, p0, Lsh/t;->b:Lfi/d;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/M;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v0

    iput-object v0, p0, Lsh/t;->c:Lhi/E;

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/n;

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v1

    iput-object v1, p0, Lsh/t;->d:Loh/n;

    move v1, v0

    :cond_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/c;

    if-eqz v0, :cond_2

    new-instance v0, Lhi/c0;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    invoke-direct {v0, p1}, Lhi/c0;-><init>(Loh/c;)V

    iput-object v0, p0, Lsh/t;->e:Lhi/c0;

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Lsh/t;
    .locals 1

    instance-of v0, p0, Lsh/t;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/t;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/t;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/t;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/t;->b:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/t;->c:Lhi/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lsh/t;->d:Loh/n;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lsh/t;->e:Lhi/c0;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lfi/d;
    .locals 1

    iget-object v0, p0, Lsh/t;->b:Lfi/d;

    return-object v0
.end method

.method public x()Lhi/c0;
    .locals 1

    iget-object v0, p0, Lsh/t;->e:Lhi/c0;

    return-object v0
.end method

.method public y()Loh/n;
    .locals 1

    iget-object v0, p0, Lsh/t;->d:Loh/n;

    return-object v0
.end method

.method public z()Lhi/E;
    .locals 1

    iget-object v0, p0, Lsh/t;->c:Lhi/E;

    return-object v0
.end method

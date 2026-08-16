.class public Lhi/i0;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhi/i0$b;,
        Lhi/i0$c;,
        Lhi/i0$d;
    }
.end annotation


# instance fields
.field public b:Loh/s;

.field public c:Lhi/b;

.field public d:Lfi/d;

.field public e:Lhi/o0;

.field public f:Lhi/o0;

.field public g:Loh/E;

.field public h:Lhi/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/s;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lhi/i0;->b:Loh/s;

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lhi/i0;->b:Loh/s;

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v3

    iput-object v3, p0, Lhi/i0;->c:Lhi/b;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    iput-object v1, p0, Lhi/i0;->d:Lfi/d;

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/o0;->v(Ljava/lang/Object;)Lhi/o0;

    move-result-object v3

    iput-object v3, p0, Lhi/i0;->e:Lhi/o0;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    instance-of v3, v3, Loh/P;

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    instance-of v3, v3, Loh/n;

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    instance-of v3, v3, Lhi/o0;

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/o0;->v(Ljava/lang/Object;)Lhi/o0;

    move-result-object v1

    iput-object v1, p0, Lhi/i0;->f:Lhi/o0;

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/M;

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    iput-object v1, p0, Lhi/i0;->g:Loh/E;

    move v1, v0

    :cond_3
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/M;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p1

    invoke-static {p1}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lhi/i0;->h:Lhi/C;

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v(Ljava/lang/Object;)Lhi/i0;
    .locals 1

    instance-of v0, p0, Lhi/i0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/i0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/i0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/i0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lhi/i0;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/i0;->v(Ljava/lang/Object;)Lhi/i0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()[Lhi/i0$b;
    .locals 4

    iget-object v0, p0, Lhi/i0;->g:Loh/E;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lhi/i0$b;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v2, v0, [Lhi/i0$b;

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lhi/i0;->g:Loh/E;

    invoke-virtual {v3, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/i0$b;->v(Ljava/lang/Object;)Lhi/i0$b;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public B()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/i0;->c:Lhi/b;

    return-object v0
.end method

.method public C()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/i0;->e:Lhi/o0;

    return-object v0
.end method

.method public D()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/i0;->b:Loh/s;

    return-object v0
.end method

.method public E()I
    .locals 2

    iget-object v0, p0, Lhi/i0;->b:Loh/s;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/i0;->b:Loh/s;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/i0;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/i0;->d:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/i0;->e:Lhi/o0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/i0;->f:Lhi/o0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lhi/i0;->g:Loh/E;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Lhi/i0;->h:Lhi/C;

    if-eqz v1, :cond_3

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Loh/K0;-><init>(ILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_3
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/C;
    .locals 1

    iget-object v0, p0, Lhi/i0;->h:Lhi/C;

    return-object v0
.end method

.method public x()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/i0;->d:Lfi/d;

    return-object v0
.end method

.method public y()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/i0;->f:Lhi/o0;

    return-object v0
.end method

.method public z()Ljava/util/Enumeration;
    .locals 2

    iget-object v0, p0, Lhi/i0;->g:Loh/E;

    if-nez v0, :cond_0

    new-instance v0, Lhi/i0$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhi/i0$c;-><init>(Lhi/i0$a;)V

    return-object v0

    :cond_0
    new-instance v1, Lhi/i0$d;

    invoke-virtual {v0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {v1, v0}, Lhi/i0$d;-><init>(Ljava/util/Enumeration;)V

    return-object v1
.end method

.class public Lsh/q;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lsh/J;

.field public final c:Luh/o;

.field public final d:Lhi/b;

.field public final e:Lhi/b;

.field public final f:[B


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lsh/J;->u(Ljava/lang/Object;)Lsh/J;

    move-result-object v0

    iput-object v0, p0, Lsh/q;->b:Lsh/J;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object v0

    iput-object v0, p0, Lsh/q;->c:Luh/o;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lsh/q;->d:Lhi/b;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lsh/q;->e:Lhi/b;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lsh/q;->f:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsh/J;Luh/o;Lhi/b;Lhi/b;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/q;->b:Lsh/J;

    iput-object p2, p0, Lsh/q;->c:Luh/o;

    iput-object p3, p0, Lsh/q;->d:Lhi/b;

    iput-object p4, p0, Lsh/q;->e:Lhi/b;

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lsh/q;->f:[B

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lsh/q;
    .locals 1

    instance-of v0, p0, Lsh/q;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/q;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Lhi/b;
    .locals 1

    iget-object v0, p0, Lsh/q;->e:Lhi/b;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/q;->b:Lsh/J;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/q;->c:Luh/o;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/q;->d:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/q;->e:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, Lsh/q;->f:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Luh/o;
    .locals 1

    iget-object v0, p0, Lsh/q;->c:Luh/o;

    return-object v0
.end method

.method public x()Lsh/J;
    .locals 1

    iget-object v0, p0, Lsh/q;->b:Lsh/J;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, Lsh/q;->d:Lhi/b;

    return-object v0
.end method

.method public z()[B
    .locals 1

    iget-object v0, p0, Lsh/q;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.class public Lsh/n;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsh/n$b;
    }
.end annotation


# static fields
.field public static final e:Loh/s;


# instance fields
.field public final b:Lsh/n$b;

.field public final c:Lhi/b;

.field public final d:Loh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Lsh/n;->e:Loh/s;

    return-void
.end method

.method public constructor <init>(Lfi/d;Lhi/b;Loh/c;Loh/G;Lhi/b;Loh/c;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v6, Lsh/n$b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lsh/n$b;-><init>(Lfi/d;Lhi/b;Loh/c;Loh/G;Lsh/n$a;)V

    iput-object v6, p0, Lsh/n;->b:Lsh/n$b;

    iput-object p5, p0, Lsh/n;->c:Lhi/b;

    iput-object p6, p0, Lsh/n;->d:Loh/c;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lsh/n$b;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsh/n$b;-><init>(Loh/E;Lsh/n$a;)V

    iput-object v0, p0, Lsh/n;->b:Lsh/n$b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lsh/n;->c:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lsh/n;->d:Loh/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic u()Loh/s;
    .locals 1

    sget-object v0, Lsh/n;->e:Loh/s;

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)Lsh/n;
    .locals 1

    instance-of v0, p0, Lsh/n;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/n;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/n;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/n;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/c;
    .locals 2

    iget-object v0, p0, Lsh/n;->b:Lsh/n$b;

    invoke-static {v0}, Lsh/n$b;->x(Lsh/n$b;)Loh/E;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v0

    return-object v0
.end method

.method public B()Lhi/b;
    .locals 2

    iget-object v0, p0, Lsh/n;->b:Lsh/n$b;

    invoke-static {v0}, Lsh/n$b;->x(Lsh/n$b;)Loh/E;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsh/n;->b:Lsh/n$b;

    invoke-static {v0}, Lsh/n$b;->u(Lsh/n$b;)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public D()Loh/B;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsh/n;->A()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/n;->b:Lsh/n$b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/n;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/n;->d:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/G;
    .locals 1

    iget-object v0, p0, Lsh/n;->b:Lsh/n$b;

    invoke-static {v0}, Lsh/n$b;->w(Lsh/n$b;)Loh/G;

    move-result-object v0

    return-object v0
.end method

.method public x()Loh/c;
    .locals 1

    iget-object v0, p0, Lsh/n;->d:Loh/c;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, Lsh/n;->c:Lhi/b;

    return-object v0
.end method

.method public z()Lfi/d;
    .locals 1

    iget-object v0, p0, Lsh/n;->b:Lsh/n$b;

    invoke-static {v0}, Lsh/n$b;->v(Lsh/n$b;)Lfi/d;

    move-result-object v0

    return-object v0
.end method

.class public LEk/z;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEk/z$a;
    }
.end annotation


# instance fields
.field public final b:LEk/H;

.field public final c:Loh/s;

.field public final d:Loh/s;

.field public final e:LEk/k;


# direct methods
.method public constructor <init>(LEk/H;Loh/s;Loh/s;LEk/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LEk/z;->b:LEk/H;

    iput-object p2, p0, LEk/z;->c:Loh/s;

    iput-object p3, p0, LEk/z;->d:Loh/s;

    iput-object p4, p0, LEk/z;->e:LEk/k;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LEk/H;->y(Ljava/lang/Object;)LEk/H;

    move-result-object v0

    iput-object v0, p0, LEk/z;->b:LEk/H;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v0

    const-class v1, Loh/s;

    invoke-virtual {v0, v1}, Lyk/i;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, LEk/z;->c:Loh/s;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lyk/i;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, LEk/z;->d:Loh/s;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object p1

    const-class v0, LEk/k;

    invoke-virtual {p1, v0}, Lyk/i;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LEk/k;

    iput-object p1, p0, LEk/z;->e:LEk/k;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LEk/z$a;
    .locals 1

    new-instance v0, LEk/z$a;

    invoke-direct {v0}, LEk/z$a;-><init>()V

    return-object v0
.end method

.method public static y(Ljava/lang/Object;)LEk/z;
    .locals 1

    instance-of v0, p0, LEk/z;

    if-eqz v0, :cond_0

    check-cast p0, LEk/z;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/z;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/z;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()LEk/H;
    .locals 1

    iget-object v0, p0, LEk/z;->b:LEk/H;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 7

    new-instance v0, Loh/G0;

    iget-object v1, p0, LEk/z;->b:LEk/H;

    iget-object v2, p0, LEk/z;->c:Loh/s;

    invoke-static {v2}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v2

    iget-object v3, p0, LEk/z;->d:Loh/s;

    invoke-static {v3}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v3

    iget-object v4, p0, LEk/z;->e:LEk/k;

    invoke-static {v4}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Loh/g;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-direct {v0, v5}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public v()Loh/s;
    .locals 1

    iget-object v0, p0, LEk/z;->d:Loh/s;

    return-object v0
.end method

.method public x()LEk/k;
    .locals 1

    iget-object v0, p0, LEk/z;->e:LEk/k;

    return-object v0
.end method

.method public z()Loh/s;
    .locals 1

    iget-object v0, p0, LEk/z;->c:Loh/s;

    return-object v0
.end method

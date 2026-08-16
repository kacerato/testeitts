.class public LEk/c;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEk/c$a;
    }
.end annotation


# instance fields
.field public final b:LFk/w0;

.field public final c:LEk/e;

.field public final d:LEk/s;

.field public final e:LEk/K;

.field public final f:LFk/j0;


# direct methods
.method public constructor <init>(LFk/w0;LEk/e;LEk/s;LEk/K;LFk/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LEk/c;->b:LFk/w0;

    iput-object p2, p0, LEk/c;->c:LEk/e;

    iput-object p3, p0, LEk/c;->d:LEk/s;

    iput-object p4, p0, LEk/c;->e:LEk/K;

    iput-object p5, p0, LEk/c;->f:LFk/j0;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/w0;->w(Ljava/lang/Object;)LFk/w0;

    move-result-object v0

    iput-object v0, p0, LEk/c;->b:LFk/w0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LEk/e;->N(Ljava/lang/Object;)LEk/e;

    move-result-object v0

    iput-object v0, p0, LEk/c;->c:LEk/e;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LEk/s;->v(Ljava/lang/Object;)LEk/s;

    move-result-object v0

    iput-object v0, p0, LEk/c;->d:LEk/s;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LEk/K;->R(Ljava/lang/Object;)LEk/K;

    move-result-object v0

    iput-object v0, p0, LEk/c;->e:LEk/K;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    const-class v0, LFk/j0;

    invoke-static {v0, p1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFk/j0;

    iput-object p1, p0, LEk/c;->f:LFk/j0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 5"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LEk/c$a;
    .locals 1

    new-instance v0, LEk/c$a;

    invoke-direct {v0}, LEk/c$a;-><init>()V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)LEk/c;
    .locals 1

    instance-of v0, p0, LEk/c;

    if-eqz v0, :cond_0

    check-cast p0, LEk/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/c;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/c;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()LEk/e;
    .locals 1

    iget-object v0, p0, LEk/c;->c:LEk/e;

    return-object v0
.end method

.method public B()LFk/w0;
    .locals 1

    iget-object v0, p0, LEk/c;->b:LFk/w0;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 7

    iget-object v0, p0, LEk/c;->b:LFk/w0;

    iget-object v1, p0, LEk/c;->c:LEk/e;

    iget-object v2, p0, LEk/c;->d:LEk/s;

    iget-object v3, p0, LEk/c;->e:LEk/K;

    iget-object v4, p0, LEk/c;->f:LFk/j0;

    invoke-static {v4}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Loh/g;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lzk/a;->e([Loh/g;)Loh/E;

    move-result-object v0

    return-object v0
.end method

.method public x()LEk/s;
    .locals 1

    iget-object v0, p0, LEk/c;->d:LEk/s;

    return-object v0
.end method

.method public y()LFk/j0;
    .locals 1

    iget-object v0, p0, LEk/c;->f:LFk/j0;

    return-object v0
.end method

.method public z()LEk/K;
    .locals 1

    iget-object v0, p0, LEk/c;->e:LEk/K;

    return-object v0
.end method

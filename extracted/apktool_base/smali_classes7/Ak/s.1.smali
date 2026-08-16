.class public LAk/s;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAk/s$a;
    }
.end annotation


# instance fields
.field public final b:LBk/e;

.field public final c:LFk/p0;

.field public final d:Loh/e;

.field public final e:LFk/w0;

.field public final f:LAk/O;


# direct methods
.method public constructor <init>(LBk/e;LFk/p0;Loh/e;LFk/w0;LAk/O;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LAk/s;->b:LBk/e;

    iput-object p2, p0, LAk/s;->c:LFk/p0;

    iput-object p3, p0, LAk/s;->d:Loh/e;

    iput-object p4, p0, LAk/s;->e:LFk/w0;

    iput-object p5, p0, LAk/s;->f:LAk/O;

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

    invoke-static {v0}, LBk/e;->u(Ljava/lang/Object;)LBk/e;

    move-result-object v0

    iput-object v0, p0, LAk/s;->b:LBk/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/p0;->x(Ljava/lang/Object;)LFk/p0;

    move-result-object v0

    iput-object v0, p0, LAk/s;->c:LFk/p0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/e;->G(Ljava/lang/Object;)Loh/e;

    move-result-object v0

    iput-object v0, p0, LAk/s;->d:Loh/e;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/w0;->w(Ljava/lang/Object;)LFk/w0;

    move-result-object v0

    iput-object v0, p0, LAk/s;->e:LFk/w0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LAk/O;->w(Ljava/lang/Object;)LAk/O;

    move-result-object p1

    iput-object p1, p0, LAk/s;->f:LAk/O;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 5"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LAk/s$a;
    .locals 1

    new-instance v0, LAk/s$a;

    invoke-direct {v0}, LAk/s$a;-><init>()V

    return-object v0
.end method

.method public static y(Ljava/lang/Object;)LAk/s;
    .locals 1

    instance-of v0, p0, LAk/s;

    if-eqz v0, :cond_0

    check-cast p0, LAk/s;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/s;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/s;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()LFk/p0;
    .locals 1

    iget-object v0, p0, LAk/s;->c:LFk/p0;

    return-object v0
.end method

.method public B()LBk/e;
    .locals 1

    iget-object v0, p0, LAk/s;->b:LBk/e;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 8

    new-instance v0, Loh/G0;

    iget-object v1, p0, LAk/s;->b:LBk/e;

    iget-object v2, p0, LAk/s;->c:LFk/p0;

    iget-object v3, p0, LAk/s;->d:Loh/e;

    iget-object v4, p0, LAk/s;->e:LFk/w0;

    iget-object v5, p0, LAk/s;->f:LAk/O;

    const/4 v6, 0x5

    new-array v6, v6, [Loh/g;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    invoke-direct {v0, v6}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public v()LAk/O;
    .locals 1

    iget-object v0, p0, LAk/s;->f:LAk/O;

    return-object v0
.end method

.method public x()LFk/w0;
    .locals 1

    iget-object v0, p0, LAk/s;->e:LFk/w0;

    return-object v0
.end method

.method public z()Loh/e;
    .locals 1

    iget-object v0, p0, LAk/s;->d:Loh/e;

    return-object v0
.end method

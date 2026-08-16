.class public LAk/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LBk/e;

.field public b:LFk/p0;

.field public c:Loh/e;

.field public d:LFk/w0;

.field public e:LAk/O;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/s;
    .locals 7

    new-instance v6, LAk/s;

    iget-object v1, p0, LAk/s$a;->a:LBk/e;

    iget-object v2, p0, LAk/s$a;->b:LFk/p0;

    iget-object v3, p0, LAk/s$a;->c:Loh/e;

    iget-object v4, p0, LAk/s$a;->d:LFk/w0;

    iget-object v5, p0, LAk/s$a;->e:LAk/O;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LAk/s;-><init>(LBk/e;LFk/p0;Loh/e;LFk/w0;LAk/O;)V

    return-object v6
.end method

.method public b()LAk/v;
    .locals 5

    iget-object v0, p0, LAk/s$a;->c:Loh/e;

    if-eqz v0, :cond_1

    sget-object v1, Loh/e;->g:Loh/e;

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "isFullCtl must be false for DeltaCtl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, LAk/v;

    iget-object v1, p0, LAk/s$a;->a:LBk/e;

    iget-object v2, p0, LAk/s$a;->b:LFk/p0;

    iget-object v3, p0, LAk/s$a;->d:LFk/w0;

    iget-object v4, p0, LAk/s$a;->e:LAk/O;

    invoke-direct {v0, v1, v2, v3, v4}, LAk/v;-><init>(LBk/e;LFk/p0;LFk/w0;LAk/O;)V

    return-object v0
.end method

.method public c()LAk/D;
    .locals 7

    new-instance v6, LAk/D;

    iget-object v1, p0, LAk/s$a;->a:LBk/e;

    iget-object v2, p0, LAk/s$a;->b:LFk/p0;

    iget-object v3, p0, LAk/s$a;->c:Loh/e;

    iget-object v4, p0, LAk/s$a;->d:LFk/w0;

    iget-object v5, p0, LAk/s$a;->e:LAk/O;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LAk/D;-><init>(LBk/e;LFk/p0;Loh/e;LFk/w0;LAk/O;)V

    return-object v6
.end method

.method public d()LAk/Y;
    .locals 7

    new-instance v6, LAk/Y;

    iget-object v1, p0, LAk/s$a;->a:LBk/e;

    iget-object v2, p0, LAk/s$a;->b:LFk/p0;

    iget-object v3, p0, LAk/s$a;->c:Loh/e;

    iget-object v4, p0, LAk/s$a;->d:LFk/w0;

    iget-object v5, p0, LAk/s$a;->e:LAk/O;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LAk/Y;-><init>(LBk/e;LFk/p0;Loh/e;LFk/w0;LAk/O;)V

    return-object v6
.end method

.method public e(LAk/O;)LAk/s$a;
    .locals 0

    iput-object p1, p0, LAk/s$a;->e:LAk/O;

    return-object p0
.end method

.method public f(LFk/w0;)LAk/s$a;
    .locals 0

    iput-object p1, p0, LAk/s$a;->d:LFk/w0;

    return-object p0
.end method

.method public g(Loh/s;)LAk/s$a;
    .locals 1

    new-instance v0, LFk/w0;

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, LFk/w0;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, LAk/s$a;->d:LFk/w0;

    return-object p0
.end method

.method public h(Loh/e;)LAk/s$a;
    .locals 0

    iput-object p1, p0, LAk/s$a;->c:Loh/e;

    return-object p0
.end method

.method public i(LFk/p0;)LAk/s$a;
    .locals 0

    iput-object p1, p0, LAk/s$a;->b:LFk/p0;

    return-object p0
.end method

.method public j(LBk/e;)LAk/s$a;
    .locals 0

    iput-object p1, p0, LAk/s$a;->a:LBk/e;

    return-object p0
.end method

.class public LFk/V;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements LFk/W;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFk/V$a;
    }
.end annotation


# instance fields
.field public final b:LFk/w0;

.field public final c:LFk/g0;


# direct methods
.method public constructor <init>(LFk/w0;LFk/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LFk/V;->b:LFk/w0;

    iput-object p2, p0, LFk/V;->c:LFk/g0;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/w0;->w(Ljava/lang/Object;)LFk/w0;

    move-result-object v0

    iput-object v0, p0, LFk/V;->b:LFk/w0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LFk/g0;->v(Ljava/lang/Object;)LFk/g0;

    move-result-object p1

    iput-object p1, p0, LFk/V;->c:LFk/g0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LFk/V$a;
    .locals 1

    new-instance v0, LFk/V$a;

    invoke-direct {v0}, LFk/V$a;-><init>()V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)LFk/V;
    .locals 1

    instance-of v0, p0, LFk/V;

    if-eqz v0, :cond_0

    check-cast p0, LFk/V;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/V;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/V;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, LFk/V;->b:LFk/w0;

    iget-object v1, p0, LFk/V;->c:LFk/g0;

    const/4 v2, 0x2

    new-array v2, v2, [Loh/g;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lzk/a;->e([Loh/g;)Loh/E;

    move-result-object v0

    return-object v0
.end method

.method public x()LFk/w0;
    .locals 1

    iget-object v0, p0, LFk/V;->b:LFk/w0;

    return-object v0
.end method

.method public y()LFk/g0;
    .locals 1

    iget-object v0, p0, LFk/V;->c:LFk/g0;

    return-object v0
.end method

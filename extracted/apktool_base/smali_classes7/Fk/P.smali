.class public LFk/P;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFk/P$a;
    }
.end annotation


# instance fields
.field public final b:LFk/O;

.field public final c:LFk/i0;


# direct methods
.method public constructor <init>(LFk/O;LFk/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LFk/P;->b:LFk/O;

    iput-object p2, p0, LFk/P;->c:LFk/i0;

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

    invoke-static {v0}, LFk/O;->u(Ljava/lang/Object;)LFk/O;

    move-result-object v0

    iput-object v0, p0, LFk/P;->b:LFk/O;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    const-class v0, LFk/i0;

    invoke-static {v0, p1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFk/i0;

    iput-object p1, p0, LFk/P;->c:LFk/i0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LFk/P$a;
    .locals 1

    new-instance v0, LFk/P$a;

    invoke-direct {v0}, LFk/P$a;-><init>()V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)LFk/P;
    .locals 1

    instance-of v0, p0, LFk/P;

    if-eqz v0, :cond_0

    check-cast p0, LFk/P;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/P;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/P;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, LFk/P;->b:LFk/O;

    iget-object v1, p0, LFk/P;->c:LFk/i0;

    invoke-static {v1}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v1

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

.method public x()LFk/O;
    .locals 1

    iget-object v0, p0, LFk/P;->b:LFk/O;

    return-object v0
.end method

.method public y()LFk/i0;
    .locals 1

    iget-object v0, p0, LFk/P;->c:LFk/i0;

    return-object v0
.end method

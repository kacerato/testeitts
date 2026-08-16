.class public LFk/e;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements LFk/W;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFk/e$a;
    }
.end annotation


# instance fields
.field public final b:LFk/g;

.field public final c:LFk/h0;


# direct methods
.method public constructor <init>(LFk/g;LFk/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LFk/e;->b:LFk/g;

    invoke-static {p2}, LFk/h0;->v(Ljava/lang/Object;)LFk/h0;

    move-result-object p1

    iput-object p1, p0, LFk/e;->c:LFk/h0;

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

    invoke-static {v0}, LFk/g;->y(Ljava/lang/Object;)LFk/g;

    move-result-object v0

    iput-object v0, p0, LFk/e;->b:LFk/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LFk/h0;->v(Ljava/lang/Object;)LFk/h0;

    move-result-object p1

    iput-object p1, p0, LFk/e;->c:LFk/h0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LFk/e$a;
    .locals 1

    new-instance v0, LFk/e$a;

    invoke-direct {v0}, LFk/e$a;-><init>()V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)LFk/e;
    .locals 1

    instance-of v0, p0, LFk/e;

    if-eqz v0, :cond_0

    check-cast p0, LFk/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/e;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/e;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, LFk/e;->b:LFk/g;

    iget-object v1, p0, LFk/e;->c:LFk/h0;

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

.method public v()LFk/g;
    .locals 1

    iget-object v0, p0, LFk/e;->b:LFk/g;

    return-object v0
.end method

.method public x()LFk/h0;
    .locals 1

    iget-object v0, p0, LFk/e;->c:LFk/h0;

    return-object v0
.end method

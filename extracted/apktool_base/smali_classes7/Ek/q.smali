.class public LEk/q;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEk/q$a;
    }
.end annotation


# instance fields
.field public final b:LFk/w0;

.field public final c:LEk/p;


# direct methods
.method public constructor <init>(LFk/w0;LEk/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LEk/q;->b:LFk/w0;

    iput-object p2, p0, LEk/q;->c:LEk/p;

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

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LFk/w0;->w(Ljava/lang/Object;)LFk/w0;

    move-result-object v0

    iput-object v0, p0, LEk/q;->b:LFk/w0;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LEk/p;->y(Ljava/lang/Object;)LEk/p;

    move-result-object p1

    iput-object p1, p0, LEk/q;->c:LEk/p;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LEk/q$a;
    .locals 1

    new-instance v0, LEk/q$a;

    invoke-direct {v0}, LEk/q$a;-><init>()V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)LEk/q;
    .locals 1

    instance-of v0, p0, LEk/q;

    if-eqz v0, :cond_0

    check-cast p0, LEk/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/q;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, LEk/q;->b:LFk/w0;

    iget-object v1, p0, LEk/q;->c:LEk/p;

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

.method public v()LEk/p;
    .locals 1

    iget-object v0, p0, LEk/q;->c:LEk/p;

    return-object v0
.end method

.method public x()LFk/w0;
    .locals 1

    iget-object v0, p0, LEk/q;->b:LFk/w0;

    return-object v0
.end method

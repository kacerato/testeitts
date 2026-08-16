.class public LEk/I;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEk/I$a;
    }
.end annotation


# instance fields
.field public final b:LFk/x;

.field public final c:LEk/J;


# direct methods
.method public constructor <init>(LFk/x;LEk/J;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LEk/I;->b:LFk/x;

    iput-object p2, p0, LEk/I;->c:LEk/J;

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

    invoke-static {v0}, LFk/x;->v(Ljava/lang/Object;)LFk/x;

    move-result-object v0

    iput-object v0, p0, LEk/I;->b:LFk/x;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LEk/J;->w(Ljava/lang/Object;)LEk/J;

    move-result-object p1

    iput-object p1, p0, LEk/I;->c:LEk/J;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LEk/I$a;
    .locals 1

    new-instance v0, LEk/I$a;

    invoke-direct {v0}, LEk/I$a;-><init>()V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)LEk/I;
    .locals 1

    instance-of v0, p0, LEk/I;

    if-eqz v0, :cond_0

    check-cast p0, LEk/I;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/I;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/I;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, LEk/I;->b:LFk/x;

    iget-object v1, p0, LEk/I;->c:LEk/J;

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

.method public v()LEk/J;
    .locals 1

    iget-object v0, p0, LEk/I;->c:LEk/J;

    return-object v0
.end method

.method public x()LFk/y;
    .locals 1

    iget-object v0, p0, LEk/I;->b:LFk/x;

    return-object v0
.end method

.class public LEk/E;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEk/E$a;
    }
.end annotation


# instance fields
.field public final b:LFk/t;

.field public final c:LEk/L;

.field public final d:LEk/G;

.field public final e:LFk/j0;


# direct methods
.method public constructor <init>(LFk/t;LEk/L;LEk/G;LFk/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LEk/E;->b:LFk/t;

    iput-object p2, p0, LEk/E;->c:LEk/L;

    iput-object p3, p0, LEk/E;->d:LEk/G;

    iput-object p4, p0, LEk/E;->e:LFk/j0;

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

    invoke-static {v0}, LFk/t;->N(Ljava/lang/Object;)LFk/t;

    move-result-object v0

    iput-object v0, p0, LEk/E;->b:LFk/t;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LEk/L;->w(Ljava/lang/Object;)LEk/L;

    move-result-object v0

    iput-object v0, p0, LEk/E;->c:LEk/L;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LEk/G;->y(Ljava/lang/Object;)LEk/G;

    move-result-object v0

    iput-object v0, p0, LEk/E;->d:LEk/G;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LFk/j0;->y(Ljava/lang/Object;)LFk/j0;

    move-result-object p1

    iput-object p1, p0, LEk/E;->e:LFk/j0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LEk/E$a;
    .locals 1

    new-instance v0, LEk/E$a;

    invoke-direct {v0}, LEk/E$a;-><init>()V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)LEk/E;
    .locals 1

    instance-of v0, p0, LEk/E;

    if-eqz v0, :cond_0

    check-cast p0, LEk/E;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/E;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/E;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 6

    iget-object v0, p0, LEk/E;->b:LFk/t;

    iget-object v1, p0, LEk/E;->c:LEk/L;

    iget-object v2, p0, LEk/E;->d:LEk/G;

    iget-object v3, p0, LEk/E;->e:LFk/j0;

    const/4 v4, 0x4

    new-array v4, v4, [Loh/g;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lzk/a;->e([Loh/g;)Loh/E;

    move-result-object v0

    return-object v0
.end method

.method public v()LFk/t;
    .locals 1

    iget-object v0, p0, LEk/E;->b:LFk/t;

    return-object v0
.end method

.method public x()LFk/j0;
    .locals 1

    iget-object v0, p0, LEk/E;->e:LFk/j0;

    return-object v0
.end method

.method public y()LEk/G;
    .locals 1

    iget-object v0, p0, LEk/E;->d:LEk/G;

    return-object v0
.end method

.method public z()LEk/L;
    .locals 1

    iget-object v0, p0, LEk/E;->c:LEk/L;

    return-object v0
.end method

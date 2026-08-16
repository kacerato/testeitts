.class public LAk/U;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAk/U$a;
    }
.end annotation


# instance fields
.field public final b:LBk/e;

.field public final c:LFk/p0;

.field public final d:LFk/p0;

.field public final e:LAk/N;


# direct methods
.method public constructor <init>(LBk/e;LFk/p0;LFk/p0;LAk/N;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LAk/U;->b:LBk/e;

    iput-object p2, p0, LAk/U;->c:LFk/p0;

    iput-object p3, p0, LAk/U;->d:LFk/p0;

    iput-object p4, p0, LAk/U;->e:LAk/N;

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

    invoke-static {v0}, LBk/e;->u(Ljava/lang/Object;)LBk/e;

    move-result-object v0

    iput-object v0, p0, LAk/U;->b:LBk/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/p0;->x(Ljava/lang/Object;)LFk/p0;

    move-result-object v0

    iput-object v0, p0, LAk/U;->c:LFk/p0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/p0;->x(Ljava/lang/Object;)LFk/p0;

    move-result-object v0

    iput-object v0, p0, LAk/U;->d:LFk/p0;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LAk/N;->w(Ljava/lang/Object;)LAk/N;

    move-result-object p1

    iput-object p1, p0, LAk/U;->e:LAk/N;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LAk/U$a;
    .locals 1

    new-instance v0, LAk/U$a;

    invoke-direct {v0}, LAk/U$a;-><init>()V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)LAk/U;
    .locals 1

    instance-of v0, p0, LAk/U;

    if-eqz v0, :cond_0

    check-cast p0, LAk/U;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/U;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/U;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 7

    new-instance v0, Loh/G0;

    iget-object v1, p0, LAk/U;->b:LBk/e;

    iget-object v2, p0, LAk/U;->c:LFk/p0;

    iget-object v3, p0, LAk/U;->d:LFk/p0;

    iget-object v4, p0, LAk/U;->e:LAk/N;

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

.method public v()LAk/N;
    .locals 1

    iget-object v0, p0, LAk/U;->e:LAk/N;

    return-object v0
.end method

.method public x()LFk/p0;
    .locals 1

    iget-object v0, p0, LAk/U;->d:LFk/p0;

    return-object v0
.end method

.method public y()LFk/p0;
    .locals 1

    iget-object v0, p0, LAk/U;->c:LFk/p0;

    return-object v0
.end method

.method public z()LBk/e;
    .locals 1

    iget-object v0, p0, LAk/U;->b:LBk/e;

    return-object v0
.end method

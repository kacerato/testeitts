.class public LAk/E;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAk/E$a;
    }
.end annotation


# instance fields
.field public final b:LBk/d;

.field public final c:Loh/y;

.field public final d:LAk/P;

.field public final e:LBk/c;


# direct methods
.method public constructor <init>(LBk/d;Loh/y;LAk/P;LBk/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LAk/E;->b:LBk/d;

    iput-object p2, p0, LAk/E;->c:Loh/y;

    iput-object p3, p0, LAk/E;->d:LAk/P;

    iput-object p4, p0, LAk/E;->e:LBk/c;

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

    invoke-static {v0}, LBk/d;->v(Ljava/lang/Object;)LBk/d;

    move-result-object v0

    iput-object v0, p0, LAk/E;->b:LBk/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, LAk/E;->c:Loh/y;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LAk/P;->y(Ljava/lang/Object;)LAk/P;

    move-result-object v0

    iput-object v0, p0, LAk/E;->d:LAk/P;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LBk/c;->w(Ljava/lang/Object;)LBk/c;

    move-result-object p1

    iput-object p1, p0, LAk/E;->e:LBk/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LAk/E$a;
    .locals 1

    new-instance v0, LAk/E$a;

    invoke-direct {v0}, LAk/E$a;-><init>()V

    return-object v0
.end method

.method public static y(Ljava/lang/Object;)LAk/E;
    .locals 1

    instance-of v0, p0, LAk/E;

    if-eqz v0, :cond_0

    check-cast p0, LAk/E;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/E;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/E;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()LAk/P;
    .locals 1

    iget-object v0, p0, LAk/E;->d:LAk/P;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 7

    new-instance v0, Loh/G0;

    iget-object v1, p0, LAk/E;->b:LBk/d;

    iget-object v2, p0, LAk/E;->c:Loh/y;

    iget-object v3, p0, LAk/E;->d:LAk/P;

    iget-object v4, p0, LAk/E;->e:LBk/c;

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

.method public v()LBk/c;
    .locals 1

    iget-object v0, p0, LAk/E;->e:LBk/c;

    return-object v0
.end method

.method public x()Loh/y;
    .locals 1

    iget-object v0, p0, LAk/E;->c:Loh/y;

    return-object v0
.end method

.method public z()LBk/d;
    .locals 1

    iget-object v0, p0, LAk/E;->b:LBk/d;

    return-object v0
.end method

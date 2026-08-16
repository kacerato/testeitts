.class public LAk/l;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAk/l$a;
    }
.end annotation


# instance fields
.field public final b:LBk/d;

.field public final c:LBk/b;


# direct methods
.method public constructor <init>(LBk/d;LBk/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LAk/l;->b:LBk/d;

    iput-object p2, p0, LAk/l;->c:LBk/b;

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

    invoke-static {v0}, LBk/d;->v(Ljava/lang/Object;)LBk/d;

    move-result-object v0

    iput-object v0, p0, LAk/l;->b:LBk/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LBk/b;->z(Ljava/lang/Object;)LBk/b;

    move-result-object p1

    iput-object p1, p0, LAk/l;->c:LBk/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LAk/l$a;
    .locals 1

    new-instance v0, LAk/l$a;

    invoke-direct {v0}, LAk/l$a;-><init>()V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)LAk/l;
    .locals 1

    instance-of v0, p0, LAk/l;

    if-eqz v0, :cond_0

    check-cast p0, LAk/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/l;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/G0;

    iget-object v1, p0, LAk/l;->b:LBk/d;

    iget-object v2, p0, LAk/l;->c:LBk/b;

    const/4 v3, 0x2

    new-array v3, v3, [Loh/g;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public x()LBk/d;
    .locals 1

    iget-object v0, p0, LAk/l;->b:LBk/d;

    return-object v0
.end method

.method public y()LBk/b;
    .locals 1

    iget-object v0, p0, LAk/l;->c:LBk/b;

    return-object v0
.end method

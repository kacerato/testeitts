.class public LFk/o;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFk/o$a;
    }
.end annotation


# instance fields
.field public final b:LFk/k;

.field public final c:Loh/y;

.field public final d:Loh/y;


# direct methods
.method public constructor <init>(LFk/k;Loh/y;Loh/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LFk/o;->b:LFk/k;

    iput-object p2, p0, LFk/o;->c:Loh/y;

    iput-object p3, p0, LFk/o;->d:Loh/y;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/k;->E(Ljava/lang/Object;)LFk/k;

    move-result-object v0

    iput-object v0, p0, LFk/o;->b:LFk/k;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, LFk/o;->c:Loh/y;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    iput-object p1, p0, LFk/o;->d:Loh/y;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LFk/o$a;
    .locals 1

    new-instance v0, LFk/o$a;

    invoke-direct {v0}, LFk/o$a;-><init>()V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)LFk/o;
    .locals 1

    instance-of v0, p0, LFk/o;

    if-eqz v0, :cond_0

    check-cast p0, LFk/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/o;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/o;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 6

    new-instance v0, Loh/G0;

    iget-object v1, p0, LFk/o;->b:LFk/k;

    iget-object v2, p0, LFk/o;->c:Loh/y;

    iget-object v3, p0, LFk/o;->d:Loh/y;

    const/4 v4, 0x3

    new-array v4, v4, [Loh/g;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public v()Loh/y;
    .locals 1

    iget-object v0, p0, LFk/o;->c:Loh/y;

    return-object v0
.end method

.method public x()Loh/y;
    .locals 1

    iget-object v0, p0, LFk/o;->d:Loh/y;

    return-object v0
.end method

.method public y()LFk/k;
    .locals 1

    iget-object v0, p0, LFk/o;->b:LFk/k;

    return-object v0
.end method

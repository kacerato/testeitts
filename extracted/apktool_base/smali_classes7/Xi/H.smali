.class public LXi/H;
.super LXi/K;
.source "SourceFile"


# instance fields
.field public final n:Loh/x;

.field public final o:Loh/x;

.field public final p:Loh/x;


# direct methods
.method public constructor <init>(LXi/G;Loh/x;Loh/x;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, LXi/H;-><init>(LXi/G;Loh/x;Loh/x;Loh/x;)V

    return-void
.end method

.method public constructor <init>(LXi/G;Loh/x;Loh/x;Loh/x;)V
    .locals 1

    .line 2
    invoke-direct {p0, p2, p1}, LXi/K;-><init>(Loh/x;LXi/G;)V

    instance-of v0, p1, LXi/K;

    if-eqz v0, :cond_1

    check-cast p1, LXi/K;

    invoke-virtual {p1}, LXi/K;->j()Loh/x;

    move-result-object p1

    invoke-virtual {p2, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "named parameters do not match publicKeyParamSet value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, LXi/H;->n:Loh/x;

    iput-object p3, p0, LXi/H;->o:Loh/x;

    iput-object p4, p0, LXi/H;->p:Loh/x;

    return-void
.end method


# virtual methods
.method public k()Loh/x;
    .locals 1

    iget-object v0, p0, LXi/H;->o:Loh/x;

    return-object v0
.end method

.method public l()Loh/x;
    .locals 1

    iget-object v0, p0, LXi/H;->p:Loh/x;

    return-object v0
.end method

.method public m()Loh/x;
    .locals 1

    iget-object v0, p0, LXi/H;->n:Loh/x;

    return-object v0
.end method

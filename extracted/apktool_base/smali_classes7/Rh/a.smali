.class public LRh/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;

.field public c:Lhi/h0;

.field public d:Loh/q;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LRh/a;->b:Loh/E;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v0

    iput-object v0, p0, LRh/a;->c:Lhi/h0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object p1

    iput-object p1, p0, LRh/a;->d:Loh/q;

    return-void
.end method

.method public static w(Ljava/lang/Object;)LRh/a;
    .locals 1

    instance-of v0, p0, LRh/a;

    if-eqz v0, :cond_0

    check-cast p0, LRh/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LRh/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LRh/a;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LRh/a;->b:Loh/E;

    return-object v0
.end method

.method public u()Loh/z0;
    .locals 3

    iget-object v0, p0, LRh/a;->d:Loh/q;

    if-eqz v0, :cond_1

    instance-of v1, v0, Loh/z0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Loh/z0;

    iget-object v1, p0, LRh/a;->d:Loh/q;

    invoke-virtual {v1}, Loh/q;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Loh/z0;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Loh/z0;

    :goto_1
    return-object v0
.end method

.method public v()Loh/q;
    .locals 1

    iget-object v0, p0, LRh/a;->d:Loh/q;

    return-object v0
.end method

.method public x()Lhi/h0;
    .locals 1

    iget-object v0, p0, LRh/a;->c:Lhi/h0;

    return-object v0
.end method

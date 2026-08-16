.class public Lpl/d$c;
.super Lpl/d$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lpl/d$u;-><init>(Lpl/d$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lpl/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lpl/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p2

    invoke-static {p2}, LXk/b;->u(Ljava/lang/Object;)LXk/b;

    move-result-object p2

    invoke-virtual {p2}, LXk/b;->v()[B

    move-result-object p2

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lpl/g;->q(Loh/x;)Lal/j;

    move-result-object v0

    new-instance v1, Lal/l;

    invoke-direct {v1, v0, p2}, Lal/l;-><init>(Lal/j;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p2

    invoke-virtual {p2}, Loh/c;->J()[B

    move-result-object p2

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, Lpl/g;->q(Loh/x;)Lal/j;

    move-result-object p1

    new-instance v0, Lal/l;

    invoke-direct {v0, p1, p2}, Lal/l;-><init>(Lal/j;[B)V

    return-object v0
.end method

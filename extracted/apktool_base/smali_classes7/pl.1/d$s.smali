.class public Lpl/d$s;
.super Lpl/d$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
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
    invoke-direct {p0}, Lpl/d$s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Lnl/j;

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->F()[B

    move-result-object v0

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LXk/s;->u(Ljava/lang/Object;)LXk/s;

    move-result-object p1

    invoke-static {p1}, Lpl/g;->G(LXk/s;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lnl/j;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

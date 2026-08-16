.class public Lpl/d$j;
.super Lpl/d$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
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
    invoke-direct {p0}, Lpl/d$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    invoke-static {p1}, LXk/j;->w(Ljava/lang/Object;)LXk/j;

    move-result-object p1

    new-instance p2, LRl/h;

    invoke-virtual {p1}, LXk/j;->x()I

    move-result v0

    invoke-virtual {p1}, LXk/j;->y()I

    move-result v1

    invoke-virtual {p1}, LXk/j;->v()LWl/e;

    move-result-object v2

    invoke-virtual {p1}, LXk/j;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, Lpl/g;->k(Loh/x;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, v2, p1}, LRl/h;-><init>(IILWl/e;Ljava/lang/String;)V

    return-object p2
.end method

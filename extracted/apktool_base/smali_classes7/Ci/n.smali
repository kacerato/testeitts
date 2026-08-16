.class public final LCi/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/N;


# instance fields
.field public a:LXi/N0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 1

    check-cast p1, LXi/N0;

    iput-object p1, p0, LCi/n;->a:LXi/N0;

    const-string v0, "X25519"

    invoke-static {v0, p1}, LCi/m;->c(Ljava/lang/String;LXi/N0;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public b(LBi/k;[BI)V
    .locals 1

    iget-object v0, p0, LCi/n;->a:LXi/N0;

    check-cast p1, LXi/O0;

    invoke-virtual {v0, p1, p2, p3}, LXi/N0;->f(LXi/O0;[BI)V

    return-void
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

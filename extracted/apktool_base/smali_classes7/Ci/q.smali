.class public LCi/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/N;


# instance fields
.field public final a:LBi/N;

.field public b:LXi/S0;


# direct methods
.method public constructor <init>(LBi/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCi/q;->a:LBi/N;

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 1

    check-cast p1, LXi/S0;

    iput-object p1, p0, LCi/q;->b:LXi/S0;

    iget-object v0, p0, LCi/q;->a:LBi/N;

    invoke-virtual {p1}, LXi/S0;->c()LXi/c;

    move-result-object p1

    invoke-interface {v0, p1}, LBi/N;->a(LBi/k;)V

    return-void
.end method

.method public b(LBi/k;[BI)V
    .locals 2

    check-cast p1, LXi/T0;

    iget-object v0, p0, LCi/q;->a:LBi/N;

    iget-object v1, p0, LCi/q;->b:LXi/S0;

    invoke-virtual {v1}, LXi/S0;->a()LXi/c;

    move-result-object v1

    invoke-interface {v0, v1}, LBi/N;->a(LBi/k;)V

    iget-object v0, p0, LCi/q;->a:LBi/N;

    invoke-virtual {p1}, LXi/T0;->a()LXi/c;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, LBi/N;->b(LBi/k;[BI)V

    iget-object v0, p0, LCi/q;->a:LBi/N;

    iget-object v1, p0, LCi/q;->b:LXi/S0;

    invoke-virtual {v1}, LXi/S0;->c()LXi/c;

    move-result-object v1

    invoke-interface {v0, v1}, LBi/N;->a(LBi/k;)V

    iget-object v0, p0, LCi/q;->a:LBi/N;

    invoke-virtual {p1}, LXi/T0;->b()LXi/c;

    move-result-object p1

    iget-object v1, p0, LCi/q;->a:LBi/N;

    invoke-interface {v1}, LBi/N;->c()I

    move-result v1

    add-int/2addr p3, v1

    invoke-interface {v0, p1, p2, p3}, LBi/N;->b(LBi/k;[BI)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LCi/q;->a:LBi/N;

    invoke-interface {v0}, LBi/N;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

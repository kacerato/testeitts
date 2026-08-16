.class public final Lp2/q;
.super Lp2/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lp2/s;


# direct methods
.method public constructor <init>(Lp2/s;)V
    .locals 0

    iput-object p1, p0, Lp2/q;->c:Lp2/s;

    invoke-direct {p0}, Lp2/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lp2/q;->c:Lp2/s;

    iget-object v0, v0, Lp2/s;->c:Lp2/t;

    invoke-static {v0}, Lp2/t;->o(Lp2/t;)V

    iget-object v0, p0, Lp2/q;->c:Lp2/s;

    iget-object v0, v0, Lp2/s;->c:Lp2/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp2/t;->k(Lp2/t;Landroid/os/IInterface;)V

    iget-object v0, p0, Lp2/q;->c:Lp2/s;

    iget-object v0, v0, Lp2/s;->c:Lp2/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp2/t;->j(Lp2/t;Z)V

    return-void
.end method

.class public Lai/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, Lai/e;->a:Loh/h;

    return-void
.end method


# virtual methods
.method public a(Loh/x;)V
    .locals 2

    iget-object v0, p0, Lai/e;->a:Loh/h;

    new-instance v1, Loh/G0;

    invoke-direct {v1, p1}, Loh/G0;-><init>(Loh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    return-void
.end method

.method public b(Loh/x;I)V
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/s;

    int-to-long v1, p2

    invoke-direct {p1, v1, v2}, Loh/s;-><init>(J)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    iget-object p1, p0, Lai/e;->a:Loh/h;

    new-instance p2, Loh/G0;

    invoke-direct {p2, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    return-void
.end method

.method public c(Loh/x;Loh/g;)V
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0, p2}, Loh/h;->a(Loh/g;)V

    iget-object p1, p0, Lai/e;->a:Loh/h;

    new-instance p2, Loh/G0;

    invoke-direct {p2, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    return-void
.end method

.method public d()Loh/h;
    .locals 1

    iget-object v0, p0, Lai/e;->a:Loh/h;

    return-object v0
.end method

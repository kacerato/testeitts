.class public Lwh/t;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/E;

.field public c:Lwh/q;

.field public d:Lhi/h0;


# direct methods
.method public constructor <init>(Lhi/E;Lhi/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/t;->b:Lhi/E;

    iput-object p2, p0, Lwh/t;->d:Lhi/h0;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v2, v1, Loh/M;

    if-eqz v2, :cond_0

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Loh/V;->n(Loh/M;I)Loh/v;

    move-result-object v0

    invoke-static {v0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v0

    iput-object v0, p0, Lwh/t;->b:Lhi/E;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lwh/q;->v(Ljava/lang/Object;)Lwh/q;

    move-result-object v0

    iput-object v0, p0, Lwh/t;->c:Lwh/q;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    iput-object p1, p0, Lwh/t;->d:Lhi/h0;

    return-void
.end method

.method public constructor <init>(Lwh/q;Lhi/h0;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/t;->c:Lwh/q;

    iput-object p2, p0, Lwh/t;->d:Lhi/h0;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lwh/t;
    .locals 1

    instance-of v0, p0, Lwh/t;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/t;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/t;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/t;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lwh/t;->b:Lhi/E;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lwh/t;->c:Lwh/q;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :goto_0
    iget-object v1, p0, Lwh/t;->d:Lhi/h0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lhi/h0;
    .locals 1

    iget-object v0, p0, Lwh/t;->d:Lhi/h0;

    return-object v0
.end method

.method public x()Lwh/q;
    .locals 1

    iget-object v0, p0, Lwh/t;->c:Lwh/q;

    return-object v0
.end method

.method public y()Lhi/E;
    .locals 1

    iget-object v0, p0, Lwh/t;->b:Lhi/E;

    return-object v0
.end method

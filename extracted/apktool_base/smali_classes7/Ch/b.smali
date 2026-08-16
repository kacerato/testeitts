.class public LCh/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/x;

    iput-object v0, p0, LCh/b;->b:Loh/x;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/E;

    iput-object p1, p0, LCh/b;->c:Loh/E;

    :cond_0
    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/b;->b:Loh/x;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/b;->b:Loh/x;

    iput-object p2, p0, LCh/b;->c:Loh/E;

    return-void
.end method

.method public static w(Ljava/lang/Object;)LCh/b;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, LCh/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LCh/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    :goto_0
    check-cast p0, LCh/b;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LCh/b;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LCh/b;->c:Loh/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, LCh/b;->b:Loh/x;

    return-object v0
.end method

.method public v()Loh/E;
    .locals 1

    iget-object v0, p0, LCh/b;->c:Loh/E;

    return-object v0
.end method

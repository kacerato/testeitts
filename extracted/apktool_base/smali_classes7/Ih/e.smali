.class public LIh/e;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/C;

.field public c:Loh/C;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/F0;

    invoke-direct {v0, p1}, Loh/F0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LIh/e;->b:Loh/C;

    new-instance p1, Loh/F0;

    invoke-direct {p1, p2}, Loh/F0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LIh/e;->c:Loh/C;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/C;->F(Ljava/lang/Object;)Loh/C;

    move-result-object v0

    iput-object v0, p0, LIh/e;->b:Loh/C;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/C;->F(Ljava/lang/Object;)Loh/C;

    move-result-object p1

    iput-object p1, p0, LIh/e;->c:Loh/C;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for LDSVersionInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)LIh/e;
    .locals 1

    instance-of v0, p0, LIh/e;

    if-eqz v0, :cond_0

    check-cast p0, LIh/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LIh/e;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LIh/e;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LIh/e;->b:Loh/C;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LIh/e;->c:Loh/C;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIh/e;->b:Loh/C;

    invoke-virtual {v0}, Loh/C;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIh/e;->c:Loh/C;

    invoke-virtual {v0}, Loh/C;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

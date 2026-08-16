.class public LDh/e;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/g;

.field public c:Lhi/K;


# direct methods
.method public constructor <init>(Lhi/b;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Lhi/w;

    invoke-direct {v0, p1, p2}, Lhi/w;-><init>(Lhi/b;[B)V

    iput-object v0, p0, LDh/e;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Lhi/b;[BLhi/K;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Lhi/w;

    invoke-direct {v0, p1, p2}, Lhi/w;-><init>(Lhi/b;[B)V

    iput-object v0, p0, LDh/e;->b:Loh/g;

    iput-object p3, p0, LDh/e;->c:Lhi/K;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-interface {v2}, Loh/g;->r()Loh/B;

    move-result-object v2

    instance-of v2, v2, Loh/y;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LDh/e;->b:Loh/g;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lhi/w;->w(Ljava/lang/Object;)Lhi/w;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/K;->u(Ljava/lang/Object;)Lhi/K;

    move-result-object p1

    iput-object p1, p0, LDh/e;->c:Lhi/K;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(Ljava/lang/Object;)LDh/e;
    .locals 1

    instance-of v0, p0, LDh/e;

    if-eqz v0, :cond_0

    check-cast p0, LDh/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LDh/e;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LDh/e;-><init>(Loh/E;)V

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

    iget-object v1, p0, LDh/e;->b:Loh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LDh/e;->c:Lhi/K;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 2

    iget-object v0, p0, LDh/e;->b:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/y;

    if-eqz v0, :cond_0

    new-instance v0, Lhi/b;

    sget-object v1, LWh/b;->i:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    return-object v0

    :cond_0
    iget-object v0, p0, LDh/e;->b:Loh/g;

    invoke-static {v0}, Lhi/w;->w(Ljava/lang/Object;)Lhi/w;

    move-result-object v0

    invoke-virtual {v0}, Lhi/w;->u()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, LDh/e;->b:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, LDh/e;->b:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    check-cast v0, Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, LDh/e;->b:Loh/g;

    invoke-static {v0}, Lhi/w;->w(Ljava/lang/Object;)Lhi/w;

    move-result-object v0

    invoke-virtual {v0}, Lhi/w;->v()[B

    move-result-object v0

    return-object v0
.end method

.method public x()Lhi/K;
    .locals 1

    iget-object v0, p0, LDh/e;->c:Lhi/K;

    return-object v0
.end method

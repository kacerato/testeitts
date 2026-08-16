.class public Lhi/p0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/Q;

.field public final c:Lhi/x;


# direct methods
.method public constructor <init>(Lhi/Q;Lhi/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/p0;->b:Lhi/Q;

    iput-object p2, p0, Lhi/p0;->c:Lhi/x;

    return-void
.end method

.method public constructor <init>(Lhi/Q;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lhi/x;

    invoke-direct {v0, p2}, Lhi/x;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lhi/p0;-><init>(Lhi/Q;Lhi/x;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/Q;->v(Ljava/lang/Object;)Lhi/Q;

    move-result-object v0

    iput-object v0, p0, Lhi/p0;->b:Lhi/Q;

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/x;->u(Ljava/lang/Object;)Lhi/x;

    move-result-object p1

    iput-object p1, p0, Lhi/p0;->c:Lhi/x;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/E;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lhi/Q;->v(Ljava/lang/Object;)Lhi/Q;

    move-result-object p1

    iput-object p1, p0, Lhi/p0;->b:Lhi/Q;

    :goto_0
    iput-object v1, p0, Lhi/p0;->c:Lhi/x;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lhi/x;->u(Ljava/lang/Object;)Lhi/x;

    move-result-object p1

    iput-object p1, p0, Lhi/p0;->c:Lhi/x;

    iput-object v1, p0, Lhi/p0;->b:Lhi/Q;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lhi/p0;->b:Lhi/Q;

    goto :goto_0

    :goto_1
    return-void

    :cond_3
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

.method public static v(Ljava/lang/Object;)Lhi/p0;
    .locals 1

    instance-of v0, p0, Lhi/p0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/p0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/p0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/p0;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lhi/p0;->b:Lhi/Q;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/p0;->c:Lhi/x;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/x;
    .locals 1

    iget-object v0, p0, Lhi/p0;->c:Lhi/x;

    return-object v0
.end method

.method public x()Lhi/Q;
    .locals 1

    iget-object v0, p0, Lhi/p0;->b:Lhi/Q;

    return-object v0
.end method

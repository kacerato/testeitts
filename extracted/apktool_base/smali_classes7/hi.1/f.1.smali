.class public Lhi/f;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/n;

.field public c:Loh/n;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lhi/f;->b:Loh/n;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object p1

    iput-object p1, p0, Lhi/f;->c:Loh/n;

    return-void

    :cond_0
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

.method public constructor <init>(Loh/n;Loh/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/f;->b:Loh/n;

    iput-object p2, p0, Lhi/f;->c:Loh/n;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lhi/f;
    .locals 1

    instance-of v0, p0, Lhi/f;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/f;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/f;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lhi/f;->b:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/f;->c:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/n;
    .locals 1

    iget-object v0, p0, Lhi/f;->c:Loh/n;

    return-object v0
.end method

.method public x()Loh/n;
    .locals 1

    iget-object v0, p0, Lhi/f;->b:Loh/n;

    return-object v0
.end method

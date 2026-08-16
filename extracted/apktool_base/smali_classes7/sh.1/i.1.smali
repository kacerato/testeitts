.class public Lsh/i;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsh/i$a;
    }
.end annotation


# instance fields
.field public final b:Lsh/h;

.field public final c:Loh/E;

.field public final d:Loh/Q;

.field public final e:Lsh/i$a;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lsh/h;->u(Ljava/lang/Object;)Lsh/h;

    move-result-object v0

    iput-object v0, p0, Lsh/i;->b:Lsh/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lsh/i;->c:Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object v0

    iput-object v0, p0, Lsh/i;->d:Loh/Q;

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lsh/i$a;->u(Ljava/lang/Object;)Lsh/i$a;

    move-result-object p1

    iput-object p1, p0, Lsh/i;->e:Lsh/i$a;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/Q;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object p1

    iput-object p1, p0, Lsh/i;->d:Loh/Q;

    :goto_1
    iput-object v2, p0, Lsh/i;->e:Lsh/i$a;

    goto :goto_2

    :cond_1
    iput-object v2, p0, Lsh/i;->d:Loh/Q;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lsh/i;->d:Loh/Q;

    goto :goto_1

    :goto_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsh/h;Loh/E;Loh/Q;Lsh/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/i;->b:Lsh/h;

    iput-object p2, p0, Lsh/i;->c:Loh/E;

    iput-object p3, p0, Lsh/i;->d:Loh/Q;

    iput-object p4, p0, Lsh/i;->e:Lsh/i$a;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lsh/i;
    .locals 1

    instance-of v0, p0, Lsh/i;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/i;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/i;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lsh/i;->e:Lsh/i$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/i;->b:Lsh/h;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/i;->c:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/i;->d:Loh/Q;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lsh/i;->e:Lsh/i$a;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[Lsh/a;
    .locals 1

    iget-object v0, p0, Lsh/i;->c:Loh/E;

    invoke-static {v0}, Lsh/K;->c(Loh/E;)[Lsh/a;

    move-result-object v0

    return-object v0
.end method

.method public v()Lsh/h;
    .locals 1

    iget-object v0, p0, Lsh/i;->b:Lsh/h;

    return-object v0
.end method

.method public x()Lsh/i$a;
    .locals 1

    iget-object v0, p0, Lsh/i;->e:Lsh/i$a;

    return-object v0
.end method

.method public y()Loh/M0;
    .locals 2

    iget-object v0, p0, Lsh/i;->d:Loh/Q;

    if-eqz v0, :cond_1

    instance-of v1, v0, Loh/M0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Loh/M0;

    iget-object v1, p0, Lsh/i;->d:Loh/Q;

    invoke-virtual {v1}, Loh/Q;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/M0;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Loh/M0;

    :goto_1
    return-object v0
.end method

.method public z()Loh/Q;
    .locals 1

    iget-object v0, p0, Lsh/i;->d:Loh/Q;

    return-object v0
.end method

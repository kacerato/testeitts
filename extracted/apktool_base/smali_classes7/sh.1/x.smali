.class public Lsh/x;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lsh/c;

.field public final c:Lsh/b;

.field public final d:Z

.field public final e:Lwh/g;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lsh/c;->v(Ljava/lang/Object;)Lsh/c;

    move-result-object v0

    iput-object v0, p0, Lsh/x;->b:Lsh/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lsh/b;->v(Ljava/lang/Object;)Lsh/b;

    move-result-object v3

    iput-object v3, p0, Lsh/x;->c:Lsh/b;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v2, :cond_2

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/e;->G(Ljava/lang/Object;)Loh/e;

    move-result-object v0

    invoke-virtual {v0}, Loh/e;->J()Z

    move-result v0

    iput-boolean v0, p0, Lsh/x;->d:Z

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lwh/g;->v(Ljava/lang/Object;)Lwh/g;

    move-result-object p1

    iput-object p1, p0, Lsh/x;->e:Lwh/g;

    goto :goto_2

    :cond_2
    iput-boolean v0, p0, Lsh/x;->d:Z

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method public constructor <init>(Lsh/c;Lsh/b;ZLwh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/x;->b:Lsh/c;

    iput-object p2, p0, Lsh/x;->c:Lsh/b;

    iput-boolean p3, p0, Lsh/x;->d:Z

    iput-object p4, p0, Lsh/x;->e:Lwh/g;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lsh/x;
    .locals 1

    instance-of v0, p0, Lsh/x;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/x;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/x;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/x;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/x;->b:Lsh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/x;->c:Lsh/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-boolean v1, p0, Lsh/x;->d:Z

    if-nez v1, :cond_0

    invoke-static {v1}, Loh/e;->I(Z)Loh/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lsh/x;->e:Lwh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lsh/b;
    .locals 1

    iget-object v0, p0, Lsh/x;->c:Lsh/b;

    return-object v0
.end method

.method public v()Lwh/g;
    .locals 1

    iget-object v0, p0, Lsh/x;->e:Lwh/g;

    return-object v0
.end method

.method public x()Lsh/c;
    .locals 1

    iget-object v0, p0, Lsh/x;->b:Lsh/c;

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lsh/x;->d:Z

    return v0
.end method

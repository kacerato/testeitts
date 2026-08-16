.class public Lth/o;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lth/o$a;
    }
.end annotation


# instance fields
.field public final b:Lhi/b;

.field public final c:Loh/y;

.field public final d:Loh/y;


# direct methods
.method public constructor <init>(Lhi/b;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/o;->b:Lhi/b;

    new-instance p1, Loh/C0;

    invoke-direct {p1, p2}, Loh/C0;-><init>([B)V

    iput-object p1, p0, Lth/o;->c:Loh/y;

    new-instance p1, Loh/C0;

    invoke-direct {p1, p3}, Loh/C0;-><init>([B)V

    iput-object p1, p0, Lth/o;->d:Loh/y;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lth/o;->b:Lhi/b;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lth/o;->b:Lhi/b;

    :goto_0
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    iput-object v1, p0, Lth/o;->c:Loh/y;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    iput-object p1, p0, Lth/o;->d:Loh/y;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lth/o;-><init>(Lhi/b;[B[B)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lth/o;
    .locals 1

    instance-of v0, p0, Lth/o;

    if-eqz v0, :cond_0

    check-cast p0, Lth/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/o;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/o;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/o;->b:Lhi/b;

    invoke-virtual {p0, v0, v1}, Lth/o;->u(Loh/h;Loh/g;)V

    iget-object v1, p0, Lth/o;->c:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/o;->d:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public final u(Loh/h;Loh/g;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, Lth/o;->d:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Lth/o;->b:Lhi/b;

    return-object v0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, Lth/o;->c:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0
.end method

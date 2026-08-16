.class public final LA2/U;
.super LA2/g;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "LA2/g<",
        "TN;>;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public f:Z

.field public g:LA2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/s<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public h:Lw2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/C<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, LA2/g;-><init>(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LA2/U;->f:Z

    invoke-static {}, LA2/s;->d()LA2/s;

    move-result-object p1

    iput-object p1, p0, LA2/U;->g:LA2/s;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object p1

    iput-object p1, p0, LA2/U;->h:Lw2/C;

    return-void
.end method

.method public static e()LA2/U;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/U<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LA2/U;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LA2/U;-><init>(Z)V

    return-object v0
.end method

.method public static i(LA2/T;)LA2/U;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "TN;TE;>;)",
            "LA2/U<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, LA2/U;

    invoke-interface {p0}, LA2/T;->c()Z

    move-result v1

    invoke-direct {v0, v1}, LA2/U;-><init>(Z)V

    invoke-interface {p0}, LA2/T;->C()Z

    move-result v1

    invoke-virtual {v0, v1}, LA2/U;->a(Z)LA2/U;

    move-result-object v0

    invoke-interface {p0}, LA2/T;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, LA2/U;->b(Z)LA2/U;

    move-result-object v0

    invoke-interface {p0}, LA2/T;->k()LA2/s;

    move-result-object v1

    invoke-virtual {v0, v1}, LA2/U;->k(LA2/s;)LA2/U;

    move-result-object v0

    invoke-interface {p0}, LA2/T;->w()LA2/s;

    move-result-object p0

    invoke-virtual {v0, p0}, LA2/U;->f(LA2/s;)LA2/U;

    move-result-object p0

    return-object p0
.end method

.method public static l()LA2/U;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/U<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LA2/U;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LA2/U;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public a(Z)LA2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LA2/U<",
            "TN;TE;>;"
        }
    .end annotation

    iput-boolean p1, p0, LA2/U;->f:Z

    return-object p0
.end method

.method public b(Z)LA2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LA2/U<",
            "TN;TE;>;"
        }
    .end annotation

    iput-boolean p1, p0, LA2/g;->b:Z

    return-object p0
.end method

.method public c()LA2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "LA2/Q<",
            "TN1;TE1;>;"
        }
    .end annotation

    new-instance v0, LA2/Z;

    invoke-direct {v0, p0}, LA2/Z;-><init>(LA2/U;)V

    return-object v0
.end method

.method public final d()LA2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "LA2/U<",
            "TN1;TE1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public f(LA2/s;)LA2/U;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:TE;>(",
            "LA2/s<",
            "TE1;>;)",
            "LA2/U<",
            "TN;TE1;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/U;->d()LA2/U;

    move-result-object v0

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA2/s;

    iput-object p1, v0, LA2/U;->g:LA2/s;

    return-object v0
.end method

.method public g(I)LA2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LA2/U<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-static {p1}, LA2/D;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object p1

    iput-object p1, p0, LA2/U;->h:Lw2/C;

    return-object p0
.end method

.method public h(I)LA2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LA2/U<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-static {p1}, LA2/D;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object p1

    iput-object p1, p0, LA2/g;->e:Lw2/C;

    return-object p0
.end method

.method public j()LA2/I$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "LA2/I$a<",
            "TN1;TE1;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/U;->d()LA2/U;

    move-result-object v0

    new-instance v1, LA2/I$a;

    invoke-direct {v1, v0}, LA2/I$a;-><init>(LA2/U;)V

    return-object v1
.end method

.method public k(LA2/s;)LA2/U;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "LA2/s<",
            "TN1;>;)",
            "LA2/U<",
            "TN1;TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/U;->d()LA2/U;

    move-result-object v0

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA2/s;

    iput-object p1, v0, LA2/g;->c:LA2/s;

    return-object v0
.end method

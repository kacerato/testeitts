.class public final Lokhttp3/s;
.super Lokhttp3/D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/s$a;
    }
.end annotation


# static fields
.field public static final c:Lokhttp3/x;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lokhttp3/x;->c(Ljava/lang/String;)Lokhttp3/x;

    move-result-object v0

    sput-object v0, Lokhttp3/s;->c:Lokhttp3/x;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/D;-><init>()V

    invoke-static {p1}, LGg/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/s;->a:Ljava/util/List;

    invoke-static {p2}, LGg/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/s;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lokhttp3/s;->n(LTg/d;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lokhttp3/x;
    .locals 1

    sget-object v0, Lokhttp3/s;->c:Lokhttp3/x;

    return-object v0
.end method

.method public h(LTg/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/s;->n(LTg/d;Z)J

    return-void
.end method

.method public i(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public j(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/s;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public k(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lokhttp3/s;->i(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lokhttp3/v;->A(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lokhttp3/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lokhttp3/s;->j(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lokhttp3/v;->A(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final n(LTg/d;Z)J
    .locals 3
    .param p1    # LTg/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    new-instance p1, LTg/c;

    invoke-direct {p1}, LTg/c;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LTg/d;->C()LTg/c;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lokhttp3/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x26

    invoke-virtual {p1, v2}, LTg/c;->d0(I)LTg/c;

    :cond_1
    iget-object v2, p0, Lokhttp3/s;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, LTg/c;->u0(Ljava/lang/String;)LTg/c;

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, LTg/c;->d0(I)LTg/c;

    iget-object v2, p0, Lokhttp3/s;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, LTg/c;->u0(Ljava/lang/String;)LTg/c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, LTg/c;->Q()J

    move-result-wide v0

    invoke-virtual {p1}, LTg/c;->c()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method

.class public final LA2/N;
.super LA2/M;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA2/N$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LA2/M<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile transient c:LA2/N$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/N$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public volatile transient d:LA2/N$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/N$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LA2/M;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-super {p0}, LA2/M;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, LA2/N;->c:LA2/N$a;

    iput-object v0, p0, LA2/N;->d:LA2/N$a;

    return-void
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LA2/N;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, LA2/M;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, LA2/N;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1}, LA2/M;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, LA2/N;->c:LA2/N$a;

    if-eqz v0, :cond_1

    iget-object v1, v0, LA2/N$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, LA2/N$a;->b:Ljava/lang/Object;

    return-object p1

    :cond_1
    iget-object v0, p0, LA2/N;->d:LA2/N$a;

    if-eqz v0, :cond_2

    iget-object v1, v0, LA2/N$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    invoke-virtual {p0, v0}, LA2/N;->l(LA2/N$a;)V

    iget-object p1, v0, LA2/N$a;->b:Ljava/lang/Object;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final l(LA2/N$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/N$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, LA2/N;->c:LA2/N$a;

    iput-object v0, p0, LA2/N;->d:LA2/N$a;

    iput-object p1, p0, LA2/N;->c:LA2/N$a;

    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    new-instance v0, LA2/N$a;

    invoke-direct {v0, p1, p2}, LA2/N$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LA2/N;->l(LA2/N$a;)V

    return-void
.end method

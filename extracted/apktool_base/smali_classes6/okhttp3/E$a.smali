.class public Lokhttp3/E$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lokhttp3/C;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Lokhttp3/A;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lokhttp3/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public f:Lokhttp3/u$a;

.field public g:Lokhttp3/F;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public h:Lokhttp3/E;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public i:Lokhttp3/E;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public j:Lokhttp3/E;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lokhttp3/E$a;->c:I

    .line 3
    new-instance v0, Lokhttp3/u$a;

    invoke-direct {v0}, Lokhttp3/u$a;-><init>()V

    iput-object v0, p0, Lokhttp3/E$a;->f:Lokhttp3/u$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/E;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lokhttp3/E$a;->c:I

    .line 6
    iget-object v0, p1, Lokhttp3/E;->b:Lokhttp3/C;

    iput-object v0, p0, Lokhttp3/E$a;->a:Lokhttp3/C;

    .line 7
    iget-object v0, p1, Lokhttp3/E;->c:Lokhttp3/A;

    iput-object v0, p0, Lokhttp3/E$a;->b:Lokhttp3/A;

    .line 8
    iget v0, p1, Lokhttp3/E;->d:I

    iput v0, p0, Lokhttp3/E$a;->c:I

    .line 9
    iget-object v0, p1, Lokhttp3/E;->e:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/E$a;->d:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lokhttp3/E;->f:Lokhttp3/t;

    iput-object v0, p0, Lokhttp3/E$a;->e:Lokhttp3/t;

    .line 11
    iget-object v0, p1, Lokhttp3/E;->g:Lokhttp3/u;

    invoke-virtual {v0}, Lokhttp3/u;->i()Lokhttp3/u$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/E$a;->f:Lokhttp3/u$a;

    .line 12
    iget-object v0, p1, Lokhttp3/E;->h:Lokhttp3/F;

    iput-object v0, p0, Lokhttp3/E$a;->g:Lokhttp3/F;

    .line 13
    iget-object v0, p1, Lokhttp3/E;->i:Lokhttp3/E;

    iput-object v0, p0, Lokhttp3/E$a;->h:Lokhttp3/E;

    .line 14
    iget-object v0, p1, Lokhttp3/E;->j:Lokhttp3/E;

    iput-object v0, p0, Lokhttp3/E$a;->i:Lokhttp3/E;

    .line 15
    iget-object v0, p1, Lokhttp3/E;->k:Lokhttp3/E;

    iput-object v0, p0, Lokhttp3/E$a;->j:Lokhttp3/E;

    .line 16
    iget-wide v0, p1, Lokhttp3/E;->l:J

    iput-wide v0, p0, Lokhttp3/E$a;->k:J

    .line 17
    iget-wide v0, p1, Lokhttp3/E;->m:J

    iput-wide v0, p0, Lokhttp3/E$a;->l:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/E$a;
    .locals 1

    iget-object v0, p0, Lokhttp3/E$a;->f:Lokhttp3/u$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/u$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/u$a;

    return-object p0
.end method

.method public b(Lokhttp3/F;)Lokhttp3/E$a;
    .locals 0
    .param p1    # Lokhttp3/F;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/E$a;->g:Lokhttp3/F;

    return-object p0
.end method

.method public c()Lokhttp3/E;
    .locals 3

    iget-object v0, p0, Lokhttp3/E$a;->a:Lokhttp3/C;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/E$a;->b:Lokhttp3/A;

    if-eqz v0, :cond_2

    iget v0, p0, Lokhttp3/E$a;->c:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lokhttp3/E$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lokhttp3/E;

    invoke-direct {v0, p0}, Lokhttp3/E;-><init>(Lokhttp3/E$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/E$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lokhttp3/E;)Lokhttp3/E$a;
    .locals 1
    .param p1    # Lokhttp3/E;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-virtual {p0, v0, p1}, Lokhttp3/E$a;->f(Ljava/lang/String;Lokhttp3/E;)V

    :cond_0
    iput-object p1, p0, Lokhttp3/E$a;->i:Lokhttp3/E;

    return-object p0
.end method

.method public final e(Lokhttp3/E;)V
    .locals 1

    iget-object p1, p1, Lokhttp3/E;->h:Lokhttp3/F;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/lang/String;Lokhttp3/E;)V
    .locals 1

    iget-object v0, p2, Lokhttp3/E;->h:Lokhttp3/F;

    if-nez v0, :cond_3

    iget-object v0, p2, Lokhttp3/E;->i:Lokhttp3/E;

    if-nez v0, :cond_2

    iget-object v0, p2, Lokhttp3/E;->j:Lokhttp3/E;

    if-nez v0, :cond_1

    iget-object p2, p2, Lokhttp3/E;->k:Lokhttp3/E;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public g(I)Lokhttp3/E$a;
    .locals 0

    iput p1, p0, Lokhttp3/E$a;->c:I

    return-object p0
.end method

.method public h(Lokhttp3/t;)Lokhttp3/E$a;
    .locals 0
    .param p1    # Lokhttp3/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/E$a;->e:Lokhttp3/t;

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/E$a;
    .locals 1

    iget-object v0, p0, Lokhttp3/E$a;->f:Lokhttp3/u$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/u$a;->k(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/u$a;

    return-object p0
.end method

.method public j(Lokhttp3/u;)Lokhttp3/E$a;
    .locals 0

    invoke-virtual {p1}, Lokhttp3/u;->i()Lokhttp3/u$a;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/E$a;->f:Lokhttp3/u$a;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lokhttp3/E$a;
    .locals 0

    iput-object p1, p0, Lokhttp3/E$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public l(Lokhttp3/E;)Lokhttp3/E$a;
    .locals 1
    .param p1    # Lokhttp3/E;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-virtual {p0, v0, p1}, Lokhttp3/E$a;->f(Ljava/lang/String;Lokhttp3/E;)V

    :cond_0
    iput-object p1, p0, Lokhttp3/E$a;->h:Lokhttp3/E;

    return-object p0
.end method

.method public m(Lokhttp3/E;)Lokhttp3/E$a;
    .locals 0
    .param p1    # Lokhttp3/E;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lokhttp3/E$a;->e(Lokhttp3/E;)V

    :cond_0
    iput-object p1, p0, Lokhttp3/E$a;->j:Lokhttp3/E;

    return-object p0
.end method

.method public n(Lokhttp3/A;)Lokhttp3/E$a;
    .locals 0

    iput-object p1, p0, Lokhttp3/E$a;->b:Lokhttp3/A;

    return-object p0
.end method

.method public o(J)Lokhttp3/E$a;
    .locals 0

    iput-wide p1, p0, Lokhttp3/E$a;->l:J

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lokhttp3/E$a;
    .locals 1

    iget-object v0, p0, Lokhttp3/E$a;->f:Lokhttp3/u$a;

    invoke-virtual {v0, p1}, Lokhttp3/u$a;->j(Ljava/lang/String;)Lokhttp3/u$a;

    return-object p0
.end method

.method public q(Lokhttp3/C;)Lokhttp3/E$a;
    .locals 0

    iput-object p1, p0, Lokhttp3/E$a;->a:Lokhttp3/C;

    return-object p0
.end method

.method public r(J)Lokhttp3/E$a;
    .locals 0

    iput-wide p1, p0, Lokhttp3/E$a;->k:J

    return-object p0
.end method

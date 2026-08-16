.class public final Lokhttp3/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/E$a;
    }
.end annotation


# instance fields
.field public final b:Lokhttp3/C;

.field public final c:Lokhttp3/A;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Lokhttp3/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final g:Lokhttp3/u;

.field public final h:Lokhttp3/F;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final i:Lokhttp3/E;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lokhttp3/E;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:Lokhttp3/E;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final l:J

.field public final m:J

.field public volatile n:Lokhttp3/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/E$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/E$a;->a:Lokhttp3/C;

    iput-object v0, p0, Lokhttp3/E;->b:Lokhttp3/C;

    iget-object v0, p1, Lokhttp3/E$a;->b:Lokhttp3/A;

    iput-object v0, p0, Lokhttp3/E;->c:Lokhttp3/A;

    iget v0, p1, Lokhttp3/E$a;->c:I

    iput v0, p0, Lokhttp3/E;->d:I

    iget-object v0, p1, Lokhttp3/E$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/E;->e:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/E$a;->e:Lokhttp3/t;

    iput-object v0, p0, Lokhttp3/E;->f:Lokhttp3/t;

    iget-object v0, p1, Lokhttp3/E$a;->f:Lokhttp3/u$a;

    invoke-virtual {v0}, Lokhttp3/u$a;->h()Lokhttp3/u;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/E;->g:Lokhttp3/u;

    iget-object v0, p1, Lokhttp3/E$a;->g:Lokhttp3/F;

    iput-object v0, p0, Lokhttp3/E;->h:Lokhttp3/F;

    iget-object v0, p1, Lokhttp3/E$a;->h:Lokhttp3/E;

    iput-object v0, p0, Lokhttp3/E;->i:Lokhttp3/E;

    iget-object v0, p1, Lokhttp3/E$a;->i:Lokhttp3/E;

    iput-object v0, p0, Lokhttp3/E;->j:Lokhttp3/E;

    iget-object v0, p1, Lokhttp3/E$a;->j:Lokhttp3/E;

    iput-object v0, p0, Lokhttp3/E;->k:Lokhttp3/E;

    iget-wide v0, p1, Lokhttp3/E$a;->k:J

    iput-wide v0, p0, Lokhttp3/E;->l:J

    iget-wide v0, p1, Lokhttp3/E$a;->l:J

    iput-wide v0, p0, Lokhttp3/E;->m:J

    return-void
.end method


# virtual methods
.method public c()Lokhttp3/F;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/E;->h:Lokhttp3/F;

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lokhttp3/E;->h:Lokhttp3/F;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/F;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lokhttp3/d;
    .locals 1

    iget-object v0, p0, Lokhttp3/E;->n:Lokhttp3/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/E;->g:Lokhttp3/u;

    invoke-static {v0}, Lokhttp3/d;->m(Lokhttp3/u;)Lokhttp3/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/E;->n:Lokhttp3/d;

    :goto_0
    return-object v0
.end method

.method public e()Lokhttp3/E;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/E;->j:Lokhttp3/E;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/h;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lokhttp3/E;->d:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const-string v0, "WWW-Authenticate"

    goto :goto_0

    :cond_0
    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    const-string v0, "Proxy-Authenticate"

    :goto_0
    invoke-virtual {p0}, Lokhttp3/E;->m()Lokhttp3/u;

    move-result-object v1

    invoke-static {v1, v0}, LLg/e;->g(Lokhttp3/u;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lokhttp3/E;->d:I

    return v0
.end method

.method public h()Lokhttp3/t;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/E;->f:Lokhttp3/t;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/E;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/E;->g:Lokhttp3/u;

    invoke-virtual {v0, p1}, Lokhttp3/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public l(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/E;->g:Lokhttp3/u;

    invoke-virtual {v0, p1}, Lokhttp3/u;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public m()Lokhttp3/u;
    .locals 1

    iget-object v0, p0, Lokhttp3/E;->g:Lokhttp3/u;

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lokhttp3/E;->d:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lokhttp3/E;->d:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/E;->e:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lokhttp3/E;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/E;->i:Lokhttp3/E;

    return-object v0
.end method

.method public r()Lokhttp3/E$a;
    .locals 1

    new-instance v0, Lokhttp3/E$a;

    invoke-direct {v0, p0}, Lokhttp3/E$a;-><init>(Lokhttp3/E;)V

    return-object v0
.end method

.method public s(J)Lokhttp3/F;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/E;->h:Lokhttp3/F;

    invoke-virtual {v0}, Lokhttp3/F;->n()LTg/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LTg/e;->i(J)Z

    invoke-interface {v0}, LTg/e;->C()LTg/c;

    move-result-object v0

    invoke-virtual {v0}, LTg/c;->d()LTg/c;

    move-result-object v0

    invoke-virtual {v0}, LTg/c;->Q()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    new-instance v1, LTg/c;

    invoke-direct {v1}, LTg/c;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, LTg/c;->h0(LTg/c;J)V

    invoke-virtual {v0}, LTg/c;->c()V

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lokhttp3/E;->h:Lokhttp3/F;

    invoke-virtual {p1}, Lokhttp3/F;->h()Lokhttp3/x;

    move-result-object p1

    invoke-virtual {v0}, LTg/c;->Q()J

    move-result-wide v1

    invoke-static {p1, v1, v2, v0}, Lokhttp3/F;->j(Lokhttp3/x;JLTg/e;)Lokhttp3/F;

    move-result-object p1

    return-object p1
.end method

.method public t()Lokhttp3/E;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/E;->k:Lokhttp3/E;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/E;->c:Lokhttp3/A;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/E;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/E;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/E;->b:Lokhttp3/C;

    invoke-virtual {v1}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lokhttp3/A;
    .locals 1

    iget-object v0, p0, Lokhttp3/E;->c:Lokhttp3/A;

    return-object v0
.end method

.method public v()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/E;->m:J

    return-wide v0
.end method

.method public w()Lokhttp3/C;
    .locals 1

    iget-object v0, p0, Lokhttp3/E;->b:Lokhttp3/C;

    return-object v0
.end method

.method public x()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/E;->l:J

    return-wide v0
.end method

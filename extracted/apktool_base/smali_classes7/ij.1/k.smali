.class public Lij/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/net/URL;

.field public c:Lij/s$a;

.field public final d:[B

.field public final e:Lij/j;

.field public final f:Lij/g;

.field public final g:Lij/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;[BLij/j;Lij/p;Lij/s$a;Lij/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lij/s$a;

    invoke-direct {v0}, Lij/s$a;-><init>()V

    iput-object p1, p0, Lij/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lij/k;->b:Ljava/net/URL;

    iput-object p3, p0, Lij/k;->d:[B

    iput-object p4, p0, Lij/k;->e:Lij/j;

    iput-object p5, p0, Lij/k;->g:Lij/p;

    iput-object p6, p0, Lij/k;->c:Lij/s$a;

    iput-object p7, p0, Lij/k;->f:Lij/g;

    return-void
.end method


# virtual methods
.method public a()Lij/g;
    .locals 1

    iget-object v0, p0, Lij/k;->f:Lij/g;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lij/k;->c:Lij/s$a;

    invoke-virtual {v0}, Lij/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public c()Lij/j;
    .locals 1

    iget-object v0, p0, Lij/k;->e:Lij/j;

    return-object v0
.end method

.method public d()Lij/p;
    .locals 1

    iget-object v0, p0, Lij/k;->g:Lij/p;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lij/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lij/k;->b:Ljava/net/URL;

    return-object v0
.end method

.method public g(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lij/k;->d:[B

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

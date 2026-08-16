.class public Lvk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltk/h;


# instance fields
.field public final a:Lvk/d;

.field public b:[LQk/p;


# direct methods
.method public constructor <init>(Ltk/j;Ltk/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lvk/d;

    iput-object p1, p0, Lvk/c;->a:Lvk/d;

    invoke-virtual {p0, p2}, Lvk/c;->d(Ltk/e;)[LQk/p;

    move-result-object p1

    iput-object p1, p0, Lvk/c;->b:[LQk/p;

    return-void
.end method

.method public static synthetic c(Lvk/c;)Lvk/d;
    .locals 0

    iget-object p0, p0, Lvk/c;->a:Lvk/d;

    return-object p0
.end method


# virtual methods
.method public a(I)Ltk/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lvk/c$a;

    invoke-direct {v0, p0, p1}, Lvk/c$a;-><init>(Lvk/c;I)V

    return-object v0
.end method

.method public b(Ltk/e;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p2
.end method

.method public final d(Ltk/e;)[LQk/p;
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ltk/e;->i()Ljava/util/Map;

    move-result-object p1

    const-string v0, "micalg"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [LQk/p;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Lvk/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lvk/c;->a:Lvk/d;

    invoke-virtual {v3}, Lvk/d;->b()LQk/q;

    move-result-object v3

    new-instance v4, Lhi/b;

    invoke-static {v2}, Lvk/g;->d(Ljava/lang/String;)Loh/x;

    move-result-object v2

    invoke-direct {v4, v2}, Lhi/b;-><init>(Loh/x;)V

    invoke-interface {v3, v4}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No micalg field on content-type header"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()[LQk/p;
    .locals 1

    iget-object v0, p0, Lvk/c;->b:[LQk/p;

    return-object v0
.end method

.method public f()Ljava/io/OutputStream;
    .locals 4

    iget-object v0, p0, Lvk/c;->b:[LQk/p;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v0, v0, v2

    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v0, v0, v2

    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lvk/c;->b:[LQk/p;

    array-length v1, v1

    if-ge v3, v1, :cond_1

    new-instance v1, Lfm/f;

    iget-object v2, p0, Lvk/c;->b:[LQk/p;

    aget-object v2, v2, v3

    invoke-interface {v2}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lfm/f;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

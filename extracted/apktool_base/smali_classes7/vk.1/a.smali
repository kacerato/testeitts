.class public Lvk/a;
.super Ltk/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvk/a$b;,
        Lvk/a$c;
    }
.end annotation


# instance fields
.field public final b:Lorg/bouncycastle/cms/B;

.field public final c:LQk/F;

.field public final d:Ljava/io/OutputStream;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lvk/a$b;LQk/F;Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    new-instance v0, Ltk/e;

    invoke-static {p1}, Lvk/a$b;->a(Lvk/a$b;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ltk/m;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lvk/a$b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ltk/e;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltk/m;-><init>(Ltk/e;)V

    invoke-static {p1}, Lvk/a$b;->b(Lvk/a$b;)Lorg/bouncycastle/cms/B;

    move-result-object v0

    iput-object v0, p0, Lvk/a;->b:Lorg/bouncycastle/cms/B;

    iget-object p1, p1, Lvk/a$b;->c:Ljava/lang/String;

    iput-object p1, p0, Lvk/a;->e:Ljava/lang/String;

    iput-object p2, p0, Lvk/a;->c:LQk/F;

    iput-object p3, p0, Lvk/a;->d:Ljava/io/OutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lvk/a$b;LQk/F;Ljava/io/OutputStream;Lvk/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lvk/a;-><init>(Lvk/a$b;LQk/F;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ltk/m;->a:Ltk/e;

    iget-object v1, p0, Lvk/a;->d:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ltk/e;->c(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lvk/a;->d:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :try_start_0
    iget-object v0, p0, Lvk/a;->d:Ljava/io/OutputStream;

    const-string v1, "base64"

    iget-object v2, p0, Lvk/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Luk/b;

    invoke-direct {v1, v0}, Luk/b;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lvk/a;->b:Lorg/bouncycastle/cms/B;

    invoke-static {v0}, Lvk/g;->c(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lvk/a;->c:LQk/F;

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/cms/B;->f(Ljava/io/OutputStream;LQk/F;)Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Lvk/a$c;

    invoke-direct {v2, v1, v0}, Lvk/a$c;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_1
    new-instance v1, Lorg/bouncycastle/mime/MimeIOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/mime/MimeIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.class public Lorg/bouncycastle/cms/m$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/io/OutputStream;

.field public c:Loh/h0;

.field public d:Loh/h0;

.field public e:Loh/h0;

.field public f:LQk/A;

.field public g:LQk/p;

.field public h:Loh/x;

.field public final synthetic i:Lorg/bouncycastle/cms/m;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/m;LQk/A;LQk/p;Loh/x;Ljava/io/OutputStream;Loh/h0;Loh/h0;Loh/h0;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/m$a;->i:Lorg/bouncycastle/cms/m;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/m$a;->f:LQk/A;

    iput-object p3, p0, Lorg/bouncycastle/cms/m$a;->g:LQk/p;

    iput-object p4, p0, Lorg/bouncycastle/cms/m$a;->h:Loh/x;

    iput-object p5, p0, Lorg/bouncycastle/cms/m$a;->b:Ljava/io/OutputStream;

    iput-object p6, p0, Lorg/bouncycastle/cms/m$a;->c:Loh/h0;

    iput-object p7, p0, Lorg/bouncycastle/cms/m$a;->d:Loh/h0;

    iput-object p8, p0, Lorg/bouncycastle/cms/m$a;->e:Loh/h0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/m$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/m$a;->e:Loh/h0;

    invoke-virtual {v0}, Loh/h0;->g()V

    iget-object v0, p0, Lorg/bouncycastle/cms/m$a;->g:LQk/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/cms/m$a;->i:Lorg/bouncycastle/cms/m;

    iget-object v2, p0, Lorg/bouncycastle/cms/m$a;->h:Loh/x;

    invoke-interface {v0}, LQk/p;->a()Lhi/b;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/cms/m$a;->f:LQk/A;

    invoke-interface {v3}, LQk/A;->a()Lhi/b;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/m$a;->g:LQk/p;

    invoke-interface {v4}, LQk/p;->b()[B

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lorg/bouncycastle/cms/n;->d(Loh/x;Lhi/b;Lhi/b;[B)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/m$a;->i:Lorg/bouncycastle/cms/m;

    iget-object v2, v1, Lorg/bouncycastle/cms/n;->C:Lorg/bouncycastle/cms/d;

    if-nez v2, :cond_0

    new-instance v2, Lorg/bouncycastle/cms/Y;

    invoke-direct {v2}, Lorg/bouncycastle/cms/Y;-><init>()V

    iput-object v2, v1, Lorg/bouncycastle/cms/n;->C:Lorg/bouncycastle/cms/d;

    :cond_0
    new-instance v1, Loh/I0;

    iget-object v2, p0, Lorg/bouncycastle/cms/m$a;->i:Lorg/bouncycastle/cms/m;

    iget-object v2, v2, Lorg/bouncycastle/cms/n;->C:Lorg/bouncycastle/cms/d;

    invoke-interface {v2, v0}, Lorg/bouncycastle/cms/d;->a(Ljava/util/Map;)Luh/b;

    move-result-object v2

    invoke-virtual {v2}, Luh/b;->h()Loh/h;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/I0;-><init>(Loh/h;)V

    iget-object v2, p0, Lorg/bouncycastle/cms/m$a;->f:LQk/A;

    invoke-interface {v2}, LQk/A;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v1, v3}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v2, p0, Lorg/bouncycastle/cms/m$a;->d:Loh/h0;

    new-instance v3, Loh/K0;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v2, v3}, Loh/h0;->f(Loh/B;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/cms/m$a;->d:Loh/h0;

    new-instance v2, Loh/C0;

    iget-object v3, p0, Lorg/bouncycastle/cms/m$a;->f:LQk/A;

    invoke-interface {v3}, LQk/A;->e()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v2}, Loh/h0;->f(Loh/B;)V

    iget-object v1, p0, Lorg/bouncycastle/cms/m$a;->d:Loh/h0;

    iget-object v2, p0, Lorg/bouncycastle/cms/m$a;->i:Lorg/bouncycastle/cms/m;

    iget-object v2, v2, Lorg/bouncycastle/cms/n;->D:Lorg/bouncycastle/cms/d;

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/cms/X;->a(Loh/h0;Lorg/bouncycastle/cms/d;ILjava/util/Map;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/m$a;->d:Loh/h0;

    invoke-virtual {v0}, Loh/h0;->g()V

    iget-object v0, p0, Lorg/bouncycastle/cms/m$a;->c:Loh/h0;

    invoke-virtual {v0}, Loh/h0;->g()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/m$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cms/m$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/cms/m$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

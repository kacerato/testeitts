.class public Lorg/bouncycastle/cms/h$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:LQk/D;

.field public final c:Ljava/io/OutputStream;

.field public final d:Ljava/io/OutputStream;

.field public final e:Loh/h0;

.field public final f:Loh/h0;

.field public final g:Loh/h0;

.field public final synthetic h:Lorg/bouncycastle/cms/h;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/h;LQk/D;Ljava/io/OutputStream;Loh/h0;Loh/h0;Loh/h0;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/h$a;->h:Lorg/bouncycastle/cms/h;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/h$a;->b:LQk/D;

    iput-object p3, p0, Lorg/bouncycastle/cms/h$a;->d:Ljava/io/OutputStream;

    invoke-interface {p2, p3}, LQk/F;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/h$a;->c:Ljava/io/OutputStream;

    iput-object p4, p0, Lorg/bouncycastle/cms/h$a;->e:Loh/h0;

    iput-object p5, p0, Lorg/bouncycastle/cms/h$a;->f:Loh/h0;

    iput-object p6, p0, Lorg/bouncycastle/cms/h$a;->g:Loh/h0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/h$a;->h:Lorg/bouncycastle/cms/h;

    iget-object v0, v0, Lorg/bouncycastle/cms/i;->D:Lorg/bouncycastle/cms/d;

    iget-object v1, p0, Lorg/bouncycastle/cms/h$a;->b:LQk/D;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/X;->E(Lorg/bouncycastle/cms/d;LQk/D;)Loh/G;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/h$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lorg/bouncycastle/cms/h$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lorg/bouncycastle/cms/h$a;->g:Loh/h0;

    invoke-virtual {v1}, Loh/h0;->g()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/h$a;->f:Loh/h0;

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v1, v2}, Loh/h0;->f(Loh/B;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/h$a;->f:Loh/h0;

    new-instance v1, Loh/C0;

    iget-object v2, p0, Lorg/bouncycastle/cms/h$a;->b:LQk/D;

    invoke-interface {v2}, LQk/a;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h0;->f(Loh/B;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/h$a;->f:Loh/h0;

    iget-object v1, p0, Lorg/bouncycastle/cms/h$a;->h:Lorg/bouncycastle/cms/h;

    iget-object v1, v1, Lorg/bouncycastle/cms/i;->E:Lorg/bouncycastle/cms/d;

    const/4 v2, 0x2

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/cms/X;->a(Loh/h0;Lorg/bouncycastle/cms/d;ILjava/util/Map;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/h$a;->f:Loh/h0;

    invoke-virtual {v0}, Loh/h0;->g()V

    iget-object v0, p0, Lorg/bouncycastle/cms/h$a;->e:Loh/h0;

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
    iget-object v0, p0, Lorg/bouncycastle/cms/h$a;->c:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lorg/bouncycastle/cms/h$a;->c:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lorg/bouncycastle/cms/h$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

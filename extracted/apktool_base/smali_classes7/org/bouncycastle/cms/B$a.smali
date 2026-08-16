.class public Lorg/bouncycastle/cms/B$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:LQk/F;

.field public final c:Ljava/io/OutputStream;

.field public d:Ljava/io/OutputStream;

.field public e:Loh/h0;

.field public f:Loh/h0;

.field public g:Loh/h0;

.field public final synthetic h:Lorg/bouncycastle/cms/B;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/B;LQk/F;Ljava/io/OutputStream;Loh/h0;Loh/h0;Loh/h0;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/B$a;->h:Lorg/bouncycastle/cms/B;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/B$a;->b:LQk/F;

    iput-object p3, p0, Lorg/bouncycastle/cms/B$a;->d:Ljava/io/OutputStream;

    invoke-interface {p2, p3}, LQk/F;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/B$a;->c:Ljava/io/OutputStream;

    iput-object p4, p0, Lorg/bouncycastle/cms/B$a;->e:Loh/h0;

    iput-object p5, p0, Lorg/bouncycastle/cms/B$a;->f:Loh/h0;

    iput-object p6, p0, Lorg/bouncycastle/cms/B$a;->g:Loh/h0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/B$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/B$a;->b:LQk/F;

    instance-of v1, v0, LQk/D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/B$a;->d:Ljava/io/OutputStream;

    check-cast v0, LQk/D;

    invoke-interface {v0}, LQk/a;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/cms/B$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/B$a;->g:Loh/h0;

    invoke-virtual {v0}, Loh/h0;->g()V

    iget-object v0, p0, Lorg/bouncycastle/cms/B$a;->f:Loh/h0;

    iget-object v1, p0, Lorg/bouncycastle/cms/B$a;->h:Lorg/bouncycastle/cms/B;

    iget-object v1, v1, Lorg/bouncycastle/cms/C;->b:Lorg/bouncycastle/cms/d;

    const/4 v2, 0x1

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/cms/X;->a(Loh/h0;Lorg/bouncycastle/cms/d;ILjava/util/Map;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/B$a;->f:Loh/h0;

    invoke-virtual {v0}, Loh/h0;->g()V

    iget-object v0, p0, Lorg/bouncycastle/cms/B$a;->e:Loh/h0;

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
    iget-object v0, p0, Lorg/bouncycastle/cms/B$a;->c:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lorg/bouncycastle/cms/B$a;->c:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lorg/bouncycastle/cms/B$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

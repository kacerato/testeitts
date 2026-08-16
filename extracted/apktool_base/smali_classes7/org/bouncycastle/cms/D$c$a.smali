.class public Lorg/bouncycastle/cms/D$c$a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/D$c;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/bouncycastle/cms/D$c;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/D$c;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/D$c$a;->b:Lorg/bouncycastle/cms/D$c;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/D$c$a;->b:Lorg/bouncycastle/cms/D$c;

    invoke-static {v1}, Lorg/bouncycastle/cms/D$c;->h(Lorg/bouncycastle/cms/D$c;)LQk/p;

    move-result-object v1

    invoke-interface {v1}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/D$c$a;->b:Lorg/bouncycastle/cms/D$c;

    invoke-static {v0}, Lorg/bouncycastle/cms/D$c;->h(Lorg/bouncycastle/cms/D$c;)LQk/p;

    move-result-object v0

    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return p3
.end method

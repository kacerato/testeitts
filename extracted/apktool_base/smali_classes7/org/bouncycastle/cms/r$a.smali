.class public Lorg/bouncycastle/cms/r$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/io/OutputStream;

.field public c:Loh/h0;

.field public d:Loh/h0;

.field public e:Loh/h0;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Loh/h0;Loh/h0;Loh/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/r$a;->b:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/bouncycastle/cms/r$a;->c:Loh/h0;

    iput-object p3, p0, Lorg/bouncycastle/cms/r$a;->d:Loh/h0;

    iput-object p4, p0, Lorg/bouncycastle/cms/r$a;->e:Loh/h0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/r$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/r$a;->e:Loh/h0;

    invoke-virtual {v0}, Loh/h0;->g()V

    iget-object v0, p0, Lorg/bouncycastle/cms/r$a;->d:Loh/h0;

    invoke-virtual {v0}, Loh/h0;->g()V

    iget-object v0, p0, Lorg/bouncycastle/cms/r$a;->c:Loh/h0;

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
    iget-object v0, p0, Lorg/bouncycastle/cms/r$a;->b:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lorg/bouncycastle/cms/r$a;->b:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lorg/bouncycastle/cms/r$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.class public Lorg/bouncycastle/cms/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/L;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/e;-><init>(Luh/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final synthetic b:Luh/r;

.field public final synthetic c:Lorg/bouncycastle/cms/e;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/e;Luh/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/e$a;->c:Lorg/bouncycastle/cms/e;

    iput-object p2, p0, Lorg/bouncycastle/cms/e$a;->b:Luh/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e$a;->b:Luh/r;

    invoke-virtual {v0}, Luh/r;->v()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e$a;->c:Lorg/bouncycastle/cms/e;

    invoke-static {v0}, Lorg/bouncycastle/cms/e;->b(Lorg/bouncycastle/cms/e;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e$a;->a:Ljava/io/OutputStream;

    return-object v0
.end method

.method public d()Loh/G;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e$a;->c:Lorg/bouncycastle/cms/e;

    invoke-static {v0}, Lorg/bouncycastle/cms/e;->a(Lorg/bouncycastle/cms/e;)Loh/G;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e$a;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/e$a;->c:Lorg/bouncycastle/cms/e;

    invoke-static {v0}, Lorg/bouncycastle/cms/e;->a(Lorg/bouncycastle/cms/e;)Loh/G;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Loh/G;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/e$a;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/e$a;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/e$a;->c:Lorg/bouncycastle/cms/e;

    invoke-static {v0}, Lorg/bouncycastle/cms/e;->a(Lorg/bouncycastle/cms/e;)Loh/G;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/e$a;->a:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/e$a;->c:Lorg/bouncycastle/cms/e;

    invoke-static {v1}, Lorg/bouncycastle/cms/e;->a(Lorg/bouncycastle/cms/e;)Loh/G;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/c0;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/e$a;->b:Luh/r;

    invoke-virtual {v2}, Luh/r;->x()Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lorg/bouncycastle/cms/e$a;->c:Lorg/bouncycastle/cms/e;

    invoke-static {v2}, Lorg/bouncycastle/cms/e;->b(Lorg/bouncycastle/cms/e;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/cms/c0;-><init>(Ljava/io/InputStream;[B)V

    return-object v0
.end method

.class public Lorg/bouncycastle/cms/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/L;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/g;-><init>(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final synthetic b:Luh/s;

.field public final synthetic c:Lorg/bouncycastle/cms/J;

.field public final synthetic d:Lorg/bouncycastle/cms/g;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/g;Luh/s;Lorg/bouncycastle/cms/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/g$a;->d:Lorg/bouncycastle/cms/g;

    iput-object p2, p0, Lorg/bouncycastle/cms/g$a;->b:Luh/s;

    iput-object p3, p0, Lorg/bouncycastle/cms/g$a;->c:Lorg/bouncycastle/cms/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/g$a;->b:Luh/s;

    invoke-virtual {v0}, Luh/s;->b()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/g$a;->d:Lorg/bouncycastle/cms/g;

    invoke-static {v0}, Lorg/bouncycastle/cms/g;->c(Lorg/bouncycastle/cms/g;)Lorg/bouncycastle/cms/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/g$b;->b()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/g$a;->a:Ljava/io/OutputStream;

    return-object v0
.end method

.method public d()Loh/G;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/g$a;->d:Lorg/bouncycastle/cms/g;

    invoke-static {v0}, Lorg/bouncycastle/cms/g;->b(Lorg/bouncycastle/cms/g;)Loh/G;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(Loh/G;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/g$a;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/g$a;->c:Lorg/bouncycastle/cms/J;

    invoke-interface {v0}, Lorg/bouncycastle/cms/J;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/bouncycastle/cms/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[B

.field public final b:Luh/e;

.field public final c:Lorg/bouncycastle/cms/g;

.field public d:Lorg/bouncycastle/cms/L;


# direct methods
.method public constructor <init>(Luh/e;Lorg/bouncycastle/cms/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/g$b;->b:Luh/e;

    iput-object p2, p0, Lorg/bouncycastle/cms/g$b;->c:Lorg/bouncycastle/cms/g;

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/cms/L;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/g$b;->d:Lorg/bouncycastle/cms/L;

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/g$b;->a:[B

    return-object v0
.end method

.method public init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/g$b;->c:Lorg/bouncycastle/cms/g;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/g;->g()Luh/b;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/g;->e(Lorg/bouncycastle/cms/g;Luh/b;)Luh/b;

    iget-object v0, p0, Lorg/bouncycastle/cms/g$b;->c:Lorg/bouncycastle/cms/g;

    invoke-static {v0}, Lorg/bouncycastle/cms/g;->d(Lorg/bouncycastle/cms/g;)Luh/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/g$b;->d:Lorg/bouncycastle/cms/L;

    iget-object v1, p0, Lorg/bouncycastle/cms/g$b;->c:Lorg/bouncycastle/cms/g;

    invoke-static {v1}, Lorg/bouncycastle/cms/g;->b(Lorg/bouncycastle/cms/g;)Loh/G;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/K;->f(Loh/G;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/g$b;->d:Lorg/bouncycastle/cms/L;

    invoke-interface {v0}, Lorg/bouncycastle/cms/L;->c()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/g$b;->c:Lorg/bouncycastle/cms/g;

    invoke-static {v1}, Lorg/bouncycastle/cms/g;->d(Lorg/bouncycastle/cms/g;)Luh/b;

    move-result-object v1

    invoke-virtual {v1}, Luh/b;->i()Luh/c;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/g$b;->b:Luh/e;

    invoke-virtual {v0}, Luh/e;->c()Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/g$b;->a:[B

    return-void
.end method

.class public Lorg/bouncycastle/cms/D$c;
.super Lorg/bouncycastle/cms/D$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public d:LQk/p;


# direct methods
.method public constructor <init>(LQk/p;Loh/x;Lorg/bouncycastle/cms/J;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/cms/D$b;-><init>(Loh/x;Lorg/bouncycastle/cms/J;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/D$c;->d:LQk/p;

    return-void
.end method

.method public static synthetic h(Lorg/bouncycastle/cms/D$c;)LQk/p;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/D$c;->d:LQk/p;

    return-object p0
.end method


# virtual methods
.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/D$c$a;

    iget-object v1, p0, Lorg/bouncycastle/cms/D$b;->b:Lorg/bouncycastle/cms/J;

    invoke-interface {v1}, Lorg/bouncycastle/cms/J;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/cms/D$c$a;-><init>(Lorg/bouncycastle/cms/D$c;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/D$c;->d:LQk/p;

    invoke-interface {v0}, LQk/p;->b()[B

    move-result-object v0

    return-object v0
.end method

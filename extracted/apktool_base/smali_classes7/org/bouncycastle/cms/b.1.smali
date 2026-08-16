.class public Lorg/bouncycastle/cms/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/V;
.implements Lorg/bouncycastle/cms/J;


# instance fields
.field public final a:Loh/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Luh/l;->m8:Loh/x;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/b;-><init>(Loh/x;)V

    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/b;->a:Loh/x;

    return-void
.end method


# virtual methods
.method public a()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/b;->a:Loh/x;

    return-object v0
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

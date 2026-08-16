.class public Lni/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/V;


# instance fields
.field public final a:Lth/b;


# direct methods
.method public constructor <init>(Lli/h;)V
    .locals 1

    .line 1
    new-instance v0, Lth/b;

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object p1

    invoke-direct {v0, p1}, Lth/b;-><init>(Lhi/q;)V

    invoke-direct {p0, v0}, Lni/b;-><init>(Lth/b;)V

    return-void
.end method

.method public constructor <init>(Lth/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lni/b;->a:Lth/b;

    return-void
.end method


# virtual methods
.method public a()Loh/x;
    .locals 1

    sget-object v0, LXh/t;->G1:Loh/x;

    return-object v0
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lni/b;->a:Lth/b;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lni/b;->a:Lth/b;

    return-object v0
.end method

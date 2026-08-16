.class public Lorg/bouncycastle/cms/D$a;
.super Lorg/bouncycastle/cms/D$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public d:Lhi/b;


# direct methods
.method public constructor <init>(Lhi/b;Loh/x;Lorg/bouncycastle/cms/J;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/cms/D$b;-><init>(Loh/x;Lorg/bouncycastle/cms/J;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/D$a;->d:Lhi/b;

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/D$b;->b:Lorg/bouncycastle/cms/J;

    invoke-interface {v0}, Lorg/bouncycastle/cms/J;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

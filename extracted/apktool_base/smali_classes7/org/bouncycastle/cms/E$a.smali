.class public Lorg/bouncycastle/cms/E$a;
.super Lorg/bouncycastle/cms/N0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/N0;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/N0;-><init>(Lorg/bouncycastle/cms/N0;)V

    return-void
.end method


# virtual methods
.method public i()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    const-string v1, "DL"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

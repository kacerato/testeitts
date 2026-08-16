.class public Lorg/bouncycastle/crypto/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/f$b;
    }
.end annotation


# instance fields
.field public final a:Loh/G0;


# direct methods
.method public constructor <init>(Loh/G0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/f;->a:Loh/G0;

    return-void
.end method

.method public synthetic constructor <init>(Loh/G0;Lorg/bouncycastle/crypto/util/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/f;-><init>(Loh/G0;)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/f;->a:Loh/G0;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

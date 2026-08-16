.class public Lorg/bouncycastle/openssl/i$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgm/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/openssl/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/openssl/i$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgm/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lli/e;

    invoke-virtual {p1}, Lgm/b;->b()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lli/e;-><init>([B)V

    return-object v0
.end method

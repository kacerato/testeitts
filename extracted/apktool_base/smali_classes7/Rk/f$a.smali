.class public LRk/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRk/f;->b(LXi/c;)LQk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:LRk/u;

.field public final synthetic b:LBi/S;

.field public final synthetic c:LRk/f;


# direct methods
.method public constructor <init>(LRk/f;LBi/S;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LRk/f$a;->c:LRk/f;

    iput-object p2, p0, LRk/f$a;->b:LBi/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LRk/u;

    invoke-direct {p1, p2}, LRk/u;-><init>(LBi/S;)V

    iput-object p1, p0, LRk/f$a;->a:LRk/u;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LRk/f$a;->c:LRk/f;

    invoke-static {v0}, LRk/f;->a(LRk/f;)Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, LRk/f$a;->a:LRk/u;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, LRk/f$a;->a:LRk/u;

    invoke-virtual {v0}, LRk/u;->c()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception obtaining signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

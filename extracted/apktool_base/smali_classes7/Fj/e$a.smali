.class public LFj/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFj/e;->get(I)LQk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/OutputStream;

.field public final synthetic b:LQk/p;

.field public final synthetic c:Ljava/security/Signature;

.field public final synthetic d:[B

.field public final synthetic e:[B

.field public final synthetic f:LFj/e;


# direct methods
.method public constructor <init>(LFj/e;Ljava/io/OutputStream;LQk/p;Ljava/security/Signature;[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LFj/e$a;->f:LFj/e;

    iput-object p2, p0, LFj/e$a;->a:Ljava/io/OutputStream;

    iput-object p3, p0, LFj/e$a;->b:LQk/p;

    iput-object p4, p0, LFj/e$a;->c:Ljava/security/Signature;

    iput-object p5, p0, LFj/e$a;->d:[B

    iput-object p6, p0, LFj/e$a;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, LFj/e$a;->a:Ljava/io/OutputStream;

    return-object v0
.end method

.method public verify([B)Z
    .locals 3

    iget-object v0, p0, LFj/e$a;->b:LQk/p;

    invoke-interface {v0}, LQk/p;->b()[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, LFj/e$a;->c:Ljava/security/Signature;

    iget-object v2, p0, LFj/e$a;->f:LFj/e;

    invoke-static {v2}, LFj/e;->a(LFj/e;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v1, p0, LFj/e$a;->c:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, LFj/e$a;->d:[B

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LFj/e$a;->b:LQk/p;

    invoke-interface {v0}, LQk/p;->b()[B

    move-result-object v0

    iget-object v1, p0, LFj/e$a;->c:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, LFj/e$a;->c:Ljava/security/Signature;

    iget-object v1, p0, LFj/e$a;->e:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    :goto_0
    iget-object v0, p0, LFj/e$a;->c:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

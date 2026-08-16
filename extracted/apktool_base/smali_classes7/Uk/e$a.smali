.class public LUk/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUk/e;->f([C)LQk/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljavax/crypto/Mac;

.field public final synthetic b:Ljavax/crypto/SecretKey;

.field public final synthetic c:LUk/e;


# direct methods
.method public constructor <init>(LUk/e;Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LUk/e$a;->c:LUk/e;

    iput-object p2, p0, LUk/e$a;->a:Ljavax/crypto/Mac;

    iput-object p3, p0, LUk/e$a;->b:Ljavax/crypto/SecretKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 10

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->k1:Loh/x;

    new-instance v2, LXh/r;

    new-instance v3, Lhi/b;

    sget-object v4, LXh/t;->j1:Loh/x;

    new-instance v5, LXh/q;

    iget-object v6, p0, LUk/e$a;->c:LUk/e;

    invoke-static {v6}, LUk/e;->a(LUk/e;)[B

    move-result-object v6

    iget-object v7, p0, LUk/e$a;->c:LUk/e;

    invoke-static {v7}, LUk/e;->b(LUk/e;)I

    move-result v7

    iget-object v8, p0, LUk/e$a;->c:LUk/e;

    invoke-static {v8}, LUk/e;->c(LUk/e;)I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    iget-object v9, p0, LUk/e$a;->c:LUk/e;

    invoke-static {v9}, LUk/e;->d(LUk/e;)Lhi/b;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, LXh/q;-><init>([BIILhi/b;)V

    invoke-direct {v3, v4, v5}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iget-object v4, p0, LUk/e$a;->c:LUk/e;

    invoke-static {v4}, LUk/e;->e(LUk/e;)Lhi/b;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LXh/r;-><init>(Lhi/b;Lhi/b;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LUk/e$a;->a:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, LQk/r;

    invoke-virtual {p0}, LUk/e$a;->a()Lhi/b;

    move-result-object v1

    iget-object v2, p0, LUk/e$a;->b:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LJj/d;

    iget-object v1, p0, LUk/e$a;->a:Ljavax/crypto/Mac;

    invoke-direct {v0, v1}, LJj/d;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method

.class public LUk/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUk/g;->a([C)LQk/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Ljavax/crypto/Mac;

.field public final synthetic c:Ljavax/crypto/SecretKey;

.field public final synthetic d:LUk/g;


# direct methods
.method public constructor <init>(LUk/g;[BLjavax/crypto/Mac;Ljavax/crypto/SecretKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LUk/g$a;->d:LUk/g;

    iput-object p2, p0, LUk/g$a;->a:[B

    iput-object p3, p0, LUk/g$a;->b:Ljavax/crypto/Mac;

    iput-object p4, p0, LUk/g$a;->c:Ljavax/crypto/SecretKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 5

    new-instance v0, Lhi/b;

    iget-object v1, p0, LUk/g$a;->d:LUk/g;

    invoke-static {v1}, LUk/g;->c(LUk/g;)Loh/x;

    move-result-object v1

    new-instance v2, LXh/s;

    iget-object v3, p0, LUk/g$a;->a:[B

    iget-object v4, p0, LUk/g$a;->d:LUk/g;

    invoke-static {v4}, LUk/g;->d(LUk/g;)I

    move-result v4

    invoke-direct {v2, v3, v4}, LXh/s;-><init>([BI)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LUk/g$a;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, LQk/r;

    invoke-virtual {p0}, LUk/g$a;->a()Lhi/b;

    move-result-object v1

    iget-object v2, p0, LUk/g$a;->c:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LJj/d;

    iget-object v1, p0, LUk/g$a;->b:Ljavax/crypto/Mac;

    invoke-direct {v0, v1}, LJj/d;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method

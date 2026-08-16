.class public LUk/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUk/h$a;->a([C)LQk/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loh/x;

.field public final synthetic b:LXh/s;

.field public final synthetic c:Ljavax/crypto/Mac;

.field public final synthetic d:Ljavax/crypto/SecretKey;

.field public final synthetic e:LUk/h$a;


# direct methods
.method public constructor <init>(LUk/h$a;Loh/x;LXh/s;Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LUk/h$a$a;->e:LUk/h$a;

    iput-object p2, p0, LUk/h$a$a;->a:Loh/x;

    iput-object p3, p0, LUk/h$a$a;->b:LXh/s;

    iput-object p4, p0, LUk/h$a$a;->c:Ljavax/crypto/Mac;

    iput-object p5, p0, LUk/h$a$a;->d:Ljavax/crypto/SecretKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 3

    new-instance v0, Lhi/b;

    iget-object v1, p0, LUk/h$a$a;->a:Loh/x;

    iget-object v2, p0, LUk/h$a$a;->b:LXh/s;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LUk/h$a$a;->c:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, LQk/r;

    invoke-virtual {p0}, LUk/h$a$a;->a()Lhi/b;

    move-result-object v1

    iget-object v2, p0, LUk/h$a$a;->d:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LJj/d;

    iget-object v1, p0, LUk/h$a$a;->c:Ljavax/crypto/Mac;

    invoke-direct {v0, v1}, LJj/d;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method

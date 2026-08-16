.class public LPk/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/openssl/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LPk/h$a;->get(Ljava/lang/String;)Lorg/bouncycastle/openssl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LPk/h$a;


# direct methods
.method public constructor <init>(LPk/h$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LPk/h$a$a;->b:LPk/h$a;

    iput-object p2, p0, LPk/h$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation

    iget-object v0, p0, LPk/h$a$a;->b:LPk/h$a;

    iget-object v1, v0, LPk/h$a;->a:[C

    if-eqz v1, :cond_0

    iget-object v0, v0, LPk/h$a;->b:LPk/h;

    invoke-static {v0}, LPk/h;->a(LPk/h;)Ldk/f;

    move-result-object v2

    iget-object v0, p0, LPk/h$a$a;->b:LPk/h$a;

    iget-object v4, v0, LPk/h$a;->a:[C

    iget-object v5, p0, LPk/h$a$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, LPk/j;->a(ZLdk/f;[B[CLjava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/openssl/PasswordException;

    const-string p2, "Password is null, but a password is required"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

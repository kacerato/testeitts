.class public LPk/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LPk/g;->c()LQk/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:LPk/g;


# direct methods
.method public constructor <init>(LPk/g;Lhi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LPk/g$a;->b:LPk/g;

    iput-object p2, p0, LPk/g$a;->a:Lhi/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LPk/g$a;->a:Lhi/b;

    return-object v0
.end method

.method public d(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LJj/b;

    iget-object v1, p0, LPk/g$a;->b:LPk/g;

    invoke-static {v1}, LPk/g;->a(LPk/g;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LJj/b;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/jcajce/g;

    iget-object v1, p0, LPk/g$a;->a:Lhi/b;

    iget-object v2, p0, LPk/g$a;->b:LPk/g;

    invoke-static {v2}, LPk/g;->b(LPk/g;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/g;-><init>(Lhi/b;Ljava/security/Key;)V

    return-object v0
.end method

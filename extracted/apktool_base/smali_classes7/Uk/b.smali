.class public LUk/b;
.super LSk/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfi/d;Ljava/security/PublicKey;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LSk/f;-><init>(Lfi/d;Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LSk/f;-><init>(Lfi/d;Lhi/h0;)V

    return-void
.end method


# virtual methods
.method public h(LQk/f;Ljava/security/PublicKey;LQk/f;)LSk/e;
    .locals 0

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, LSk/f;->d(LQk/f;Lhi/h0;LQk/f;)LSk/e;

    move-result-object p1

    return-object p1
.end method

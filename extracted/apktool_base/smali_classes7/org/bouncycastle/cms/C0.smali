.class public abstract Lorg/bouncycastle/cms/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/G0;


# instance fields
.field public a:[C

.field public b:Lhi/b;

.field public c:Loh/x;

.field public d:Ljava/security/SecureRandom;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lorg/bouncycastle/cms/A0$a;

.field public i:[B

.field public j:I


# direct methods
.method public constructor <init>(Loh/x;[C)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/C0;->d(Loh/x;)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/cms/D0;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/cms/C0;-><init>(Loh/x;[CII)V

    return-void
.end method

.method public constructor <init>(Loh/x;[CII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/C0;->a:[C

    const/4 p2, 0x1

    iput p2, p0, Lorg/bouncycastle/cms/C0;->e:I

    iput-object p1, p0, Lorg/bouncycastle/cms/C0;->c:Loh/x;

    iput p3, p0, Lorg/bouncycastle/cms/C0;->f:I

    iput p4, p0, Lorg/bouncycastle/cms/C0;->g:I

    sget-object p1, Lorg/bouncycastle/cms/A0$a;->c:Lorg/bouncycastle/cms/A0$a;

    iput-object p1, p0, Lorg/bouncycastle/cms/C0;->h:Lorg/bouncycastle/cms/A0$a;

    const/16 p1, 0x400

    iput p1, p0, Lorg/bouncycastle/cms/C0;->j:I

    return-void
.end method

.method public static d(Loh/x;)I
    .locals 3

    sget-object v0, Lorg/bouncycastle/cms/D0;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find key size for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(LQk/r;)Luh/Q;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/cms/C0;->g:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/cms/C0;->d:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/cms/C0;->d:Ljava/security/SecureRandom;

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/C0;->d:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, p0, Lorg/bouncycastle/cms/C0;->i:[B

    if-nez v1, :cond_1

    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/cms/C0;->i:[B

    iget-object v2, p0, Lorg/bouncycastle/cms/C0;->d:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_1
    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->h1:Loh/x;

    new-instance v3, LXh/q;

    iget-object v4, p0, Lorg/bouncycastle/cms/C0;->i:[B

    iget v5, p0, Lorg/bouncycastle/cms/C0;->j:I

    iget-object v6, p0, Lorg/bouncycastle/cms/C0;->h:Lorg/bouncycastle/cms/A0$a;

    iget-object v6, v6, Lorg/bouncycastle/cms/A0$a;->b:Lhi/b;

    invoke-direct {v3, v4, v5, v6}, LXh/q;-><init>([BILhi/b;)V

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/C0;->b:Lhi/b;

    iget v2, p0, Lorg/bouncycastle/cms/C0;->e:I

    iget v3, p0, Lorg/bouncycastle/cms/C0;->f:I

    invoke-virtual {p0, v2, v1, v3}, Lorg/bouncycastle/cms/C0;->b(ILhi/b;I)[B

    move-result-object v1

    new-instance v2, Lhi/b;

    iget-object v3, p0, Lorg/bouncycastle/cms/C0;->c:Loh/x;

    new-instance v4, Loh/C0;

    invoke-direct {v4, v0}, Loh/C0;-><init>([B)V

    invoke-direct {v2, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {p0, v2, v1, p1}, Lorg/bouncycastle/cms/C0;->c(Lhi/b;[BLQk/r;)[B

    move-result-object p1

    new-instance v1, Loh/C0;

    invoke-direct {v1, p1}, Loh/C0;-><init>([B)V

    new-instance p1, Loh/h;

    invoke-direct {p1}, Loh/h;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/cms/C0;->c:Loh/x;

    invoke-virtual {p1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-virtual {p1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v0, Lhi/b;

    sget-object v2, LXh/t;->N2:Loh/x;

    new-instance v3, Loh/G0;

    invoke-direct {v3, p1}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {v0, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance p1, Luh/Q;

    new-instance v2, Luh/N;

    iget-object v3, p0, Lorg/bouncycastle/cms/C0;->b:Lhi/b;

    invoke-direct {v2, v3, v0, v1}, Luh/N;-><init>(Lhi/b;Lhi/b;Loh/y;)V

    invoke-direct {p1, v2}, Luh/Q;-><init>(Luh/N;)V

    return-object p1
.end method

.method public abstract b(ILhi/b;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

.method public abstract c(Lhi/b;[BLQk/r;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

.method public e(Lorg/bouncycastle/cms/A0$a;)Lorg/bouncycastle/cms/C0;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/C0;->h:Lorg/bouncycastle/cms/A0$a;

    return-object p0
.end method

.method public f(I)Lorg/bouncycastle/cms/C0;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/C0;->e:I

    return-object p0
.end method

.method public g([BI)Lorg/bouncycastle/cms/C0;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/C0;->i:[B

    iput p2, p0, Lorg/bouncycastle/cms/C0;->j:I

    return-object p0
.end method

.method public h(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/C0;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/C0;->d:Ljava/security/SecureRandom;

    return-object p0
.end method

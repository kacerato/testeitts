.class public LAi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAi/a$a;,
        LAi/a$b;,
        LAi/a$c;
    }
.end annotation


# static fields
.field public static final e:LQk/I;


# instance fields
.field public final a:Loh/x;

.field public final b:I

.field public c:LAi/p;

.field public d:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LQk/l;->a:LQk/I;

    sput-object v0, LAi/a;->e:LQk/I;

    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 1

    .line 1
    sget-object v0, LAi/a;->e:LQk/I;

    invoke-interface {v0, p1}, LQk/I;->b(Loh/x;)I

    move-result v0

    invoke-direct {p0, p1, v0}, LAi/a;-><init>(Loh/x;I)V

    return-void
.end method

.method public constructor <init>(Loh/x;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LAi/p;

    invoke-direct {v0}, LAi/p;-><init>()V

    iput-object v0, p0, LAi/a;->c:LAi/p;

    iput-object p1, p0, LAi/a;->a:Loh/x;

    sget-object v0, LAi/a;->e:LQk/I;

    invoke-interface {v0, p1}, LQk/I;->b(Loh/x;)I

    move-result v0

    sget-object v1, LXh/t;->n1:Loh/x;

    invoke-virtual {p1, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    const-string v2, "incorrect keySize for encryptionOID passed to builder."

    if-eqz v1, :cond_2

    const/16 p1, 0xa8

    if-eq p2, p1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, LAi/a;->b:I

    goto :goto_2

    :cond_2
    sget-object v1, LWh/b;->e:Loh/x;

    invoke-virtual {p1, v1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x38

    if-eq p2, p1, :cond_1

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-lez v0, :cond_6

    if-ne v0, p2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iput p2, p0, LAi/a;->b:I

    :goto_2
    return-void
.end method

.method public static synthetic a(LAi/a;)LAi/p;
    .locals 0

    iget-object p0, p0, LAi/a;->c:LAi/p;

    return-object p0
.end method


# virtual methods
.method public b()LQk/F;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, LAi/a;->c:LAi/p;

    iget-object v1, p0, LAi/a;->a:Loh/x;

    invoke-virtual {v0, v1}, LAi/p;->g(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LAi/a$b;

    iget-object v1, p0, LAi/a;->a:Loh/x;

    iget v2, p0, LAi/a;->b:I

    iget-object v3, p0, LAi/a;->d:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v1, v2, v3}, LAi/a$b;-><init>(LAi/a;Loh/x;ILjava/security/SecureRandom;)V

    return-object v0

    :cond_0
    new-instance v0, LAi/a$c;

    iget-object v1, p0, LAi/a;->a:Loh/x;

    iget v2, p0, LAi/a;->b:I

    iget-object v3, p0, LAi/a;->d:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v1, v2, v3}, LAi/a$c;-><init>(LAi/a;Loh/x;ILjava/security/SecureRandom;)V

    return-object v0
.end method

.method public c(Ljava/security/SecureRandom;)LAi/a;
    .locals 0

    iput-object p1, p0, LAi/a;->d:Ljava/security/SecureRandom;

    return-object p0
.end method

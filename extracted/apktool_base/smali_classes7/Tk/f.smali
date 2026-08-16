.class public LTk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LBi/D;

.field public b:LBi/h;

.field public c:Loh/x;

.field public d:Ljava/security/SecureRandom;

.field public e:I


# direct methods
.method public constructor <init>(Loh/x;LBi/f;)V
    .locals 1

    .line 1
    new-instance v0, LIi/J;

    invoke-direct {v0}, LIi/J;-><init>()V

    invoke-direct {p0, p1, p2, v0}, LTk/f;-><init>(Loh/x;LBi/f;LBi/D;)V

    return-void
.end method

.method public constructor <init>(Loh/x;LBi/f;LBi/D;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, LTk/f;->e:I

    iput-object p1, p0, LTk/f;->c:Loh/x;

    new-instance p1, LWi/e;

    new-instance v0, LWi/d;

    invoke-direct {v0}, LWi/d;-><init>()V

    invoke-direct {p1, p2, v0}, LWi/e;-><init>(LBi/f;LWi/a;)V

    iput-object p1, p0, LTk/f;->b:LBi/h;

    iput-object p3, p0, LTk/f;->a:LBi/D;

    return-void
.end method

.method public static synthetic a(LTk/f;)Loh/x;
    .locals 0

    iget-object p0, p0, LTk/f;->c:Loh/x;

    return-object p0
.end method

.method public static synthetic b(LTk/f;)LBi/h;
    .locals 0

    iget-object p0, p0, LTk/f;->b:LBi/h;

    return-object p0
.end method


# virtual methods
.method public c([C)LQk/F;
    .locals 4

    iget-object v0, p0, LTk/f;->d:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, LTk/f;->d:Ljava/security/SecureRandom;

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    iget-object v1, p0, LTk/f;->d:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, LXh/s;

    iget v2, p0, LTk/f;->e:I

    invoke-direct {v1, v0, v2}, LXh/s;-><init>([BI)V

    iget-object v0, p0, LTk/f;->c:Loh/x;

    iget-object v2, p0, LTk/f;->a:LBi/D;

    iget-object v3, p0, LTk/f;->b:LBi/h;

    invoke-virtual {v3}, LBi/h;->b()I

    move-result v3

    invoke-static {v0, v2, v3, v1, p1}, LTk/g;->a(Loh/x;LBi/D;ILXh/s;[C)LBi/k;

    move-result-object v0

    iget-object v2, p0, LTk/f;->b:LBi/h;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, LBi/h;->f(ZLBi/k;)V

    new-instance v0, LTk/f$a;

    invoke-direct {v0, p0, v1, p1}, LTk/f$a;-><init>(LTk/f;LXh/s;[C)V

    return-object v0
.end method

.method public d(I)LTk/f;
    .locals 0

    iput p1, p0, LTk/f;->e:I

    return-object p0
.end method

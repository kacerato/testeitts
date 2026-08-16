.class public LTk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSk/g;


# instance fields
.field public a:LBi/D;

.field public b:Lhi/b;

.field public c:Ljava/security/SecureRandom;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, LIi/J;

    invoke-direct {v0}, LIi/J;-><init>()V

    new-instance v1, Lhi/b;

    sget-object v2, LWh/b;->i:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p0, v0, v1}, LTk/c;-><init>(LBi/D;Lhi/b;)V

    return-void
.end method

.method public constructor <init>(LBi/D;Lhi/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, LTk/c;->e:I

    iput-object p1, p0, LTk/c;->a:LBi/D;

    iput-object p2, p0, LTk/c;->b:Lhi/b;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    iput p1, p0, LTk/c;->d:I

    return-void
.end method


# virtual methods
.method public a([C)LQk/A;
    .locals 5

    iget-object v0, p0, LTk/c;->c:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, LTk/c;->c:Ljava/security/SecureRandom;

    :cond_0
    iget v0, p0, LTk/c;->d:I

    new-array v0, v0, [B

    iget-object v1, p0, LTk/c;->c:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, p0, LTk/c;->b:Lhi/b;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    iget-object v2, p0, LTk/c;->a:LBi/D;

    new-instance v3, LXh/s;

    iget v4, p0, LTk/c;->e:I

    invoke-direct {v3, v0, v4}, LXh/s;-><init>([BI)V

    invoke-static {v1, v2, v3, p1}, LTk/g;->b(Loh/x;LBi/D;LXh/s;[C)LQk/A;

    move-result-object p1

    return-object p1
.end method

.method public b()Lhi/b;
    .locals 1

    iget-object v0, p0, LTk/c;->b:Lhi/b;

    return-object v0
.end method

.method public c(I)LTk/c;
    .locals 0

    iput p1, p0, LTk/c;->e:I

    return-object p0
.end method

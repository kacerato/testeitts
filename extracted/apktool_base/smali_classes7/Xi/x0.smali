.class public LXi/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public b:Ljava/security/SecureRandom;

.field public c:LBi/k;


# direct methods
.method public constructor <init>(LBi/k;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(LBi/k;Ljava/security/SecureRandom;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, LBi/r;->i(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p2

    iput-object p2, p0, LXi/x0;->b:Ljava/security/SecureRandom;

    iput-object p1, p0, LXi/x0;->c:LBi/k;

    return-void
.end method


# virtual methods
.method public a()LBi/k;
    .locals 1

    iget-object v0, p0, LXi/x0;->c:LBi/k;

    return-object v0
.end method

.method public b()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, LXi/x0;->b:Ljava/security/SecureRandom;

    return-object v0
.end method

.class public Lkl/i;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:Lkl/l;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lkl/l;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lkl/i;->d:Lkl/l;

    return-void
.end method


# virtual methods
.method public c()Lkl/l;
    .locals 1

    iget-object v0, p0, Lkl/i;->d:Lkl/l;

    return-object v0
.end method

.class public Ldl/i;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:Ldl/m;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Ldl/m;)V
    .locals 1

    const/16 v0, 0x140

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Ldl/i;->d:Ldl/m;

    return-void
.end method


# virtual methods
.method public c()Ldl/m;
    .locals 1

    iget-object v0, p0, Ldl/i;->d:Ldl/m;

    return-object v0
.end method

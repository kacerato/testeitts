.class public final Lql/s;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:Lql/H;


# direct methods
.method public constructor <init>(Lql/H;Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p1, p0, Lql/s;->d:Lql/H;

    return-void
.end method


# virtual methods
.method public c()Lql/H;
    .locals 1

    iget-object v0, p0, Lql/s;->d:Lql/H;

    return-object v0
.end method

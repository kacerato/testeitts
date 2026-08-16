.class public final Lql/w;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:Lql/z;


# direct methods
.method public constructor <init>(Lql/z;Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p1, p0, Lql/w;->d:Lql/z;

    return-void
.end method


# virtual methods
.method public c()Lql/z;
    .locals 1

    iget-object v0, p0, Lql/w;->d:Lql/z;

    return-object v0
.end method

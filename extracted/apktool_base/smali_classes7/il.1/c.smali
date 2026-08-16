.class public Lil/c;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:Lil/g;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lil/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lil/c;->d:Lil/g;

    return-void
.end method


# virtual methods
.method public c()Lil/g;
    .locals 1

    iget-object v0, p0, Lil/c;->d:Lil/g;

    return-object v0
.end method

.class public Lol/q;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:Lol/t;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lol/t;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lol/q;->d:Lol/t;

    return-void
.end method


# virtual methods
.method public c()Lol/t;
    .locals 1

    iget-object v0, p0, Lol/q;->d:Lol/t;

    return-object v0
.end method

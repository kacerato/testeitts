.class public Lal/g;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:Lal/j;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lal/j;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lal/g;->d:Lal/j;

    return-void
.end method


# virtual methods
.method public c()Lal/j;
    .locals 1

    iget-object v0, p0, Lal/g;->d:Lal/j;

    return-object v0
.end method

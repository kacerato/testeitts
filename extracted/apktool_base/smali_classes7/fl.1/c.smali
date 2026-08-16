.class public Lfl/c;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:Lfl/f;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lfl/f;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lfl/c;->d:Lfl/f;

    return-void
.end method


# virtual methods
.method public c()Lfl/f;
    .locals 1

    iget-object v0, p0, Lfl/c;->d:Lfl/f;

    return-object v0
.end method

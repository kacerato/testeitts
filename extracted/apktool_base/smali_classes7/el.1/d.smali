.class public Lel/d;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:Lel/h;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lel/h;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lel/d;->d:Lel/h;

    return-void
.end method


# virtual methods
.method public c()Lel/h;
    .locals 1

    iget-object v0, p0, Lel/d;->d:Lel/h;

    return-object v0
.end method

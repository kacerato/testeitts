.class public Lml/e;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:Lml/h;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lml/h;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lml/e;->d:Lml/h;

    return-void
.end method


# virtual methods
.method public c()Lml/h;
    .locals 1

    iget-object v0, p0, Lml/e;->d:Lml/h;

    return-object v0
.end method

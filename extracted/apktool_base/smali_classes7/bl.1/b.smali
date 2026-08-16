.class public Lbl/b;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:Lbl/e;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lbl/e;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lbl/b;->d:Lbl/e;

    return-void
.end method


# virtual methods
.method public c()Lbl/e;
    .locals 1

    iget-object v0, p0, Lbl/b;->d:Lbl/e;

    return-object v0
.end method

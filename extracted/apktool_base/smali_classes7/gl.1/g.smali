.class public Lgl/g;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:Lgl/j;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lgl/j;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lgl/g;->d:Lgl/j;

    return-void
.end method


# virtual methods
.method public c()Lgl/j;
    .locals 1

    iget-object v0, p0, Lgl/g;->d:Lgl/j;

    return-object v0
.end method

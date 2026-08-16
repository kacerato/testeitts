.class public LTl/c;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-static {p1}, LTl/g;->b(I)I

    iput p1, p0, LTl/c;->d:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, LTl/c;->d:I

    return v0
.end method

.class public final LOj/g$o;
.super LOj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LOi/x;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->t()LBi/y;

    move-result-object v1

    invoke-direct {v0, v1}, LOi/x;-><init>(LBi/y;)V

    const-string v1, "X448withSHA512HKDF"

    invoke-direct {p0, v1, v0}, LOj/g;-><init>(Ljava/lang/String;LBi/w;)V

    return-void
.end method

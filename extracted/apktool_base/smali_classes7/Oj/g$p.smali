.class public final LOj/g$p;
.super LOj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LOi/z;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->t()LBi/y;

    move-result-object v1

    invoke-direct {v0, v1}, LOi/z;-><init>(LBi/y;)V

    const-string v1, "X448withSHA512KDF"

    invoke-direct {p0, v1, v0}, LOj/g;-><init>(Ljava/lang/String;LBi/w;)V

    return-void
.end method

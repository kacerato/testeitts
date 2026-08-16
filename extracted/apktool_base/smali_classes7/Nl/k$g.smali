.class public LNl/k$g;
.super LNl/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LNl/e$a;

    new-instance v1, LIi/Q;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, LIi/Q;-><init>(I)V

    invoke-direct {v0, v1}, LNl/e$a;-><init>(LIi/Q;)V

    new-instance v1, Lql/M;

    invoke-direct {v1}, Lql/M;-><init>()V

    const-string v2, "SHAKE128(512)withXMSS-SHAKE128"

    invoke-direct {p0, v2, v0, v1}, LNl/k;-><init>(Ljava/lang/String;LBi/y;Lql/M;)V

    return-void
.end method

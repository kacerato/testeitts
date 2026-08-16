.class public LNl/j$e;
.super LNl/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNl/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LIi/O;

    invoke-direct {v0}, LIi/O;-><init>()V

    new-instance v1, Lql/D;

    invoke-direct {v1}, Lql/D;-><init>()V

    const-string v2, "SHA512withXMSSMT-SHA512"

    invoke-direct {p0, v2, v0, v1}, LNl/j;-><init>(Ljava/lang/String;LBi/y;Lql/D;)V

    return-void
.end method

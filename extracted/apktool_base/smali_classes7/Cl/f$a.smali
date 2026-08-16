.class public LCl/f$a;
.super LCl/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LIi/B;

    invoke-direct {v0}, LIi/B;-><init>()V

    const-string v1, "LMS"

    invoke-direct {p0, v1, v0}, LCl/f;-><init>(Ljava/lang/String;LBi/y;)V

    return-void
.end method

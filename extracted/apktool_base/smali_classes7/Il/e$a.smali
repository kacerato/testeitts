.class public LIl/e$a;
.super LIl/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lll/l;

    invoke-direct {v0}, Lll/l;-><init>()V

    invoke-direct {p0, v0}, LIl/e;-><init>(Lll/l;)V

    return-void
.end method

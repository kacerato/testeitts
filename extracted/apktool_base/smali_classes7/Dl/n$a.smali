.class public LDl/n$a;
.super LDl/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDl/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, LRl/i;

    invoke-direct {v0}, LRl/i;-><init>()V

    invoke-direct {p0, v0}, LDl/n;-><init>(LRl/i;)V

    return-void
.end method

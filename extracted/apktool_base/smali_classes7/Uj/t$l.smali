.class public LUj/t$l;
.super LUj/t$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x80

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, LUj/t$n;-><init>(II)V

    return-void
.end method

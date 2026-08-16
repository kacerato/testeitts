.class public LUj/e$b;
.super LUj/e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x180

    invoke-direct {p0, v0}, LUj/e$d;-><init>(I)V

    return-void
.end method

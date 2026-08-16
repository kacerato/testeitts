.class public LIl/d$d;
.super LIl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lll/h;->o:Lll/h;

    invoke-direct {p0, v0}, LIl/d;-><init>(Lll/h;)V

    return-void
.end method

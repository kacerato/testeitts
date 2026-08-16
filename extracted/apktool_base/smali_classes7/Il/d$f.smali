.class public LIl/d$f;
.super LIl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lll/h;->p:Lll/h;

    invoke-direct {p0, v0}, LIl/d;-><init>(Lll/h;)V

    return-void
.end method

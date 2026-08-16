.class public LBl/f$a;
.super LBl/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcl/i;->h:Lcl/i;

    invoke-direct {p0, v0}, LBl/f;-><init>(Lcl/i;)V

    return-void
.end method

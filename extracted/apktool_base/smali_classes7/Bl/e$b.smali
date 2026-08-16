.class public LBl/e$b;
.super LBl/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcl/i;->f:Lcl/i;

    invoke-direct {p0, v0}, LBl/e;-><init>(Lcl/i;)V

    return-void
.end method

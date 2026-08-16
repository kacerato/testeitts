.class public LBl/c$b;
.super LBl/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcl/i;->h:Lcl/i;

    invoke-direct {p0, v0}, LBl/c;-><init>(Lcl/i;)V

    return-void
.end method

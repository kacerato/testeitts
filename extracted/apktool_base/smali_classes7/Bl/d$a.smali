.class public LBl/d$a;
.super LBl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lqh/a;->R2:Loh/x;

    invoke-direct {p0, v0}, LBl/d;-><init>(Loh/x;)V

    return-void
.end method

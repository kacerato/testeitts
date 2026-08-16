.class public LBl/d$b;
.super LBl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lqh/a;->U2:Loh/x;

    invoke-direct {p0, v0}, LBl/d;-><init>(Loh/x;)V

    return-void
.end method

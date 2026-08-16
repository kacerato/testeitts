.class public Lxl/e$a;
.super Lxl/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ldl/r;

    invoke-direct {v0}, Ldl/r;-><init>()V

    invoke-direct {p0, v0}, Lxl/e;-><init>(Ldl/r;)V

    return-void
.end method

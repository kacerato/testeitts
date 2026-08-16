.class public Lxl/e$c;
.super Lxl/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ldl/r;

    invoke-direct {v0}, Ldl/r;-><init>()V

    sget-object v1, Ldl/m;->e:Ldl/m;

    invoke-direct {p0, v0, v1}, Lxl/e;-><init>(Ldl/r;Ldl/m;)V

    return-void
.end method

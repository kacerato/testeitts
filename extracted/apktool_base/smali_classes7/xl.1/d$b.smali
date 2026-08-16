.class public Lxl/d$b;
.super Lxl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ldl/m;->e:Ldl/m;

    invoke-direct {p0, v0}, Lxl/d;-><init>(Ldl/m;)V

    return-void
.end method

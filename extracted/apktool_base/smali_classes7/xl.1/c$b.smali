.class public Lxl/c$b;
.super Lxl/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lqh/a;->r1:Loh/x;

    invoke-direct {p0, v0}, Lxl/c;-><init>(Loh/x;)V

    return-void
.end method

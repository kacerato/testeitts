.class public Lwl/e$d;
.super Lwl/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lbl/h;

    invoke-direct {v0}, Lbl/h;-><init>()V

    invoke-direct {p0, v0}, Lwl/e;-><init>(Lbl/h;)V

    return-void
.end method

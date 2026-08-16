.class public Lwl/e$b;
.super Lwl/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lbl/h;

    invoke-direct {v0}, Lbl/h;-><init>()V

    sget-object v1, Lbl/e;->e:Lbl/e;

    invoke-direct {p0, v0, v1}, Lwl/e;-><init>(Lbl/h;Lbl/e;)V

    return-void
.end method

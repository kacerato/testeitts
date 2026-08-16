.class public LIl/e$g;
.super LIl/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lll/l;

    invoke-direct {v0}, Lll/l;-><init>()V

    sget-object v1, Lll/h;->p:Lll/h;

    invoke-direct {p0, v0, v1}, LIl/e;-><init>(Lll/l;Lll/h;)V

    return-void
.end method

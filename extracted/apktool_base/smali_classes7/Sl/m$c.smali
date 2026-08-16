.class public LSl/m$c;
.super LSl/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSl/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public e:LYl/e;

.field public f:LYl/e;


# direct methods
.method public constructor <init>(LYl/i;LYl/i;LYl/e;LYl/e;LYl/e;LSl/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p6}, LSl/o$a;-><init>(LYl/i;LYl/i;LYl/e;LSl/l;)V

    iput-object p4, p0, LSl/m$c;->e:LYl/e;

    iput-object p5, p0, LSl/m$c;->f:LYl/e;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 5

    iget-object v0, p0, LSl/o$a;->d:LSl/l;

    iget-wide v1, v0, LSl/l;->q:D

    iget v0, v0, LSl/l;->e:I

    iget-object v3, p0, LSl/m$c;->e:LYl/e;

    invoke-virtual {v3, v0}, LYl/e;->k(I)J

    move-result-wide v3

    long-to-double v3, v3

    cmpg-double v3, v3, v1

    if-gez v3, :cond_0

    iget-object v3, p0, LSl/m$c;->f:LYl/e;

    invoke-virtual {v3, v0}, LYl/e;->k(I)J

    move-result-wide v3

    long-to-double v3, v3

    cmpg-double v0, v3, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public LBc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LBc/a;->b:Z

    iput-boolean v0, p0, LBc/a;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LBc/a;->d:Z

    return-void
.end method

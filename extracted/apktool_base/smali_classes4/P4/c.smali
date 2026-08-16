.class public LP4/c;
.super LP4/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public b:Li5/b;


# direct methods
.method public constructor <init>(Li5/b;LP4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewMode",
            "axisTopBarListener"
        }
    .end annotation

    invoke-direct {p0, p2}, LP4/b;-><init>(LP4/a;)V

    iput-object p1, p0, LP4/c;->b:Li5/b;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 2

    iget-object v0, p0, LP4/c;->b:Li5/b;

    iget-boolean v1, v0, Li5/b;->r:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Li5/b;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

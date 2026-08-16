.class public LJ4/d$k$e;
.super LJ4/d$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ4/d$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LJ4/d$k;


# direct methods
.method public constructor <init>(LJ4/d$k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$1",
            "name",
            "info"
        }
    .end annotation

    iput-object p1, p0, LJ4/d$k$e;->c:LJ4/d$k;

    invoke-direct {p0, p2, p3}, LJ4/d$r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LJ4/d$k$e;->c:LJ4/d$k;

    iget-object v0, v0, LJ4/d$k;->b:LJ4/d;

    const-string v1, "ANR Watch dog started!"

    invoke-static {v0, v1}, LJ4/d;->r1(LJ4/d;Ljava/lang/String;)V

    new-instance v0, LJ4/d$k$e$a;

    invoke-direct {v0, p0}, LJ4/d$k$e$a;-><init>(LJ4/d$k$e;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

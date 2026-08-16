.class public LJ4/d$k$c;
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

    iput-object p1, p0, LJ4/d$k$c;->c:LJ4/d$k;

    invoke-direct {p0, p2, p3}, LJ4/d$r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LJ4/d$k$c;->c:LJ4/d$k;

    iget-object v0, v0, LJ4/d$k;->b:LJ4/d;

    new-instance v1, LK4/b;

    invoke-direct {v1}, LK4/b;-><init>()V

    invoke-static {v0, v1}, LJ4/d;->u1(LJ4/d;LK4/a;)V

    return-void
.end method

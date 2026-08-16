.class public LJ4/d$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ4/d;->t2(LK4/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LJ4/d;


# direct methods
.method public constructor <init>(LJ4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJ4/d$l;->a:LJ4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LJ4/d$l;->a:LJ4/d;

    invoke-static {v0, p1}, LJ4/d;->v1(LJ4/d;Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget-object v0, p0, LJ4/d$l;->a:LJ4/d;

    invoke-static {v0, p1}, LJ4/d;->r1(LJ4/d;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, LJ4/d$l;->a:LJ4/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LJ4/d;->u1(LJ4/d;LK4/a;)V

    return-void
.end method

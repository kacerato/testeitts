.class public LJ4/d$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ4/d$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ4/d;
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

    iput-object p1, p0, LJ4/d$j;->a:LJ4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, LJ4/d$j;->a:LJ4/d;

    invoke-static {v0}, LJ4/d;->q1(LJ4/d;)Z

    move-result v0

    return v0
.end method

.method public append(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, LJ4/d$j;->a:LJ4/d;

    invoke-virtual {v0, p1}, LJ4/d;->A1(Ljava/lang/String;)V

    return-void
.end method

.method public varargs b([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ts"
        }
    .end annotation

    iget-object v0, p0, LJ4/d$j;->a:LJ4/d;

    invoke-virtual {v0, p1}, LJ4/d;->C1([Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, LJ4/d$j;->a:LJ4/d;

    invoke-virtual {v0}, LJ4/d;->p2()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, LJ4/d$j;->a:LJ4/d;

    invoke-virtual {v0, p1}, LJ4/d;->K1(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ts"
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

    iget-object v0, p0, LJ4/d$j;->a:LJ4/d;

    invoke-virtual {v0, p1}, LJ4/d;->B1(Ljava/util/List;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, LJ4/d$j;->a:LJ4/d;

    invoke-virtual {v0}, LJ4/d;->i()V

    return-void
.end method

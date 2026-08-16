.class public LF5/c$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/c$l;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LF5/c$l;


# direct methods
.method public constructor <init>(LF5/c$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LF5/c$l$b;->a:LF5/c$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p1, p0, LF5/c$l$b;->a:LF5/c$l;

    iget-object p1, p1, LF5/c$l;->e:LF5/c$o0;

    invoke-interface {p1}, LF5/c$o0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LF5/c$l$b;->a:LF5/c$l;

    iget-object v0, p1, LF5/c$l;->e:LF5/c$o0;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v0, v1}, LF5/c$o0;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, LF5/c$l;->d:Ljava/util/List;

    iget-object p1, p0, LF5/c$l$b;->a:LF5/c$l;

    invoke-virtual {p1}, LF5/c$l;->d()V

    :cond_0
    return-void
.end method

.class public LJ4/d$k;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "LJ4/d$r;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LJ4/d;


# direct methods
.method public constructor <init>(LJ4/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJ4/d$k;->b:LJ4/d;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, LJ4/d$k$a;

    const-string v0, "help"

    const-string v1, "show all commands"

    invoke-direct {p1, p0, v0, v1}, LJ4/d$k$a;-><init>(LJ4/d$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LJ4/d$k$b;

    const-string v0, "clear"

    const-string v1, "clear terminal"

    invoke-direct {p1, p0, v0, v1}, LJ4/d$k$b;-><init>(LJ4/d$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LJ4/d$k$c;

    const-string v0, "shell"

    const-string v1, "open linux system shell"

    invoke-direct {p1, p0, v0, v1}, LJ4/d$k$c;-><init>(LJ4/d$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, LJ4/d$k$d;

    const-string v0, "start-anr-watch-dog"

    const-string v1, "force crash itsmagic when ANR occurs."

    invoke-direct {p1, p0, v0, v1}, LJ4/d$k$d;-><init>(LJ4/d$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LJ4/d$k$e;

    const-string v0, "start-anr-watch-dog-ui"

    invoke-direct {p1, p0, v0, v1}, LJ4/d$k$e;-><init>(LJ4/d$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

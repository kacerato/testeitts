.class public LJ4/d$k$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ4/d$k$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LJ4/d$k$e;


# direct methods
.method public constructor <init>(LJ4/d$k$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LJ4/d$k$e$a;->b:LJ4/d$k$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/github/anrwatchdog/ANRWatchDog;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/github/anrwatchdog/ANRWatchDog;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

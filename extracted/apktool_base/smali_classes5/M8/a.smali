.class public LM8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LM8/a$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Thread;

.field public b:I


# direct methods
.method public constructor <init>(ILM8/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "priority",
            "listener"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, LM8/a;->b:I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p2, p1}, LM8/a;->b(LM8/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LM8/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, LM8/a;->b:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, LM8/a;->b(LM8/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILM8/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "priority",
            "listener"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p2, p0, LM8/a;->b:I

    .line 12
    invoke-virtual {p0, p3, p1}, LM8/a;->b(LM8/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;LM8/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userData",
            "listener"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 8
    iput v0, p0, LM8/a;->b:I

    .line 9
    invoke-virtual {p0, p2, p1}, LM8/a;->b(LM8/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(LM8/a;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, LM8/a;->a:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public final b(LM8/a$b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "userData"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LM8/a$a;

    invoke-direct {v1, p0, p1, p2}, LM8/a$a;-><init>(LM8/a;LM8/a$b;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, LM8/a;->a:Ljava/lang/Thread;

    iget p1, p0, LM8/a;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object p1, p0, LM8/a;->a:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, LM8/a;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

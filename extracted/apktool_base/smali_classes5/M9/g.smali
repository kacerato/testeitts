.class public LM9/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:J

.field public volatile c:LM9/c;

.field public final d:Z

.field public final e:I

.field public final f:LM9/a;

.field public final g:Ljava/lang/Class;

.field public final h:[Ljava/lang/Class;

.field public i:[LM9/h;

.field public volatile j:J

.field public volatile k:Z

.field public volatile l:I

.field public volatile m:F

.field public volatile n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/Object;JLM9/c;ZILM9/a;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "referencedObject",
            "pointer",
            "destroyer",
            "canDestroyAsync",
            "destroyPriority",
            "destroyChannel",
            "destroyListenerClasses"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LM9/g;->l:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LM9/g;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, LM9/g;->g:Ljava/lang/Class;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LM9/g;->a:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, LM9/g;->b:J

    iput-object p4, p0, LM9/g;->c:LM9/c;

    iput-boolean p5, p0, LM9/g;->d:Z

    iput p6, p0, LM9/g;->e:I

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    sget-object p7, LM9/a;->CPU:LM9/a;

    :goto_0
    iput-object p7, p0, LM9/g;->f:LM9/a;

    iput-object p8, p0, LM9/g;->h:[Ljava/lang/Class;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "destroyer can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "referencedObject can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LM9/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LM9/g;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public c()LM9/a;
    .locals 1

    iget-object v0, p0, LM9/g;->f:LM9/a;

    return-object v0
.end method

.method public d()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LM9/g;->h:[Ljava/lang/Class;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LM9/g;->e:I

    return v0
.end method

.method public f()LM9/c;
    .locals 1

    iget-object v0, p0, LM9/g;->c:LM9/c;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, LM9/g;->j:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, LM9/g;->b:J

    return-wide v0
.end method

.method public i()[LM9/h;
    .locals 1

    iget-object v0, p0, LM9/g;->i:[LM9/h;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, LM9/g;->d:Z

    return v0
.end method

.method public k([LM9/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registeredDestroyListeners"
        }
    .end annotation

    iput-object p1, p0, LM9/g;->i:[LM9/h;

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, LM9/g;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

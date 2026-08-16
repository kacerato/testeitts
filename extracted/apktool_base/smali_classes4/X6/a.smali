.class public LX6/a;
.super LF7/i;
.source "SourceFile"


# static fields
.field public static final o:I = 0x1

.field public static final p:LF7/e;


# instance fields
.field public m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field public n:LX6/b$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LF7/e;

    invoke-direct {v0}, LF7/e;-><init>()V

    sput-object v0, LX6/a;->p:LF7/e;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LX6/b$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg6/c;

    invoke-direct {v1}, Lg6/c;-><init>()V

    invoke-direct {p0, v0, v1}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    iput-object p2, p0, LX6/a;->n:LX6/b$f;

    new-instance v0, LX6/a$a;

    invoke-direct {v0, p0, p2}, LX6/a$a;-><init>(LX6/a;LX6/b$f;)V

    iput-object v0, p0, LF7/i;->j:LF7/c;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, LX6/a;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LX6/a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LX6/a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LX6/a;->n:LX6/b$f;

    invoke-interface {v1, v0}, LX6/b$f;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2

    iget-object v0, p0, LX6/a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LX6/a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

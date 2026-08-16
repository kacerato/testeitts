.class public LB4/b;
.super LF7/i;
.source "SourceFile"


# static fields
.field public static final n:I = 0x1

.field public static final o:LF7/e;


# instance fields
.field public m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "LB4/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LF7/e;

    invoke-direct {v0}, LF7/e;-><init>()V

    sput-object v0, LB4/b;->o:LF7/e;

    return-void
.end method

.method public constructor <init>(LB4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p1, LB4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg6/c;

    invoke-direct {v1}, Lg6/c;-><init>()V

    invoke-direct {p0, v0, v1}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    new-instance v0, LG7/f;

    new-instance v1, LB4/b$a;

    invoke-direct {v1, p0}, LB4/b$a;-><init>(LB4/b;)V

    invoke-direct {v0, v1}, LG7/f;-><init>(LG7/g;)V

    invoke-super {p0, v0}, LF7/i;->a(LG7/a;)LF7/i;

    new-instance v0, LB4/b$b;

    invoke-direct {v0, p0}, LB4/b$b;-><init>(LB4/b;)V

    iput-object v0, p0, LF7/i;->j:LF7/c;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LB4/b;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LB4/b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB4/b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB4/a;

    iget-object v1, v0, LB4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, LB4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public u()LB4/a;
    .locals 1

    iget-object v0, p0, LB4/b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB4/b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB4/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.class public LK3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:LK3/f;

.field public final d:LK3/a;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(LK3/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "project"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LK3/c;->a:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LK3/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, LK3/c;->d:LK3/a;

    iput-object p2, p0, LK3/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "project",
            "buildDictionary",
            "parent"
        }
    .end annotation

    iget-object v0, p0, LK3/c;->c:LK3/f;

    invoke-interface {v0, p1, p2, p3}, LK3/f;->a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/io/File;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LK3/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, LK3/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

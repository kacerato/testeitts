.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.super LF7/i;
.source "SourceFile"


# instance fields
.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;"
        }
    .end annotation
.end field

.field public n:LN3/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a$a;-><init>()V

    invoke-direct {p0, p1, v0}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->m:Ljava/util/List;

    return-void
.end method

.method public static synthetic u(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)LN3/b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->n:LN3/b;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public B()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->e()V

    return-void
.end method

.method public C(LN3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->n:LN3/b;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF7/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public v(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public w()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->m:Ljava/util/List;

    return-object v0
.end method

.method public y(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public z()LN3/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->n:LN3/b;

    return-object v0
.end method

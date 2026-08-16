.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG4/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->h(Landroid/view/View;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$folderPath",
            "val$runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LG4/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "panel"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->b()[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->c()[Lw5/j$m0;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a$a;

    invoke-direct {v7, p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;LG4/e;)V

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lw5/c;->A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lw5/j$m0;ZZZLw5/c$I0;)V

    return-void
.end method

.method public b(LG4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p1, LG4/e;->b0:Z

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->a(LG4/e;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, LG4/e;->v1(Ljava/util/List;)V

    return-void
.end method

.method public c(LG4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->a(LG4/e;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, LG4/e;->v1(Ljava/util/List;)V

    return-void
.end method

.method public e(LG4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    return-void
.end method

.method public f(LG4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->a(LG4/e;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, LG4/e;->v1(Ljava/util/List;)V

    return-void
.end method

.method public g(Landroid/view/View;LG4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "panel"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

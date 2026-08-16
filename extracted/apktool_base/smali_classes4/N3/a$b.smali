.class public LN3/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN3/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LF7/k<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LN3/a;


# direct methods
.method public constructor <init>(LN3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LN3/a$b;->a:LN3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(LF7/i;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-virtual {p0, p1, p2}, LN3/a$b;->h(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;Landroid/view/View;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LN3/a$b;->a:LN3/a;

    invoke-static {v0}, LN3/a;->p1(LN3/a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(LF7/i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-virtual {p0, p1, p2}, LN3/a$b;->i(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;Z)V

    return-void
.end method

.method public bridge synthetic e(LF7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-virtual {p0, p1}, LN3/a$b;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V

    return-void
.end method

.method public bridge synthetic f(LF7/i;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-virtual {p0, p1}, LN3/a$b;->g(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->x()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->x()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, LF7/i;->r(Z)V

    invoke-virtual {p1}, LF7/i;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, LF7/i;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public h(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    return-void
.end method

.method public i(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    return-void
.end method

.method public j(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, LN3/a$b;->a:LN3/a;

    invoke-static {v0, p1}, LN3/a;->q1(LN3/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V

    return-void
.end method

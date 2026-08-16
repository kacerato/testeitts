.class public Lp7/a;
.super Lp7/c;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public d:Lp7/b;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp7/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "icon",
            "context"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 21
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lp7/a;->e:Ljava/util/List;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lp7/a;->f:Z

    .line 23
    iput-object p2, p0, Lp7/a;->c:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Lp7/a;->n()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "context",
            "activeMessage"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 9
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lp7/a;->e:Ljava/util/List;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lp7/a;->f:Z

    .line 11
    iput-object p2, p0, Lp7/a;->c:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Lp7/a;->g:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lp7/a;->n()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;Lp7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "context",
            "activeMessage",
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lp7/a;->e:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lp7/a;->f:Z

    .line 4
    iput-object p2, p0, Lp7/a;->c:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lp7/a;->d:Lp7/b;

    .line 6
    iput-object p3, p0, Lp7/a;->g:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lp7/a;->n()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Lp7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "context",
            "listener"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 15
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lp7/a;->e:Ljava/util/List;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lp7/a;->f:Z

    .line 17
    iput-object p2, p0, Lp7/a;->c:Landroid/content/Context;

    .line 18
    iput-object p3, p0, Lp7/a;->d:Lp7/b;

    .line 19
    invoke-virtual {p0}, Lp7/a;->n()V

    return-void
.end method

.method public static synthetic d(Lp7/a;)V
    .locals 0

    invoke-virtual {p0}, Lp7/a;->l()V

    return-void
.end method

.method public static synthetic e(Lp7/a;)V
    .locals 0

    invoke-virtual {p0}, Lp7/a;->k()V

    return-void
.end method

.method public static synthetic f(Lp7/a;)Z
    .locals 0

    iget-boolean p0, p0, Lp7/a;->f:Z

    return p0
.end method

.method public static synthetic g(Lp7/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lp7/a;->f:Z

    return p1
.end method

.method public static synthetic h(Lp7/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp7/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lp7/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lp7/a;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public j(Lp7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lp7/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lp7/a;->d:Lp7/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lp7/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lp7/c;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Lp7/b;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lp7/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lp7/a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp7/b;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lp7/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lp7/c;->a:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v3}, Lp7/b;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lp7/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lp7/a;->c:Landroid/content/Context;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {v0, v1, v2}, LVc/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    new-instance v0, Lkd/a;

    invoke-direct {v0}, Lkd/a;-><init>()V

    new-instance v1, Lp7/a$b;

    invoke-direct {v1, p0}, Lp7/a$b;-><init>(Lp7/a;)V

    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lkd/a;->a(ILkd/b;)V

    return-void
.end method

.method public m()Lp7/b;
    .locals 1

    iget-object v0, p0, Lp7/a;->d:Lp7/b;

    return-object v0
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lp7/c;->a:Landroid/widget/ImageView;

    new-instance v1, Lp7/a$a;

    invoke-direct {v1, p0}, Lp7/a$a;-><init>(Lp7/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lp7/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lp7/a;->c:Landroid/content/Context;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {v0, v1, v2}, LVc/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public o(Lp7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lp7/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public p(Lp7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lp7/a;->d:Lp7/b;

    return-void
.end method

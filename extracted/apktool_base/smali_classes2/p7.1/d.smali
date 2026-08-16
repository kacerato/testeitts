.class public Lp7/d;
.super Lp7/c;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public c:Z

.field public final d:Landroid/content/Context;

.field public e:Lp7/f;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp7/f;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I


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

    .line 63
    invoke-direct {p0, p1}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 64
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lp7/d;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lp7/d;->g:Z

    .line 66
    iput-boolean p1, p0, Lp7/d;->h:Z

    .line 67
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, Lp7/d;->k:I

    .line 68
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, Lp7/d;->l:I

    .line 69
    iput-object p2, p0, Lp7/d;->d:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lp7/d;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
            "disabledMessage"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 45
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lp7/d;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lp7/d;->g:Z

    .line 47
    iput-boolean p1, p0, Lp7/d;->h:Z

    .line 48
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, Lp7/d;->k:I

    .line 49
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, Lp7/d;->l:I

    .line 50
    iput-object p2, p0, Lp7/d;->d:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lp7/d;->i:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lp7/d;->j:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lp7/d;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lp7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "context",
            "activeMessage",
            "disabledMessage",
            "listener"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 34
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lp7/d;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lp7/d;->g:Z

    .line 36
    iput-boolean p1, p0, Lp7/d;->h:Z

    .line 37
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, Lp7/d;->k:I

    .line 38
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, Lp7/d;->l:I

    .line 39
    iput-object p2, p0, Lp7/d;->d:Landroid/content/Context;

    .line 40
    iput-object p5, p0, Lp7/d;->e:Lp7/f;

    .line 41
    iput-object p3, p0, Lp7/d;->i:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lp7/d;->j:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lp7/d;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Lp7/f;)V
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

    .line 54
    invoke-direct {p0, p1}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 55
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lp7/d;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lp7/d;->g:Z

    .line 57
    iput-boolean p1, p0, Lp7/d;->h:Z

    .line 58
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, Lp7/d;->k:I

    .line 59
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, Lp7/d;->l:I

    .line 60
    iput-object p2, p0, Lp7/d;->d:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lp7/d;->e:Lp7/f;

    .line 62
    invoke-direct {p0}, Lp7/d;->t()V

    return-void
.end method

.method public constructor <init>(ZLandroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "icon",
            "context"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p2}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 25
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lp7/d;->f:Ljava/util/List;

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Lp7/d;->g:Z

    .line 27
    iput-boolean p2, p0, Lp7/d;->h:Z

    .line 28
    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    iput p2, p0, Lp7/d;->k:I

    .line 29
    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    iput p2, p0, Lp7/d;->l:I

    .line 30
    iput-boolean p1, p0, Lp7/d;->c:Z

    .line 31
    iput-object p3, p0, Lp7/d;->d:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lp7/d;->t()V

    return-void
.end method

.method public constructor <init>(ZLandroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "icon",
            "context",
            "activeMessage",
            "disabledMessage"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p2}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 14
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lp7/d;->f:Ljava/util/List;

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lp7/d;->g:Z

    .line 16
    iput-boolean p2, p0, Lp7/d;->h:Z

    .line 17
    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    iput p2, p0, Lp7/d;->k:I

    .line 18
    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    iput p2, p0, Lp7/d;->l:I

    .line 19
    iput-boolean p1, p0, Lp7/d;->c:Z

    .line 20
    iput-object p3, p0, Lp7/d;->d:Landroid/content/Context;

    .line 21
    iput-object p4, p0, Lp7/d;->i:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lp7/d;->j:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lp7/d;->t()V

    return-void
.end method

.method public constructor <init>(ZLandroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lp7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "icon",
            "context",
            "activeMessage",
            "disabledMessage",
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lp7/c;-><init>(Landroid/widget/ImageView;)V

    .line 2
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lp7/d;->f:Ljava/util/List;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lp7/d;->g:Z

    .line 4
    iput-boolean p2, p0, Lp7/d;->h:Z

    .line 5
    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    iput p2, p0, Lp7/d;->k:I

    .line 6
    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    iput p2, p0, Lp7/d;->l:I

    .line 7
    iput-boolean p1, p0, Lp7/d;->c:Z

    .line 8
    iput-object p3, p0, Lp7/d;->d:Landroid/content/Context;

    .line 9
    iput-object p6, p0, Lp7/d;->e:Lp7/f;

    .line 10
    iput-object p4, p0, Lp7/d;->i:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lp7/d;->j:Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Lp7/d;->t()V

    return-void
.end method

.method public static synthetic d(Lp7/d;)Z
    .locals 0

    iget-boolean p0, p0, Lp7/d;->c:Z

    return p0
.end method

.method public static synthetic e(Lp7/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lp7/d;->c:Z

    return p1
.end method

.method public static synthetic f(Lp7/d;)V
    .locals 0

    invoke-virtual {p0}, Lp7/d;->z()V

    return-void
.end method

.method public static synthetic g(Lp7/d;)V
    .locals 0

    invoke-direct {p0}, Lp7/d;->p()V

    return-void
.end method

.method public static synthetic h(Lp7/d;)Z
    .locals 0

    iget-boolean p0, p0, Lp7/d;->g:Z

    return p0
.end method

.method public static synthetic i(Lp7/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lp7/d;->g:Z

    return p1
.end method

.method public static synthetic j(Lp7/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp7/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lp7/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lp7/d;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic l(Lp7/d;)Z
    .locals 0

    iget-boolean p0, p0, Lp7/d;->h:Z

    return p0
.end method

.method public static synthetic m(Lp7/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lp7/d;->h:Z

    return p1
.end method

.method public static synthetic n(Lp7/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp7/d;->j:Ljava/lang/String;

    return-object p0
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lp7/d;->e:Lp7/f;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lp7/d;->c:Z

    invoke-interface {v0, v1}, Lp7/f;->a(Z)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lp7/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lp7/d;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp7/f;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lp7/d;->c:Z

    invoke-interface {v1, v2}, Lp7/f;->a(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lp7/c;->a:Landroid/widget/ImageView;

    new-instance v1, Lp7/d$a;

    invoke-direct {v1, p0}, Lp7/d$a;-><init>(Lp7/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lp7/d;->z()V

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabledColor"
        }
    .end annotation

    iput p1, p0, Lp7/d;->l:I

    return-void
.end method

.method public B(Lp7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lp7/d;->e:Lp7/f;

    return-void
.end method

.method public o(Lp7/f;)V
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

    iget-object v0, p0, Lp7/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lp7/d;->k:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lp7/d;->l:I

    return v0
.end method

.method public s()Lp7/f;
    .locals 1

    iget-object v0, p0, Lp7/d;->e:Lp7/f;

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lp7/d;->c:Z

    return v0
.end method

.method public v(Lp7/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lp7/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public w(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lp7/d;->x(ZZ)V

    return-void
.end method

.method public x(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "active",
            "callListeners"
        }
    .end annotation

    iput-boolean p1, p0, Lp7/d;->c:Z

    invoke-virtual {p0}, Lp7/d;->z()V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lp7/d;->p()V

    :cond_0
    return-void
.end method

.method public y(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activeColor"
        }
    .end annotation

    iput p1, p0, Lp7/d;->k:I

    return-void
.end method

.method public final z()V
    .locals 3

    iget-boolean v0, p0, Lp7/d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp7/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lp7/d;->d:Landroid/content/Context;

    iget v2, p0, Lp7/d;->k:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp7/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lp7/d;->d:Landroid/content/Context;

    iget v2, p0, Lp7/d;->l:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

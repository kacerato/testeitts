.class public Ld7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static s:Ld7/c; = null

.field public static final t:I = 0x2


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/view/View;

.field public h:Landroid/content/Context;

.field public i:Landroid/app/Activity;

.field public j:Landroid/view/LayoutInflater;

.field public k:LM7/p;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public m:LM7/e;

.field public n:LM7/e;

.field public o:LM7/m;

.field public p:LM7/c;

.field public q:LM7/e;

.field public r:LM7/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld7/a$a;

    invoke-direct {v0}, Ld7/a$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ld7/a;->a:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Ld7/a;->b:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Ld7/a;->c:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, Ld7/a;->l:Ljava/util/List;

    iput-object p1, p0, Ld7/a;->i:Landroid/app/Activity;

    iput-object p1, p0, Ld7/a;->h:Landroid/content/Context;

    new-instance v2, Ld7/a$l;

    invoke-direct {v2, p0, p1}, Ld7/a$l;-><init>(Ld7/a;Landroid/app/Activity;)V

    sput-object v2, Ld7/a;->s:Ld7/c;

    invoke-virtual {p0, p1}, Ld7/a;->k(Landroid/app/Activity;)V

    new-instance v2, LM7/k;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    invoke-direct {v2, v3}, LM7/k;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LM7/c;

    new-instance v3, Ld7/a$q;

    invoke-direct {v3, p0}, Ld7/a$q;-><init>(Ld7/a;)V

    sget-object v4, LM7/c$b;->Disconnected:LM7/c$b;

    iget-object v5, p0, Ld7/a;->h:Landroid/content/Context;

    const v6, 0x7f0700ed

    invoke-direct {v2, v6, v3, v4, v5}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LM7/k;

    iget-object v3, p0, Ld7/a;->h:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v5, v3}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, LM7/k;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LM7/c;

    new-instance v3, Ld7/a$r;

    invoke-direct {v3, p0, p1}, Ld7/a$r;-><init>(Ld7/a;Landroid/app/Activity;)V

    iget-object v6, p0, Ld7/a;->h:Landroid/content/Context;

    const v7, 0x7f070212

    invoke-direct {v2, v7, v3, v4, v6}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LM7/k;

    iget-object v3, p0, Ld7/a;->h:Landroid/content/Context;

    invoke-static {v5, v3}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, LM7/k;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Ld7/a;->v(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Ld7/a;->o(Landroid/app/Activity;)V

    new-instance v2, LM7/c;

    new-instance v3, Ld7/a$s;

    invoke-direct {v3, p0}, Ld7/a$s;-><init>(Ld7/a;)V

    iget-object v6, p0, Ld7/a;->h:Landroid/content/Context;

    const v7, 0x7f0701b5

    invoke-direct {v2, v7, v3, v4, v6}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LM7/k;

    iget-object v3, p0, Ld7/a;->h:Landroid/content/Context;

    invoke-static {v5, v3}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, LM7/k;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ln/b;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, LM7/c;

    new-instance v3, Ld7/a$t;

    invoke-direct {v3, p0}, Ld7/a$t;-><init>(Ld7/a;)V

    sget-object v4, LM7/c$b;->Left:LM7/c$b;

    iget-object v6, p0, Ld7/a;->h:Landroid/content/Context;

    const v7, 0x7f07022a

    invoke-direct {v2, v7, v3, v4, v6}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->a2()LM7/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, LM7/k;

    iget-object v3, p0, Ld7/a;->h:Landroid/content/Context;

    invoke-static {v5, v3}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, LM7/k;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/m;

    new-instance v2, Ld7/a$u;

    invoke-direct {v2, p0}, Ld7/a$u;-><init>(Ld7/a;)V

    iget-object v3, p0, Ld7/a;->h:Landroid/content/Context;

    const v4, 0x7f070092

    const-string v5, "Bake"

    invoke-direct {v0, v4, v5, v2, v3}, LM7/m;-><init>(ILjava/lang/String;LM7/n;Landroid/content/Context;)V

    iput-object v0, p0, Ld7/a;->o:LM7/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld7/a;->o:LM7/m;

    invoke-virtual {v0}, LM7/g;->g()V

    new-instance v0, LM7/c;

    new-instance v2, Ld7/a$v;

    invoke-direct {v2, p0}, Ld7/a$v;-><init>(Ld7/a;)V

    iget-object v3, p0, Ld7/a;->h:Landroid/content/Context;

    const v4, 0x7f070146

    invoke-direct {v0, v4, v2, v3}, LM7/c;-><init>(ILM7/d;Landroid/content/Context;)V

    iput-object v0, p0, Ld7/a;->p:LM7/c;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld7/a;->p:LM7/c;

    invoke-virtual {v0}, LM7/g;->g()V

    new-instance v0, LM7/e;

    new-instance v2, Ld7/a$w;

    invoke-direct {v2, p0}, Ld7/a$w;-><init>(Ld7/a;)V

    const v3, 0x7f0700f4

    const-string v4, "Edit mode"

    invoke-direct {v0, v3, v4, v2, p1}, LM7/e;-><init>(ILjava/lang/String;LM7/f;Landroid/content/Context;)V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-virtual {v0, p1}, LM7/e;->a0(LAc/b;)LM7/e;

    move-result-object p1

    iput-object p1, p0, Ld7/a;->q:LM7/e;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ld7/a;->J()V

    new-instance p1, LM7/i;

    new-instance v0, Ld7/a$b;

    invoke-direct {v0, p0}, Ld7/a$b;-><init>(Ld7/a;)V

    iget-object v2, p0, Ld7/a;->h:Landroid/content/Context;

    const-string v3, "Baking"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {p1, v3, v4, v0, v2}, LM7/i;-><init>(Ljava/lang/String;FLM7/j;Landroid/content/Context;)V

    iput-object p1, p0, Ld7/a;->r:LM7/i;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ld7/a;->r:LM7/i;

    invoke-virtual {p1}, LM7/g;->g()V

    return-void
.end method

.method public static B(Landroid/view/View;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "context"
        }
    .end annotation

    invoke-static {p0, p1}, Ln/b;->a(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v5

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p0, v0}, Lq7/a;->t1(Landroid/view/View;Lr4/a$e;)Lq7/a;

    move-result-object v3

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Ld7/a$i;

    move-object v1, v0

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ld7/a$i;-><init>(Ljava/util/List;Lq7/a;Landroid/content/Context;Landroid/app/Activity;Landroid/view/View;)V

    const/4 p0, 0x0

    const-string p1, ".world"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->i(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V

    return-void
.end method

.method public static C(ILjava/lang/String;Ljava/lang/String;)Ldd/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle",
            "searchText"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECTS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Ld7/a;->D(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldd/b;

    move-result-object p0

    return-object p0
.end method

.method public static D(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldd/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle",
            "SearchTittle",
            "searchText"
        }
    .end annotation

    new-instance v0, Ldd/b;

    new-instance v1, Ld7/a$k;

    invoke-direct {v1, p2, p3}, Ld7/a$k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    return-object v0
.end method

.method public static E(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldd/b;
    .locals 2
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
            "tittle",
            "SearchTittle",
            "searchText",
            "searchTag"
        }
    .end annotation

    new-instance v0, Ldd/b;

    new-instance v1, Ld7/a$m;

    invoke-direct {v1, p2, p3, p4}, Ld7/a$m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    return-object v0
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;)Ldd/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "searchText"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECTS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Ld7/a;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldd/b;

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldd/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "SearchTittle",
            "searchText"
        }
    .end annotation

    new-instance v0, Ldd/b;

    new-instance v1, Ld7/a$n;

    invoke-direct {v1, p1, p2}, Ld7/a$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    return-object v0
.end method

.method public static H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldd/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "SearchTittle",
            "searchText",
            "searchTag"
        }
    .end annotation

    new-instance v0, Ldd/b;

    new-instance v1, Ld7/a$o;

    invoke-direct {v1, p1, p2, p3}, Ld7/a$o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    return-object v0
.end method

.method public static synthetic a(Ld7/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ld7/a;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Ld7/a;LM7/g;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld7/a;->r(LM7/g;)V

    return-void
.end method

.method public static synthetic c(Ld7/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ld7/a;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Ld7/a;LM7/g;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld7/a;->u(LM7/g;)V

    return-void
.end method

.method public static synthetic e(Ld7/a;LM7/g;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld7/a;->l(LM7/g;)V

    return-void
.end method

.method public static synthetic f(Ld7/a;LM7/g;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld7/a;->m(LM7/g;)V

    return-void
.end method

.method public static synthetic g(Ld7/a;)V
    .locals 0

    invoke-virtual {p0}, Ld7/a;->K()V

    return-void
.end method

.method public static synthetic h(Ld7/a;)LM7/p;
    .locals 0

    iget-object p0, p0, Ld7/a;->k:LM7/p;

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ldd/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animated Models - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skinned models"

    invoke-static {v0, v1, p0, v2}, Ld7/a;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldd/b;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ")",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ld7/a$j;

    invoke-direct {v0, p0}, Ld7/a$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-object v0
.end method

.method public static s(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)LM7/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance v0, LM7/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p0}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, LM7/k;-><init>(I)V

    invoke-virtual {v0, p1, p0, p2}, LM7/k;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 0

    invoke-virtual {p0}, Ld7/a;->I()V

    return-void
.end method

.method public final I()V
    .locals 6

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result v0

    invoke-virtual {p0}, Ld7/a;->J()V

    const-class v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->k(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, Ld7/a;->q:LM7/e;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->isBaking()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v4, v5}, LM7/g;->o(Z)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Ld7/a;->q:LM7/e;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, LM7/g;->o(Z)V

    :cond_2
    :goto_1
    iget-object v4, p0, Ld7/a;->o:LM7/m;

    if-eqz v4, :cond_5

    iget-object v4, p0, Ld7/a;->p:LM7/c;

    if-eqz v4, :cond_5

    iget-object v5, p0, Ld7/a;->r:LM7/i;

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->isBaking()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld7/a;->p:LM7/c;

    invoke-virtual {v0, v3}, LM7/g;->o(Z)V

    iget-object v0, p0, Ld7/a;->o:LM7/m;

    invoke-virtual {v0, v3}, LM7/g;->o(Z)V

    iget-object v0, p0, Ld7/a;->r:LM7/i;

    invoke-virtual {v0, v2}, LM7/g;->o(Z)V

    iget-object v0, p0, Ld7/a;->r:LM7/i;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getBakeProgress()F

    move-result v2

    invoke-virtual {v0, v2}, LM7/i;->b0(F)LM7/i;

    iget-object v0, p0, Ld7/a;->r:LM7/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getBakeStep()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getBakeProgress()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    const/4 v3, 0x2

    invoke-static {v1, v3}, LNc/b;->r0(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LM7/i;->W(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ld7/a;->p:LM7/c;

    invoke-virtual {v0, v2}, LM7/g;->o(Z)V

    iget-object v0, p0, Ld7/a;->o:LM7/m;

    invoke-virtual {v0, v2}, LM7/g;->o(Z)V

    iget-object v0, p0, Ld7/a;->r:LM7/i;

    invoke-virtual {v0, v3}, LM7/g;->o(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v3}, LM7/g;->o(Z)V

    iget-object v0, p0, Ld7/a;->o:LM7/m;

    invoke-virtual {v0, v3}, LM7/g;->o(Z)V

    iget-object v0, p0, Ld7/a;->r:LM7/i;

    invoke-virtual {v0, v3}, LM7/g;->o(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, Ld7/a;->q:LM7/e;

    if-eqz v0, :cond_2

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->k(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    if-eqz v0, :cond_2

    sget-object v1, Ld7/a$p;->a:[I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getMode()Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld7/a;->q:LM7/e;

    const-string v1, "Preview"

    invoke-virtual {v0, v1}, LM7/e;->h0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld7/a;->q:LM7/e;

    const-string v1, "Edit mode"

    invoke-virtual {v0, v1}, LM7/e;->h0(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, Ld7/a;->n:LM7/e;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/a;->n:LM7/e;

    const-string v1, "Adv"

    invoke-virtual {v0, v1}, LM7/e;->h0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld7/a;->n:LM7/e;

    const-string v1, "Lite"

    invoke-virtual {v0, v1}, LM7/e;->h0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public L()V
    .locals 4

    invoke-virtual {p0}, Ld7/a;->I()V

    invoke-static {}, Ln/b;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld7/a;->m:LM7/e;

    if-eqz v0, :cond_2

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ld8/j;->V()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld7/a;->m:LM7/e;

    invoke-virtual {v0}, LM7/g;->g()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Ld7/a;->m:LM7/e;

    sget-object v3, Ld8/j;->C:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LM7/e;->h0(Ljava/lang/String;)V

    iget-object v0, p0, Ld7/a;->m:LM7/e;

    invoke-virtual {v0}, LM7/g;->p()V

    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v3, :cond_3

    iget-boolean v3, v3, Lcom/itsmagic/engine/Engines/Engine/World/World;->isArea:Z

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iget-object v3, p0, Ld7/a;->n:LM7/e;

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v3}, LM7/g;->g()V

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, LM7/g;->p()V

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    :goto_5
    iget-object v0, p0, Ld7/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Ld7/a;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM7/g;

    invoke-virtual {v0}, LM7/g;->p()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    iget-object v0, p0, Ld7/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Ld7/a;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM7/g;

    invoke-virtual {v0}, LM7/g;->g()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Ld7/a;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final k(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    new-instance v0, LM7/e;

    new-instance v1, Ld7/a$c;

    invoke-direct {v1, p0}, Ld7/a$c;-><init>(Ld7/a;)V

    const v2, 0x7f070261

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1, p1}, LM7/e;-><init>(ILjava/lang/String;LM7/f;Landroid/content/Context;)V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-virtual {v0, p1}, LM7/e;->a0(LAc/b;)LM7/e;

    move-result-object p1

    iput-object p1, p0, Ld7/a;->n:LM7/e;

    iget-object v0, p0, Ld7/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ld7/a;->K()V

    return-void
.end method

.method public final l(LM7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbElement"
        }
    .end annotation

    iget-object v0, p0, Ld7/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, LM7/g;->l(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public final m(LM7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbElement"
        }
    .end annotation

    iget-object v0, p0, Ld7/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, LM7/g;->l(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public final o(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-static {}, Ln/b;->c()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, LM7/e;

    new-instance v0, Ld7/a$h;

    invoke-direct {v0, p0}, Ld7/a$h;-><init>(Ld7/a;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070245

    const-string v3, ""

    invoke-direct {p1, v2, v3, v0, v1}, LM7/e;-><init>(ILjava/lang/String;LM7/f;Landroid/content/Context;)V

    iput-object p1, p0, Ld7/a;->m:LM7/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LM7/e;->V(Z)LM7/e;

    iget-object p1, p0, Ld7/a;->m:LM7/e;

    invoke-virtual {p1}, LM7/g;->g()V

    iget-object p1, p0, Ld7/a;->b:Ljava/util/List;

    iget-object v0, p0, Ld7/a;->m:LM7/e;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p()V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Handler;

    new-instance v1, LM7/c;

    new-instance v2, Ld7/a$f;

    invoke-direct {v2, p0, v0}, Ld7/a$f;-><init>(Ld7/a;[Landroid/os/Handler;)V

    sget-object v3, LM7/c$b;->Right:LM7/c$b;

    iget-object v4, p0, Ld7/a;->h:Landroid/content/Context;

    const v5, 0x7f0700b5

    invoke-direct {v1, v5, v2, v3, v4}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    const v2, 0x7f0500b0

    invoke-virtual {v1, v2}, LM7/c;->T(I)LM7/c;

    const v2, 0x7f0500f3

    invoke-virtual {v1, v2}, LM7/c;->T(I)LM7/c;

    invoke-virtual {v1}, LM7/g;->g()V

    iget-object v2, p0, Ld7/a;->a:Ljava/util/List;

    new-instance v3, LM7/c;

    new-instance v4, Ld7/a$g;

    invoke-direct {v4, p0, v1, v0}, Ld7/a$g;-><init>(Ld7/a;LM7/c;[Landroid/os/Handler;)V

    sget-object v0, LM7/c$b;->Disconnected:LM7/c$b;

    iget-object v5, p0, Ld7/a;->h:Landroid/content/Context;

    const v6, 0x7f070097

    invoke-direct {v3, v6, v4, v0, v5}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld7/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Ld7/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Ld7/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ld7/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ld7/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM7/g;

    invoke-virtual {p0, v2}, Ld7/a;->r(LM7/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Ld7/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ld7/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM7/g;

    invoke-virtual {p0, v2}, Ld7/a;->u(LM7/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v1, p0, Ld7/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ld7/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM7/g;

    invoke-virtual {p0, v1}, Ld7/a;->w(LM7/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Ln/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld7/a;->k:LM7/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LM7/p;->w(I)V

    :cond_3
    return-void
.end method

.method public final r(LM7/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Ld7/a;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ld7/a;->h:Landroid/content/Context;

    iget-object v2, p0, Ld7/a;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0, v1, v2}, LM7/g;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iget-object v0, p0, Ld7/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Ld7/a;->t(Landroid/widget/LinearLayout;)LM7/k;

    move-result-object v0

    invoke-virtual {v0}, LM7/g;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, LM7/g;->n(Landroid/view/View;)V

    return-void
.end method

.method public final t(Landroid/widget/LinearLayout;)LM7/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    iget-object v0, p0, Ld7/a;->h:Landroid/content/Context;

    iget-object v1, p0, Ld7/a;->j:Landroid/view/LayoutInflater;

    invoke-static {v0, p1, v1}, Ld7/a;->s(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)LM7/k;

    move-result-object p1

    return-object p1
.end method

.method public final u(LM7/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Ld7/a;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ld7/a;->h:Landroid/content/Context;

    iget-object v2, p0, Ld7/a;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0, v1, v2}, LM7/g;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iget-object v0, p0, Ld7/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Ld7/a;->t(Landroid/widget/LinearLayout;)LM7/k;

    move-result-object v0

    invoke-virtual {v0}, LM7/g;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, LM7/g;->n(Landroid/view/View;)V

    return-void
.end method

.method public final v(Landroid/app/Activity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-static {}, Ln/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM7/p;

    iget-object v1, p0, Ld7/a;->h:Landroid/content/Context;

    new-instance v2, Ld7/a$d;

    invoke-direct {v2, p0, p1}, Ld7/a$d;-><init>(Ld7/a;Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, LM7/p;-><init>(Landroid/content/Context;LM7/q;)V

    iput-object v0, p0, Ld7/a;->k:LM7/p;

    new-instance v1, LM7/o;

    sget-object v2, LM7/c$b;->Left:LM7/c$b;

    iget-object v3, p0, Ld7/a;->h:Landroid/content/Context;

    const v4, 0x7f070229

    invoke-direct {v1, v4, v2, v3}, LM7/o;-><init>(ILM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/p;->s(LM7/g;)LM7/p;

    iget-object v0, p0, Ld7/a;->k:LM7/p;

    new-instance v1, LM7/o;

    sget-object v2, LM7/c$b;->Middle:LM7/c$b;

    iget-object v3, p0, Ld7/a;->h:Landroid/content/Context;

    const v4, 0x7f0701d6

    invoke-direct {v1, v4, v2, v3}, LM7/o;-><init>(ILM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/p;->s(LM7/g;)LM7/p;

    iget-object v0, p0, Ld7/a;->k:LM7/p;

    new-instance v1, LM7/o;

    sget-object v2, LM7/c$b;->Right:LM7/c$b;

    iget-object v3, p0, Ld7/a;->h:Landroid/content/Context;

    const v4, 0x7f0701db

    invoke-direct {v1, v4, v2, v3}, LM7/o;-><init>(ILM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/p;->s(LM7/g;)LM7/p;

    iget-object v0, p0, Ld7/a;->b:Ljava/util/List;

    iget-object v1, p0, Ld7/a;->k:LM7/p;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld7/a;->k:LM7/p;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, LM7/p;->z(IZ)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lc8/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld7/a;->k:LM7/p;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, LM7/p;->z(IZ)V

    :cond_2
    :goto_0
    new-instance v0, Lc8/d;

    new-instance v1, Ld7/a$e;

    invoke-direct {v1, p0, p1}, Ld7/a$e;-><init>(Ld7/a;Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1}, Lc8/d;-><init>(Ljava/lang/Object;Lc8/c;)V

    invoke-static {v0}, Lc8/b;->q(Lc8/d;)V

    iget-object p1, p0, Ld7/a;->l:Ljava/util/List;

    iget-object v0, p0, Ld7/a;->k:LM7/p;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final w(LM7/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Ld7/a;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ld7/a;->h:Landroid/content/Context;

    iget-object v2, p0, Ld7/a;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0, v1, v2}, LM7/g;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iget-object v0, p0, Ld7/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Ld7/a;->t(Landroid/widget/LinearLayout;)LM7/k;

    move-result-object v0

    invoke-virtual {v0}, LM7/g;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, LM7/g;->n(Landroid/view/View;)V

    return-void
.end method

.method public x(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftContent",
            "middleContent",
            "rightContent",
            "activity"
        }
    .end annotation

    iput-object p4, p0, Ld7/a;->i:Landroid/app/Activity;

    iput-object p1, p0, Ld7/a;->d:Landroid/widget/LinearLayout;

    iput-object p2, p0, Ld7/a;->e:Landroid/widget/LinearLayout;

    iput-object p3, p0, Ld7/a;->f:Landroid/widget/LinearLayout;

    iput-object p4, p0, Ld7/a;->h:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ld7/a;->j:Landroid/view/LayoutInflater;

    const p1, 0x7f0901df

    invoke-virtual {p4, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ld7/a;->g:Landroid/view/View;

    invoke-virtual {p0}, Ld7/a;->j()V

    invoke-virtual {p0}, Ld7/a;->q()V

    return-void
.end method

.method public y()V
    .locals 0

    invoke-virtual {p0}, Ld7/a;->K()V

    return-void
.end method

.method public z()V
    .locals 3

    invoke-virtual {p0}, Ld7/a;->j()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ld7/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ld7/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM7/g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LM7/g;->k()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Ld7/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ld7/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM7/g;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LM7/g;->k()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

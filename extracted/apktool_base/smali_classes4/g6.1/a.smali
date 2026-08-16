.class public Lg6/a;
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
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LF7/e;

    invoke-direct {v0}, LF7/e;-><init>()V

    sput-object v0, Lg6/a;->o:LF7/e;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "showEnableToggle",
            "showVisionBtn",
            "showTouchButton"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg6/c;

    invoke-direct {v1}, Lg6/c;-><init>()V

    invoke-direct {p0, v0, v1}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p3, :cond_0

    new-instance p3, LG7/d;

    new-instance v1, Lg6/a$a;

    invoke-direct {v1, p0}, Lg6/a$a;-><init>(Lg6/a;)V

    invoke-direct {p3, v1}, LG7/d;-><init>(LG7/g;)V

    const v1, 0x7f07025e

    invoke-virtual {p3, v1}, LG7/d;->o(I)V

    invoke-virtual {p3, v1}, LG7/d;->q(I)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {p3, v1}, LG7/d;->n(I)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {p3, v1}, LG7/d;->p(I)V

    invoke-virtual {p3, v0}, LG7/d;->r(I)V

    invoke-super {p0, p3}, LF7/i;->b(LG7/a;)LF7/i;

    :cond_0
    if-eqz p4, :cond_1

    new-instance p3, LG7/d;

    new-instance p4, Lg6/a$b;

    invoke-direct {p4, p0}, Lg6/a$b;-><init>(Lg6/a;)V

    invoke-direct {p3, p4}, LG7/d;-><init>(LG7/g;)V

    const p4, 0x7f070247

    invoke-virtual {p3, p4}, LG7/d;->o(I)V

    invoke-virtual {p3, p4}, LG7/d;->q(I)V

    sget-object p4, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    invoke-static {p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p4

    invoke-virtual {p3, p4}, LG7/d;->n(I)V

    sget-object p4, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p4

    invoke-virtual {p3, p4}, LG7/d;->p(I)V

    invoke-virtual {p3, v0}, LG7/d;->r(I)V

    invoke-super {p0, p3}, LF7/i;->b(LG7/a;)LF7/i;

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    new-instance p2, LG7/f;

    new-instance p3, Lg6/a$c;

    invoke-direct {p3, p0}, Lg6/a$c;-><init>(Lg6/a;)V

    invoke-direct {p2, p3}, LG7/f;-><init>(LG7/g;)V

    invoke-super {p0, p2}, LF7/i;->a(LG7/a;)LF7/i;

    :cond_2
    new-instance p2, Lg6/a$d;

    invoke-direct {p2, p0}, Lg6/a$d;-><init>(Lg6/a;)V

    iput-object p2, p0, LF7/i;->j:LF7/c;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lg6/a;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic u(Lg6/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lg6/a;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg6/a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg6/a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2

    iget-object v0, p0, Lg6/a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg6/a;->m:Ljava/lang/ref/WeakReference;

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

.method public final w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->PrefabLink:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;->isChild()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

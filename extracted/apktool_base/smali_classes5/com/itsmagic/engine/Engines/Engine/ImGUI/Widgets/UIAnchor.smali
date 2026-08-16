.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;
.source "SourceFile"


# static fields
.field public static final S:Ljava/lang/String; = "UIAnchor"

.field public static final T:Ljava/lang/Class;


# instance fields
.field public final P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LJAVARuntime/GizmoPath;",
            ">;"
        }
    .end annotation
.end field

.field public final Q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LJAVARuntime/GizmoPath;",
            ">;"
        }
    .end annotation
.end field

.field public R:LJAVARuntime/Component;

.field public bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public expandH:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public expandW:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->T:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$i;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$i;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UIAnchor"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandW:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandH:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->P:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->Q:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->Q:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->m()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->m()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->m()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->m()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    .line 7
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandW:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandW:Z

    .line 8
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandH:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandH:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public createAnchorObjectEntry(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;Ljava/lang/String;LT9/e;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "UIAnchorObject",
            "tittle",
            "injectionEntryListener"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$p;

    invoke-direct {v0, p0, p4, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;LT9/e;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createDualConstraint(Landroid/content/Context;Ljava/lang/String;LT9/d;)LC5/b;

    move-result-object p1

    return-object p1
.end method

.method public createAnchorObjectEntry(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;Ljava/lang/String;LT9/e;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "UIAnchorObject",
            "tittle",
            "injectionEntryListener"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;

    invoke-direct {v0, p0, p4, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;LT9/e;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createDualConstraint(Landroid/content/Context;Ljava/lang/String;LT9/h;)LC5/b;

    move-result-object p1

    return-object p1
.end method

.method public createConstraintEntry(Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;LT9/c;)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "context",
            "currentType",
            "unitTypeEntryListener"
        }
    .end annotation

    .line 2
    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$g;

    invoke-direct {p2, p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;LT9/c;)V

    const-class p4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    invoke-static {p1, p4, p3, p2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object p1

    return-object p1
.end method

.method public createConstraintEntry(Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;LT9/g;)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "context",
            "currentType",
            "unitTypeEntryListener"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$f;

    invoke-direct {p2, p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;LT9/g;)V

    const-class p4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    invoke-static {p1, p4, p3, p2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object p1

    return-object p1
.end method

.method public createDualConstraint(Landroid/content/Context;Ljava/lang/String;LT9/d;)LC5/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "varName",
            "dualEntryListener"
        }
    .end annotation

    .line 7
    invoke-interface {p3}, LT9/d;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    if-ne v0, v1, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, LT9/d;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$c;

    invoke-direct {v1, p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;LT9/d;)V

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createConstraintEntry(Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;LT9/c;)LC5/b;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance v0, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x2

    new-array v2, v2, [LC5/b;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    .line 11
    iget-object v1, v0, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$d;

    invoke-direct {v3, p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;LT9/d;)V

    invoke-direct {v2, v3, p2}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    const/4 p2, 0x0

    aput-object v2, v1, p2

    .line 12
    iget-object p2, v0, LC5/b;->p:[LC5/b;

    invoke-interface {p3}, LT9/d;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$e;

    invoke-direct {v2, p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;LT9/d;)V

    const-string p3, "to"

    invoke-virtual {p0, p3, p1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createConstraintEntry(Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;LT9/c;)LC5/b;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    return-object v0
.end method

.method public createDualConstraint(Landroid/content/Context;Ljava/lang/String;LT9/h;)LC5/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "varName",
            "dualEntryListener"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, LT9/h;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, LT9/h;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$q;

    invoke-direct {v1, p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;LT9/h;)V

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createConstraintEntry(Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;LT9/g;)LC5/b;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x2

    new-array v2, v2, [LC5/b;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    .line 5
    iget-object v1, v0, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$a;

    invoke-direct {v3, p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;LT9/h;)V

    invoke-direct {v2, v3, p2}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    const/4 p2, 0x0

    aput-object v2, v1, p2

    .line 6
    iget-object p2, v0, LC5/b;->p:[LC5/b;

    invoke-interface {p3}, LT9/h;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$b;

    invoke-direct {v2, p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;LT9/h;)V

    const-string p3, "to"

    invoke-virtual {p0, p3, p1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createConstraintEntry(Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;LT9/g;)LC5/b;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    return-object v0
.end method

.method public drawAnchor(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "scaler",
            "drawEndBall"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    new-instance v1, LJAVARuntime/Vector3;

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr p3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, p3, p3, v2}, LJAVARuntime/Vector3;-><init>(FFF)V

    new-instance v3, LJAVARuntime/Color;

    const/16 v4, 0xd6

    const/16 v5, 0x4e

    const/16 v6, 0x45

    invoke-direct {v3, v4, v5, v6}, LJAVARuntime/Color;-><init>(III)V

    invoke-static {v0, v1, v3}, LJAVARuntime/Gizmo;->drawSphere(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Color;)V

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p4

    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0, p3, p3, v2}, LJAVARuntime/Vector3;-><init>(FFF)V

    new-instance p3, LJAVARuntime/Color;

    const/16 v1, 0x71

    invoke-direct {p3, v4, v1, v6}, LJAVARuntime/Color;-><init>(III)V

    invoke-static {p4, v0, p3}, LJAVARuntime/Gizmo;->drawSphere(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Color;)V

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "-"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->P:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LJAVARuntime/GizmoPath;

    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->Q:Ljava/util/Set;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p4}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void

    :cond_1
    new-instance p4, LJAVARuntime/GizmoPath;

    invoke-direct {p4}, LJAVARuntime/GizmoPath;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    new-instance p1, LJAVARuntime/Color;

    const/16 p2, 0x3c

    const/16 v0, 0x2e

    const/16 v1, 0xff

    invoke-direct {p1, v1, p2, v0}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {p4, p1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    invoke-static {p4}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->Q:Ljava/util/Set;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->P:Ljava/util/Map;

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public drawGizmos(FZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scaler",
            "drawEndBall"
        }
    .end annotation

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->c()I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getTopAnchorPoints()LV9/j;

    move-result-object v1

    const v2, 0x459c4000    # 5000.0f

    if-eqz v1, :cond_0

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, LV9/j;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1}, LV9/j;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-direct {v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, LV9/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1}, LV9/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-direct {v4, v5, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->drawAnchor(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getBottomAnchorPoints()LV9/j;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, LV9/j;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1}, LV9/j;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-direct {v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, LV9/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1}, LV9/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-direct {v4, v5, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->drawAnchor(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getLeftAnchorPoints()LV9/j;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, LV9/j;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1}, LV9/j;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-direct {v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, LV9/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1}, LV9/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-direct {v4, v5, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->drawAnchor(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getRightAnchorPoints()LV9/j;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, LV9/j;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1}, LV9/j;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-direct {v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, LV9/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1}, LV9/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-direct {v4, v5, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->drawAnchor(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FZ)V

    :cond_3
    :try_start_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->P:Ljava/util/Map;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$j;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->P:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->Q:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getBottomAnchor()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    return-object v0
.end method

.method public getBottomAnchorPoints()LV9/j;
    .locals 7

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->d()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v5

    invoke-virtual {v5}, LW9/c;->c()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->e()I

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->b()I

    move-result v0

    add-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->c()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$h;->b:[I

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->e()I

    move-result v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->b()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    :goto_0
    new-instance v0, LV9/j;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>(II)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v5, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>(II)V

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0, v4, v2, v1}, LV9/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomOffset()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v0

    return v0
.end method

.method public getBottomTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07022e

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LEFT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createAnchorObjectEntry(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;Ljava/lang/String;LT9/e;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TOP:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createAnchorObjectEntry(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;Ljava/lang/String;LT9/e;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RIGHT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createAnchorObjectEntry(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;Ljava/lang/String;LT9/e;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BOTTOM:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createAnchorObjectEntry(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;Ljava/lang/String;LT9/e;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$l;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    const-string v2, "Margin"

    invoke-static {p1, v2, v1}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$m;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v3, "Expand width"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$n;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    const-string v3, "Expand height"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLayoutDependencyStamp()I
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    mul-int/2addr v0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutStamp()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    mul-int/2addr v0, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutStamp()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    mul-int/2addr v0, v1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutStamp()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    mul-int/2addr v0, v1

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutStamp()I

    move-result v3

    :cond_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandW:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandH:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public getLayoutLayer()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLeftAnchor()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    return-object v0
.end method

.method public getLeftAnchorPoints()LV9/j;
    .locals 6

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->d()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->e()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->b()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    add-float/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$h;->a:[I

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->d()I

    move-result v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->c()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    :goto_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->b()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    new-instance v0, LV9/j;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>(II)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v5, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>(II)V

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0, v4, v2, v1}, LV9/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftOffset()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v0

    return v0
.end method

.method public getLeftTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0
.end method

.method public getRightAnchor()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    return-object v0
.end method

.method public getRightAnchorPoints()LV9/j;
    .locals 6

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->d()I

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v5

    invoke-virtual {v5}, LW9/c;->c()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->e()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->b()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    add-float/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$h;->a:[I

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->d()I

    move-result v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->c()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    :goto_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->b()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    new-instance v0, LV9/j;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>(II)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v5, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>(II)V

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0, v4, v2, v1}, LV9/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightOffset()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v0

    return v0
.end method

.method public getRightTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Anchor"

    return-object v0
.end method

.method public getTopAnchor()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    return-object v0
.end method

.method public getTopAnchorPoints()LV9/j;
    .locals 7

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->d()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v5

    invoke-virtual {v5}, LW9/c;->c()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->c()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$h;->b:[I

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->e()I

    move-result v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->b()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    :goto_0
    new-instance v0, LV9/j;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>(II)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v5, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>(II)V

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0, v4, v2, v1}, LV9/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopOffset()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v0

    return v0
.end method

.method public getTopTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIAnchor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExpandH()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandH:Z

    return v0
.end method

.method public isExpandW()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandW:Z

    return v0
.end method

.method public onLayout(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->j()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->j()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->j()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->j()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerScreenRect()LW9/c;

    move-result-object v0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParentPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, LW9/c;->c()I

    invoke-virtual {v0}, LW9/c;->b()I

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->e()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->f()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->g()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->c()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->e()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->f()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->g()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->c()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v8

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v2

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v8

    add-int/2addr v2, v8

    add-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v6

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v8

    sub-int/2addr v6, v8

    sub-int/2addr v6, v3

    int-to-float v3, v6

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandW:Z

    if-eqz v6, :cond_3

    sub-float/2addr v3, v2

    float-to-int v0, v3

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    goto :goto_0

    :cond_3
    add-float/2addr v2, v3

    mul-float/2addr v2, v12

    mul-float/2addr v0, v12

    goto/16 :goto_3

    :goto_0
    move v0, v13

    goto/16 :goto_5

    :cond_4
    if-eqz v8, :cond_7

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$h;->a:[I

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v13, :cond_6

    if-eq v0, v11, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v0

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    int-to-float v2, v0

    goto :goto_0

    :cond_6
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v0

    add-int/2addr v0, v6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v2

    goto :goto_1

    :cond_7
    if-eqz v9, :cond_a

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$h;->a:[I

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    if-eq v6, v13, :cond_9

    if-eq v6, v11, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v2

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    sub-float/2addr v2, v0

    int-to-float v0, v3

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    :goto_3
    sub-float/2addr v2, v0

    goto :goto_0

    :cond_9
    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    int-to-float v0, v3

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v0

    goto :goto_2

    :cond_a
    :goto_4
    move v0, v10

    :goto_5
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v3

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v6

    if-eqz v3, :cond_c

    if-eqz v6, :cond_c

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v3

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v7

    add-int/2addr v3, v7

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v4

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v6

    sub-int/2addr v4, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandH:Z

    if-eqz v5, :cond_b

    sub-float/2addr v4, v3

    float-to-int v1, v4

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    :goto_6
    move v7, v3

    goto/16 :goto_9

    :cond_b
    add-float/2addr v3, v4

    mul-float/2addr v3, v12

    mul-float/2addr v1, v12

    sub-float/2addr v3, v1

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_f

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$h;->b:[I

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v13, :cond_e

    if-eq v1, v11, :cond_d

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v3

    :goto_7
    add-int/2addr v1, v3

    int-to-float v7, v1

    goto :goto_9

    :cond_e
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    add-int/2addr v1, v5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v3

    goto :goto_7

    :cond_f
    if-eqz v6, :cond_12

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$h;->b:[I

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v13, :cond_11

    if-eq v3, v11, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v3

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v1

    int-to-float v1, v5

    sub-float v7, v3, v1

    goto :goto_9

    :cond_11
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    int-to-float v1, v5

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v1

    int-to-float v1, v1

    add-float v7, v3, v1

    goto :goto_9

    :cond_12
    :goto_8
    move v13, v10

    :goto_9
    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLocalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    :cond_13
    if-eqz v13, :cond_14

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLocalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v7, v0

    :cond_14
    invoke-static {v2}, LNc/b;->j1(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v7}, LNc/b;->j1(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1, v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalPosition(IIZ)Z

    return-void
.end method

.method public setBottomAnchor(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bottomAnchor"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBottomOffset(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->r(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setBottomTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->bottomAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setExpandH(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandH"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandH:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandH:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setExpandW(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandW"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandW:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->expandW:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setLeftAnchor(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftAnchor"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLeftOffset(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->r(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setLeftTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->leftAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setRightAnchor(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightAnchor"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRightOffset(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->p()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->r(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setRightTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->rightAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->R:LJAVARuntime/Component;

    return-void
.end method

.method public setTopAnchor(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topAnchor"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTopOffset(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->p()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->r(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setTopTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->topAnchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->R:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIAnchor;

    invoke-direct {v0, p0}, LJAVARuntime/UIAnchor;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->R:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

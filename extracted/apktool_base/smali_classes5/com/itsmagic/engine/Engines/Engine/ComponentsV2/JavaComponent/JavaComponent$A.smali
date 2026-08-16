.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "A"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Input/Key;

.field public b:LJAVARuntime/Component;

.field public c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final d:Lo8/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;->d:Lo8/d;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$k;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;)LJAVARuntime/Component;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;->b:LJAVARuntime/Component;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;)Lcom/itsmagic/engine/Engines/Input/Key;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;->a:Lcom/itsmagic/engine/Engines/Input/Key;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/itsmagic/engine/Engines/Input/Key;LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "collision",
            "runtimeComponent",
            "gameObject"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;->a:Lcom/itsmagic/engine/Engines/Input/Key;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;->b:LJAVARuntime/Component;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$A;->d:Lo8/d;

    invoke-static {p3, p1}, Ld8/m;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lo8/d;)Z

    :cond_0
    return-void
.end method

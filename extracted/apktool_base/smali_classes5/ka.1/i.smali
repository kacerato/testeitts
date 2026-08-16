.class public Lka/i;
.super Lka/a;
.source "SourceFile"


# static fields
.field public static final m:Ljava/lang/String; = "GetCollisionContactAt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lka/i$a;

    invoke-direct {v0}, Lka/i$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_CONTACT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lga/H;->CONTACT:Lga/H;

    const-string v2, "GetCollisionContactAt"

    const-string v3, "Get Contact At"

    const-string v4, "Contact"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lka/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/H;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-super {p0}, Lka/a;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public G0(Lj9/a;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collision",
            "index"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p1, Lj9/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lj9/a;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-super {p0}, Lka/a;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic M()Lga/B;
    .locals 1

    invoke-super {p0}, Lka/a;->M()Lga/B;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "graphData"
        }
    .end annotation

    invoke-super {p0, p1}, Lka/a;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(ILga/H;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "inputIndex",
            "desiredType"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lka/a;->a(ILga/H;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m0()V
    .locals 0

    invoke-super {p0}, Lka/a;->m0()V

    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_GET_COLLISION_CONTACT_AT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

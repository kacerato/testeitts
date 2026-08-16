.class public Lka/k;
.super Lka/b;
.source "SourceFile"

# interfaces
.implements Lga/k;


# static fields
.field public static final l:Ljava/lang/String; = "GetCollisionContactList"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lka/k$a;

    invoke-direct {v0}, Lka/k$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_CONTACT_LIST:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lga/H;->LIST:Lga/H;

    const-string v2, "GetCollisionContactList"

    const-string v3, "Get Contact List"

    const-string v4, "Contacts"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lka/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/H;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-super {p0}, Lka/b;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public G0(Lj9/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lga/H;->CONTACT:Lga/H;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lga/m;->m(Lga/H;Ljava/util/List;)Lga/l;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lga/H;->CONTACT:Lga/H;

    iget-object p1, p1, Lj9/a;->d:Ljava/util/List;

    invoke-static {v0, p1}, Lga/m;->m(Lga/H;Ljava/util/List;)Lga/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-super {p0}, Lka/b;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic M()Lga/B;
    .locals 1

    invoke-super {p0}, Lka/b;->M()Lga/B;

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

    invoke-super {p0, p1}, Lka/b;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

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

    invoke-super {p0, p1, p2}, Lka/b;->a(ILga/H;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(ILga/D;)Lga/H;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputIndex",
            "resolver"
        }
    .end annotation

    sget-object p1, Lga/H;->CONTACT:Lga/H;

    return-object p1
.end method

.method public bridge synthetic m0()V
    .locals 0

    invoke-super {p0}, Lka/b;->m0()V

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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_GET_COLLISION_CONTACT_LIST:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

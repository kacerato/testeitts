.class public Lpa/b;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lga/F;


# static fields
.field public static final n:Ljava/lang/String; = "InputDialog"

.field public static final o:I = 0x0

.field public static final p:I = 0x1

.field public static final q:I = 0x2

.field public static final r:I = 0x3

.field public static final s:I = 0x4

.field public static final t:I = 0x0

.field public static final u:I = 0x1

.field public static final v:I = 0x2


# instance fields
.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public transient i:Z

.field public transient j:Z

.field public transient k:Ljava/lang/Object;

.field public transient l:LJAVARuntime/InputDialog$Type;

.field public transient m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpa/b$a;

    invoke-direct {v0}, Lpa/b$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lga/H;->TEXT:Lga/H;

    const-string v2, "Title"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_TITLE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "Type"

    sget-object v4, Lga/H;->INPUT_DIALOG_TYPE:Lga/H;

    invoke-direct {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_TYPE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v4, "Default Text"

    invoke-direct {v3, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_DEFAULT_TEXT:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v5, "Cancel Button"

    invoke-direct {v4, v5, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_CANCEL_BUTTON:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v4

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v6, "Done Button"

    invoke-direct {v5, v6, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_DONE_BUTTON:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v2, v3, v4, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lpa/b;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "Result"

    sget-object v2, Lga/H;->DYNAMIC:Lga/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_RESULT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v3, "On Success"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ON_SUCCESS:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v4, "On Cancel"

    invoke-direct {v3, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ON_CANCEL:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lpa/b;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v0, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    iput-object v0, p0, Lpa/b;->l:LJAVARuntime/InputDialog$Type;

    const-string v0, "InputDialog"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic G0(Lpa/b;JLjava/lang/String;LJAVARuntime/InputDialog$Type;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lpa/b;->N0(JLjava/lang/String;LJAVARuntime/InputDialog$Type;)V

    return-void
.end method

.method public static synthetic H0(Lpa/b;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lpa/b;->M0(J)V

    return-void
.end method


# virtual methods
.method public E0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->E0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lpa/b;->i:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lpa/b;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lpa/b;->k:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lpa/b;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpa/b;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lpa/b;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lpa/b;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public final I0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpa/b;->i:Z

    iput-boolean v0, p0, Lpa/b;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lpa/b;->k:Ljava/lang/Object;

    sget-object v0, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    iput-object v0, p0, Lpa/b;->l:LJAVARuntime/InputDialog$Type;

    return-void
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lpa/b;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public final J0()LJAVARuntime/InputDialog$Type;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lga/H;->INPUT_DIALOG_TYPE:Lga/H;

    invoke-virtual {p0, v0, v1}, Lpa/b;->a(ILga/H;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lga/m;->Y(Ljava/lang/Object;)LJAVARuntime/InputDialog$Type;

    move-result-object v0

    return-object v0
.end method

.method public final K0(Ljava/lang/String;LJAVARuntime/InputDialog$Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "dialogType"
        }
    .end annotation

    sget-object v0, LJAVARuntime/InputDialog$Type;->Float:LJAVARuntime/InputDialog$Type;

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Lga/m;->V(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, LJAVARuntime/InputDialog$Type;->Int:LJAVARuntime/InputDialog$Type;

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lga/m;->M(Ljava/lang/Object;)Lga/b;

    move-result-object p1

    invoke-virtual {p1}, Lga/b;->g()J

    move-result-wide p1

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final L0(LJAVARuntime/InputDialog$Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogType"
        }
    .end annotation

    sget-object v0, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public M()Lga/B;
    .locals 1

    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public final M0(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbackSession"
        }
    .end annotation

    iget-wide v0, p0, Lpa/b;->m:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lpa/b;->j:Z

    iput-boolean p1, p0, Lpa/b;->i:Z

    iget-object p1, p0, Lpa/b;->l:LJAVARuntime/InputDialog$Type;

    invoke-virtual {p0, p1}, Lpa/b;->L0(LJAVARuntime/InputDialog$Type;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lpa/b;->k:Ljava/lang/Object;

    return-void
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const-string p1, "Input Dialog"

    return-object p1
.end method

.method public final N0(JLjava/lang/String;LJAVARuntime/InputDialog$Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callbackSession",
            "text",
            "dialogType"
        }
    .end annotation

    iget-wide v0, p0, Lpa/b;->m:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p4, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    :goto_0
    iput-object p4, p0, Lpa/b;->l:LJAVARuntime/InputDialog$Type;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lpa/b;->j:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpa/b;->i:Z

    invoke-virtual {p0, p3, p4}, Lpa/b;->K0(Ljava/lang/String;LJAVARuntime/InputDialog$Type;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lpa/b;->k:Ljava/lang/Object;

    return-void
.end method

.method public final O0(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "advanceSession"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lpa/b;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lpa/b;->m:J

    :cond_0
    invoke-virtual {p0}, Lpa/b;->I0()V

    return-void
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "desiredType"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "Input"

    return-object p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    sget-object p1, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "type here"

    return-object p1

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const-string p1, "cancel"

    return-object p1

    :cond_3
    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    const-string p1, "done"

    return-object p1

    :cond_4
    const-string p1, ""

    return-object p1
.end method

.method public j0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpa/b;->O0(Z)V

    return-void
.end method

.method public k0()V
    .locals 0

    invoke-virtual {p0}, Lpa/b;->I0()V

    return-void
.end method

.method public m0()V
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpa/b;->O0(Z)V

    iget-object v1, p0, Lpa/b;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->Y(Ljava/lang/Object;)LJAVARuntime/InputDialog$Type;

    move-result-object v0

    iput-object v0, p0, Lpa/b;->l:LJAVARuntime/InputDialog$Type;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lpa/b;->m:J

    invoke-virtual {p0, v0, v1}, Lpa/b;->M0(J)V

    return-void

    :cond_0
    iget-wide v0, p0, Lpa/b;->m:J

    iget-object v7, p0, Lpa/b;->l:LJAVARuntime/InputDialog$Type;

    iget-object v2, p0, Lpa/b;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lpa/b;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lpa/b;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lpa/b;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v6, 0x4

    aget-object v2, v2, v6

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v2, LJAVARuntime/InputDialog;

    new-instance v8, Lpa/b$b;

    invoke-direct {v8, p0, v0, v1, v7}, Lpa/b$b;-><init>(Lpa/b;JLJAVARuntime/InputDialog$Type;)V

    invoke-direct/range {v2 .. v8}, LJAVARuntime/InputDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialog$Type;LJAVARuntime/InputDialogListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v0, v1}, Lpa/b;->M0(J)V

    :goto_0
    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "resolver"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t0(ILga/D;)Lga/H;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lga/D;->a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lga/H;->DYNAMIC:Lga/H;

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lpa/b;->J0()LJAVARuntime/InputDialog$Type;

    move-result-object p1

    sget-object p2, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    if-ne p1, p2, :cond_3

    sget-object p1, Lga/H;->TEXT:Lga/H;

    goto :goto_1

    :cond_3
    sget-object p1, Lga/H;->NUMBER:Lga/H;

    :goto_1
    return-object p1
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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_INPUT_DIALOG:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

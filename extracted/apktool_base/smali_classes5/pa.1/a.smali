.class public abstract Lpa/a;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/a$b;
    }
.end annotation


# static fields
.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2


# instance fields
.field public transient g:Z

.field public transient h:I

.field public transient i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lpa/a;->h:I

    return-void
.end method

.method public static synthetic G0(Lpa/a;JILJAVARuntime/PopupDialog;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lpa/a;->V0(JILJAVARuntime/PopupDialog;)V

    return-void
.end method

.method private L0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpa/a;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lpa/a;->h:I

    return-void
.end method

.method private U0(Z)V
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

    iget-wide v0, p0, Lpa/a;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lpa/a;->i:J

    :cond_0
    invoke-direct {p0}, Lpa/a;->L0()V

    return-void
.end method


# virtual methods
.method public E0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->E0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lpa/a;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lpa/a;->h:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iget v1, p0, Lpa/a;->h:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final H0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lpa/a$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "sessionId",
            "outputIndex",
            "inputSlot",
            "kind"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    new-instance v6, Lpa/a$a;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p2

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lpa/a$a;-><init>(Lpa/a;JILJAVARuntime/PopupDialog;)V

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p5, v6}, LJAVARuntime/PopupDialog;->setMidButton(Ljava/lang/String;LJAVARuntime/PopupDialogListener;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, p5, v6}, LJAVARuntime/PopupDialog;->setCancelButton(Ljava/lang/String;LJAVARuntime/PopupDialogListener;)V

    return-void

    :cond_3
    invoke-virtual {p1, p5, v6}, LJAVARuntime/PopupDialog;->setConfirmButton(Ljava/lang/String;LJAVARuntime/PopupDialogListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final I0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "sessionId",
            "outputIndex",
            "inputSlot"
        }
    .end annotation

    sget-object v6, Lpa/a$b;->CANCEL:Lpa/a$b;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lpa/a;->H0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lpa/a$b;)V

    return-void
.end method

.method public final J0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "sessionId",
            "outputIndex",
            "inputSlot"
        }
    .end annotation

    sget-object v6, Lpa/a$b;->CONFIRM:Lpa/a$b;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lpa/a;->H0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lpa/a$b;)V

    return-void
.end method

.method public final K0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "sessionId",
            "outputIndex",
            "inputSlot"
        }
    .end annotation

    sget-object v6, Lpa/a$b;->MID:Lpa/a$b;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lpa/a;->H0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lpa/a$b;)V

    return-void
.end method

.method public M()Lga/B;
    .locals 1

    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public abstract M0(LJAVARuntime/PopupDialog;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "sessionId"
        }
    .end annotation
.end method

.method public final N0()Ljava/lang/String;
    .locals 1

    const-string v0, "cancel"

    return-object v0
.end method

.method public final O0()Ljava/lang/String;
    .locals 1

    const-string v0, "ok"

    return-object v0
.end method

.method public final P0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final Q0()Ljava/lang/String;
    .locals 1

    const-string v0, "mid"

    return-object v0
.end method

.method public final R0()Ljava/lang/String;
    .locals 1

    const-string v0, "Popup"

    return-object v0
.end method

.method public final S0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lga/G;->SUCCESS:Lga/G;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract T0()I
.end method

.method public final V0(JILJAVARuntime/PopupDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callbackSession",
            "outputIndex",
            "dialog"
        }
    .end annotation

    iget-wide v0, p0, Lpa/a;->i:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    :try_start_0
    invoke-virtual {p4}, LJAVARuntime/PopupDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iput p3, p0, Lpa/a;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpa/a;->g:Z

    return-void
.end method

.method public j0()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lpa/a;->U0(Z)V

    return-void
.end method

.method public k0()V
    .locals 0

    invoke-direct {p0}, Lpa/a;->L0()V

    return-void
.end method

.method public m0()V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lpa/a;->U0(Z)V

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-wide v0, p0, Lpa/a;->i:J

    invoke-virtual {p0}, Lpa/a;->T0()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3, v2}, Lpa/a;->V0(JILJAVARuntime/PopupDialog;)V

    return-void

    :cond_0
    iget-wide v3, p0, Lpa/a;->i:J

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lga/m;->d0(Ljava/lang/Object;)Lga/G;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v6

    aget-object v0, v6, v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v6, LJAVARuntime/PopupDialog;

    invoke-virtual {v1}, Lga/G;->b()I

    move-result v1

    invoke-direct {v6, v1, v5, v0}, LJAVARuntime/PopupDialog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v3, v4}, Lpa/a;->M0(LJAVARuntime/PopupDialog;J)V

    invoke-virtual {v6}, LJAVARuntime/PopupDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lpa/a;->T0()I

    move-result v0

    invoke-virtual {p0, v3, v4, v0, v2}, Lpa/a;->V0(JILJAVARuntime/PopupDialog;)V

    :goto_0
    return-void
.end method

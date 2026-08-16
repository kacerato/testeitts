.class public LS9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LS9/a$a;
    }
.end annotation


# instance fields
.field public a:Ltc/h;

.field public b:I

.field public c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

.field public d:LS9/a$a;


# direct methods
.method public constructor <init>(Ltc/h;ILcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "idx",
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LS9/a$a;->IsOver:LS9/a$a;

    iput-object v0, p0, LS9/a;->d:LS9/a$a;

    .line 3
    iput-object p1, p0, LS9/a;->a:Ltc/h;

    .line 4
    iput p2, p0, LS9/a;->b:I

    .line 5
    iput-object p3, p0, LS9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    return-void
.end method

.method public constructor <init>(Ltc/h;ILcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;LS9/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "idx",
            "listener",
            "mode"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, LS9/a$a;->IsOver:LS9/a$a;

    .line 8
    iput-object p1, p0, LS9/a;->a:Ltc/h;

    .line 9
    iput p2, p0, LS9/a;->b:I

    .line 10
    iput-object p3, p0, LS9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    .line 11
    iput-object p4, p0, LS9/a;->d:LS9/a$a;

    return-void
.end method

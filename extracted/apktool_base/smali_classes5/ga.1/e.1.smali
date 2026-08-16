.class public Lga/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:LAc/b;

.field public static final B:LAc/b;

.field public static final C:LAc/b;

.field public static final D:LAc/b;

.field public static final E:LAc/b;

.field public static final F:LAc/b;

.field public static final G:LAc/b;

.field public static final a:F = 64.0f

.field public static final b:Ljava/lang/String; = "cameraImage"

.field public static final c:I = 0x40

.field public static final d:Z = true

.field public static final e:J = 0x1c2L

.field public static final f:J = 0xfaL

.field public static final g:I = 0xa

.field public static final h:I = 0x2

.field public static final i:F = 0.1f

.field public static final j:F = 1.6f

.field public static final k:J = 0x12cL

.field public static final l:I = -0x2

.field public static final m:I = -0x2

.field public static final n:I = 0x4

.field public static final o:I = 0x40

.field public static final p:I = 0xa

.field public static final q:I = 0x0

.field public static final r:I = 0x1e

.field public static final s:I = 0x0

.field public static final t:I = 0xc

.field public static final u:I = 0x18

.field public static final v:I = 0x8c

.field public static final w:I = 0x18

.field public static final x:LAc/b;

.field public static final y:LAc/b;

.field public static final z:LAc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_NUMBER_COLOR:LAc/b;

    sput-object v0, Lga/e;->x:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_STRING_COLOR:LAc/b;

    sput-object v0, Lga/e;->y:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_TYPE_COLOR:LAc/b;

    sput-object v0, Lga/e;->z:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_VECTOR_COLOR:LAc/b;

    sput-object v0, Lga/e;->A:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_LIST_COLOR:LAc/b;

    sput-object v0, Lga/e;->B:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_DYNAMIC_COLOR:LAc/b;

    sput-object v0, Lga/e;->C:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_TEXTURE_COLOR:LAc/b;

    sput-object v0, Lga/e;->D:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_CUBEMAP_COLOR:LAc/b;

    sput-object v0, Lga/e;->E:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_BRANCH_COLOR:LAc/b;

    sput-object v0, Lga/e;->F:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_SELECTED_BORDER:LAc/b;

    sput-object v0, Lga/e;->G:LAc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lga/H;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lga/e;->x:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lga/d;->n(Lga/H;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lga/e;->z:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lga/e$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lga/e;->x:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :pswitch_0
    sget-object p0, Lga/e;->C:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :pswitch_1
    sget-object p0, Lga/e;->A:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :pswitch_2
    sget-object p0, Lga/e;->y:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :pswitch_3
    sget-object p0, Lga/e;->F:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :pswitch_4
    sget-object p0, Lga/e;->B:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :pswitch_5
    sget-object p0, Lga/e;->z:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()I
    .locals 1

    sget-object v0, Lga/e;->x:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    return v0
.end method

.method public static c()I
    .locals 1

    sget-object v0, Lga/e;->G:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    return v0
.end method

.method public static d()I
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    return v0
.end method

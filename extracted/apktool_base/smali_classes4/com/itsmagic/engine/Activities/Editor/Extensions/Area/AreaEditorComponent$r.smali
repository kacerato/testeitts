.class public final enum Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

.field public static final enum BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

.field public static final enum LONG:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

.field public static final enum SHORT:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    const/4 v1, 0x0

    const-string v2, "Short Reach"

    const-string v3, "SHORT"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->SHORT:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    const/4 v1, 0x1

    const-string v2, "Medium Reach"

    const-string v3, "BALANCED"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    const/4 v1, 0x2

    const-string v2, "Long Reach"

    const-string v3, "LONG"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->LONG:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->a()[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "displayName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->SHORT:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->LONG:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->displayName:Ljava/lang/String;

    return-object v0
.end method

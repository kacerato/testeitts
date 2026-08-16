.class public final enum Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

.field public static final enum BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

.field public static final enum FAST:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

.field public static final enum HIGH_QUALITY:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    const/4 v1, 0x0

    const-string v2, "Fast"

    const-string v3, "FAST"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->FAST:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    const/4 v1, 0x1

    const-string v2, "Balanced"

    const-string v3, "BALANCED"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    const/4 v1, 0x2

    const-string v2, "High Quality"

    const-string v3, "HIGH_QUALITY"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->HIGH_QUALITY:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->a()[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

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

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->FAST:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->HIGH_QUALITY:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->displayName:Ljava/lang/String;

    return-object v0
.end method

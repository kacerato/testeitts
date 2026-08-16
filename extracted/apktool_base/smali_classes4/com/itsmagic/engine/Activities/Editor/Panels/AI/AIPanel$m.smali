.class public final enum Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

.field public static final enum Cartoon:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

.field public static final enum LowPoly:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

.field public static final enum Pbr:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

.field public static final enum Realistic:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

.field public static final enum Sculpture:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    const-string v1, "Realistic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->Realistic:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    const-string v1, "Cartoon"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->Cartoon:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    const-string v1, "LowPoly"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->LowPoly:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    const-string v1, "Sculpture"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->Sculpture:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    const-string v1, "Pbr"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->Pbr:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->a()[Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;
    .locals 5

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->Realistic:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->Cartoon:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->LowPoly:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->Sculpture:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->Pbr:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "low-poly"

    return-object v0
.end method

.class public final enum Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/blacksquircle/ui/editorkit/widget/TextScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

.field public static final enum DRAGGING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

.field public static final enum EXITING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

.field public static final enum HIDDEN:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

.field public static final enum VISIBLE:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;


# direct methods
.method private static final synthetic $values()[Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;
    .locals 4

    sget-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->HIDDEN:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    sget-object v1, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->VISIBLE:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    sget-object v2, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->DRAGGING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    sget-object v3, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->EXITING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    filled-new-array {v0, v1, v2, v3}, [Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const-string v1, "HIDDEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->HIDDEN:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    new-instance v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const-string v1, "VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->VISIBLE:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    new-instance v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const-string v1, "DRAGGING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->DRAGGING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    new-instance v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const-string v1, "EXITING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->EXITING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-static {}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->$values()[Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    move-result-object v0

    sput-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->$VALUES:[Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->$ENTRIES:LCf/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;
    .locals 1

    const-class v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    return-object p0
.end method

.method public static values()[Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;
    .locals 1

    sget-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->$VALUES:[Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    return-object v0
.end method

.class public final enum Lcom/bozapro/circularsliderrange/CircularSliderRange$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bozapro/circularsliderrange/CircularSliderRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bozapro/circularsliderrange/CircularSliderRange$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

.field public static final enum END:Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

.field public static final enum START:Lcom/bozapro/circularsliderrange/CircularSliderRange$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;->START:Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    new-instance v1, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    const-string v2, "END"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;->END:Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    filled-new-array {v0, v1}, [Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    move-result-object v0

    sput-object v0, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;->$VALUES:[Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bozapro/circularsliderrange/CircularSliderRange$b;
    .locals 1

    const-class v0, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    return-object p0
.end method

.method public static values()[Lcom/bozapro/circularsliderrange/CircularSliderRange$b;
    .locals 1

    sget-object v0, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;->$VALUES:[Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    invoke-virtual {v0}, [Lcom/bozapro/circularsliderrange/CircularSliderRange$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    return-object v0
.end method

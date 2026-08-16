.class public final enum Lcom/jme3/input/event/TouchEvent$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/input/event/TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/input/event/TouchEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum DOUBLETAP:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum DOWN:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum FLING:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum HOVER_END:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum HOVER_MOVE:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum HOVER_START:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum IDLE:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum KEY_DOWN:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum KEY_MULTIPLE:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum KEY_UP:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum LONGPRESSED:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum MOVE:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum OUTSIDE:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum SCALE_END:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum SCALE_MOVE:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum SCALE_START:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum SCROLL:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum SHOWPRESS:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum TAP:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum UP:Lcom/jme3/input/event/TouchEvent$Type;


# direct methods
.method private static synthetic $values()[Lcom/jme3/input/event/TouchEvent$Type;
    .locals 20

    sget-object v0, Lcom/jme3/input/event/TouchEvent$Type;->DOWN:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->UP:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v3, Lcom/jme3/input/event/TouchEvent$Type;->KEY_DOWN:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v4, Lcom/jme3/input/event/TouchEvent$Type;->KEY_UP:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v5, Lcom/jme3/input/event/TouchEvent$Type;->FLING:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v6, Lcom/jme3/input/event/TouchEvent$Type;->TAP:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v7, Lcom/jme3/input/event/TouchEvent$Type;->DOUBLETAP:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v8, Lcom/jme3/input/event/TouchEvent$Type;->LONGPRESSED:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v9, Lcom/jme3/input/event/TouchEvent$Type;->HOVER_START:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v10, Lcom/jme3/input/event/TouchEvent$Type;->HOVER_MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v11, Lcom/jme3/input/event/TouchEvent$Type;->HOVER_END:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v12, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_START:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v13, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v14, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_END:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v15, Lcom/jme3/input/event/TouchEvent$Type;->SCROLL:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v16, Lcom/jme3/input/event/TouchEvent$Type;->SHOWPRESS:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v17, Lcom/jme3/input/event/TouchEvent$Type;->OUTSIDE:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v18, Lcom/jme3/input/event/TouchEvent$Type;->IDLE:Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v19, Lcom/jme3/input/event/TouchEvent$Type;->KEY_MULTIPLE:Lcom/jme3/input/event/TouchEvent$Type;

    filled-new-array/range {v0 .. v19}, [Lcom/jme3/input/event/TouchEvent$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->DOWN:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "MOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "UP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->UP:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "KEY_DOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->KEY_DOWN:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "KEY_UP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->KEY_UP:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "FLING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->FLING:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "TAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->TAP:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "DOUBLETAP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->DOUBLETAP:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "LONGPRESSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->LONGPRESSED:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "HOVER_START"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->HOVER_START:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "HOVER_MOVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->HOVER_MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "HOVER_END"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->HOVER_END:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "SCALE_START"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_START:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "SCALE_MOVE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "SCALE_END"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_END:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "SCROLL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->SCROLL:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "SHOWPRESS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->SHOWPRESS:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "OUTSIDE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->OUTSIDE:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "IDLE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->IDLE:Lcom/jme3/input/event/TouchEvent$Type;

    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "KEY_MULTIPLE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->KEY_MULTIPLE:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-static {}, Lcom/jme3/input/event/TouchEvent$Type;->$values()[Lcom/jme3/input/event/TouchEvent$Type;

    move-result-object v0

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->$VALUES:[Lcom/jme3/input/event/TouchEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/input/event/TouchEvent$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/input/event/TouchEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/input/event/TouchEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/jme3/input/event/TouchEvent$Type;
    .locals 1

    sget-object v0, Lcom/jme3/input/event/TouchEvent$Type;->$VALUES:[Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {v0}, [Lcom/jme3/input/event/TouchEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/input/event/TouchEvent$Type;

    return-object v0
.end method

.class public final enum Lcom/ardor3d/renderer/state/StencilState$StencilOperation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/StencilState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StencilOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/state/StencilState$StencilOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field public static final enum Decrement:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field public static final enum DecrementWrap:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field public static final enum Increment:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field public static final enum IncrementWrap:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field public static final enum Invert:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field public static final enum Keep:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field public static final enum Replace:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field public static final enum Zero:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v1, "Keep"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->Keep:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    new-instance v1, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v2, "Zero"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->Zero:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    new-instance v2, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v3, "Replace"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->Replace:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    new-instance v3, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v4, "Increment"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->Increment:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    new-instance v4, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v5, "Decrement"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->Decrement:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    new-instance v5, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v6, "IncrementWrap"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->IncrementWrap:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    new-instance v6, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v7, "DecrementWrap"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->DecrementWrap:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    new-instance v7, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v8, "Invert"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->Invert:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    filled-new-array/range {v0 .. v7}, [Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->$VALUES:[Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/state/StencilState$StencilOperation;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/state/StencilState$StencilOperation;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->$VALUES:[Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    return-object v0
.end method

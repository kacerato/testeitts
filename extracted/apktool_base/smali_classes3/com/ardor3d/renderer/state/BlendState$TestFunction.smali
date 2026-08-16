.class public final enum Lcom/ardor3d/renderer/state/BlendState$TestFunction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/BlendState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/state/BlendState$TestFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/state/BlendState$TestFunction;

.field public static final enum Always:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

.field public static final enum EqualTo:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

.field public static final enum GreaterThan:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

.field public static final enum GreaterThanOrEqualTo:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

.field public static final enum LessThan:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

.field public static final enum LessThanOrEqualTo:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

.field public static final enum Never:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

.field public static final enum NotEqualTo:Lcom/ardor3d/renderer/state/BlendState$TestFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v1, "Never"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/state/BlendState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->Never:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    new-instance v1, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v2, "Always"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/renderer/state/BlendState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->Always:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    new-instance v2, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v3, "EqualTo"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/renderer/state/BlendState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->EqualTo:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    new-instance v3, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v4, "NotEqualTo"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/renderer/state/BlendState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->NotEqualTo:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    new-instance v4, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v5, "LessThan"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/renderer/state/BlendState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->LessThan:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    new-instance v5, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v6, "LessThanOrEqualTo"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/renderer/state/BlendState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->LessThanOrEqualTo:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    new-instance v6, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v7, "GreaterThan"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ardor3d/renderer/state/BlendState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->GreaterThan:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    new-instance v7, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v8, "GreaterThanOrEqualTo"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ardor3d/renderer/state/BlendState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->GreaterThanOrEqualTo:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    filled-new-array/range {v0 .. v7}, [Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->$VALUES:[Lcom/ardor3d/renderer/state/BlendState$TestFunction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/state/BlendState$TestFunction;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/state/BlendState$TestFunction;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->$VALUES:[Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/state/BlendState$TestFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    return-object v0
.end method

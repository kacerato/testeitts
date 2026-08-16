.class public final enum LA2/s$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LA2/s$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LA2/s$b;

.field public static final enum INSERTION:LA2/s$b;

.field public static final enum SORTED:LA2/s$b;

.field public static final enum STABLE:LA2/s$b;

.field public static final enum UNORDERED:LA2/s$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LA2/s$b;

    const-string v1, "UNORDERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA2/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LA2/s$b;->UNORDERED:LA2/s$b;

    new-instance v0, LA2/s$b;

    const-string v1, "STABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LA2/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LA2/s$b;->STABLE:LA2/s$b;

    new-instance v0, LA2/s$b;

    const-string v1, "INSERTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LA2/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LA2/s$b;->INSERTION:LA2/s$b;

    new-instance v0, LA2/s$b;

    const-string v1, "SORTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LA2/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LA2/s$b;->SORTED:LA2/s$b;

    invoke-static {}, LA2/s$b;->a()[LA2/s$b;

    move-result-object v0

    sput-object v0, LA2/s$b;->$VALUES:[LA2/s$b;

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

.method public static synthetic a()[LA2/s$b;
    .locals 4

    sget-object v0, LA2/s$b;->UNORDERED:LA2/s$b;

    sget-object v1, LA2/s$b;->STABLE:LA2/s$b;

    sget-object v2, LA2/s$b;->INSERTION:LA2/s$b;

    sget-object v3, LA2/s$b;->SORTED:LA2/s$b;

    filled-new-array {v0, v1, v2, v3}, [LA2/s$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LA2/s$b;
    .locals 1

    const-class v0, LA2/s$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LA2/s$b;

    return-object p0
.end method

.method public static values()[LA2/s$b;
    .locals 1

    sget-object v0, LA2/s$b;->$VALUES:[LA2/s$b;

    invoke-virtual {v0}, [LA2/s$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LA2/s$b;

    return-object v0
.end method

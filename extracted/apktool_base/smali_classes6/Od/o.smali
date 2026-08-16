.class public final enum LOd/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOd/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LOd/o;

.field public static final enum BOUNCE:LOd/o;

.field public static final enum DROPDOWN:LOd/o;

.field public static final enum FADE:LOd/o;

.field public static final enum NORMAL:LOd/o;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LOd/o;

    const-string v1, "DROPDOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LOd/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, LOd/o;->DROPDOWN:LOd/o;

    new-instance v1, LOd/o;

    const-string v2, "FADE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LOd/o;-><init>(Ljava/lang/String;II)V

    sput-object v1, LOd/o;->FADE:LOd/o;

    new-instance v2, LOd/o;

    const-string v3, "BOUNCE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LOd/o;-><init>(Ljava/lang/String;II)V

    sput-object v2, LOd/o;->BOUNCE:LOd/o;

    new-instance v3, LOd/o;

    const-string v4, "NORMAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LOd/o;-><init>(Ljava/lang/String;II)V

    sput-object v3, LOd/o;->NORMAL:LOd/o;

    filled-new-array {v0, v1, v2, v3}, [LOd/o;

    move-result-object v0

    sput-object v0, LOd/o;->$VALUES:[LOd/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LOd/o;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LOd/o;
    .locals 1

    const-class v0, LOd/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOd/o;

    return-object p0
.end method

.method public static values()[LOd/o;
    .locals 1

    sget-object v0, LOd/o;->$VALUES:[LOd/o;

    invoke-virtual {v0}, [LOd/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOd/o;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LOd/o;->value:I

    return v0
.end method

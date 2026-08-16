.class public final enum LOd/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOd/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LOd/p;

.field public static final enum BOTTOM:LOd/p;

.field public static final enum END:LOd/p;

.field public static final enum START:LOd/p;

.field public static final enum TOP:LOd/p;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LOd/p;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LOd/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, LOd/p;->START:LOd/p;

    new-instance v1, LOd/p;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LOd/p;-><init>(Ljava/lang/String;II)V

    sput-object v1, LOd/p;->TOP:LOd/p;

    new-instance v2, LOd/p;

    const-string v3, "END"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LOd/p;-><init>(Ljava/lang/String;II)V

    sput-object v2, LOd/p;->END:LOd/p;

    new-instance v3, LOd/p;

    const-string v4, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LOd/p;-><init>(Ljava/lang/String;II)V

    sput-object v3, LOd/p;->BOTTOM:LOd/p;

    filled-new-array {v0, v1, v2, v3}, [LOd/p;

    move-result-object v0

    sput-object v0, LOd/p;->$VALUES:[LOd/p;

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

    iput p3, p0, LOd/p;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LOd/p;
    .locals 1

    const-class v0, LOd/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOd/p;

    return-object p0
.end method

.method public static values()[LOd/p;
    .locals 1

    sget-object v0, LOd/p;->$VALUES:[LOd/p;

    invoke-virtual {v0}, [LOd/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOd/p;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LOd/p;->value:I

    return v0
.end method

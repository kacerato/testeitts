.class public final enum LZ2/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZ2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LZ2/k$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LZ2/k$a;

.field public static final enum COMBINED:LZ2/k$a;

.field public static final enum GLOBAL:LZ2/k$a;

.field public static final enum NONE:LZ2/k$a;

.field public static final enum SDK:LZ2/k$a;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LZ2/k$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LZ2/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LZ2/k$a;->NONE:LZ2/k$a;

    new-instance v0, LZ2/k$a;

    const-string v1, "SDK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, LZ2/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LZ2/k$a;->SDK:LZ2/k$a;

    new-instance v0, LZ2/k$a;

    const-string v1, "GLOBAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, LZ2/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LZ2/k$a;->GLOBAL:LZ2/k$a;

    new-instance v0, LZ2/k$a;

    const-string v1, "COMBINED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, LZ2/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LZ2/k$a;->COMBINED:LZ2/k$a;

    invoke-static {}, LZ2/k$a;->a()[LZ2/k$a;

    move-result-object v0

    sput-object v0, LZ2/k$a;->$VALUES:[LZ2/k$a;

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

    iput p3, p0, LZ2/k$a;->code:I

    return-void
.end method

.method public static synthetic a()[LZ2/k$a;
    .locals 4

    sget-object v0, LZ2/k$a;->NONE:LZ2/k$a;

    sget-object v1, LZ2/k$a;->SDK:LZ2/k$a;

    sget-object v2, LZ2/k$a;->GLOBAL:LZ2/k$a;

    sget-object v3, LZ2/k$a;->COMBINED:LZ2/k$a;

    filled-new-array {v0, v1, v2, v3}, [LZ2/k$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LZ2/k$a;
    .locals 1

    const-class v0, LZ2/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZ2/k$a;

    return-object p0
.end method

.method public static values()[LZ2/k$a;
    .locals 1

    sget-object v0, LZ2/k$a;->$VALUES:[LZ2/k$a;

    invoke-virtual {v0}, [LZ2/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZ2/k$a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, LZ2/k$a;->code:I

    return v0
.end method

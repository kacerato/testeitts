.class public final enum Lvd/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvd/b$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvd/b$c;

.field public static final enum TO_LEFT:Lvd/b$c;

.field public static final enum TO_RIGHT:Lvd/b$c;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lvd/b$c;

    const-string v1, "TO_RIGHT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lvd/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lvd/b$c;->TO_RIGHT:Lvd/b$c;

    new-instance v1, Lvd/b$c;

    const-string v2, "TO_LEFT"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lvd/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lvd/b$c;->TO_LEFT:Lvd/b$c;

    filled-new-array {v0, v1}, [Lvd/b$c;

    move-result-object v0

    sput-object v0, Lvd/b$c;->$VALUES:[Lvd/b$c;

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

    iput p3, p0, Lvd/b$c;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvd/b$c;
    .locals 1

    const-class v0, Lvd/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvd/b$c;

    return-object p0
.end method

.method public static values()[Lvd/b$c;
    .locals 1

    sget-object v0, Lvd/b$c;->$VALUES:[Lvd/b$c;

    invoke-virtual {v0}, [Lvd/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvd/b$c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lvd/b$c;->value:I

    return v0
.end method

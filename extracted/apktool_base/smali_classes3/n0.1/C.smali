.class public final enum Ln0/C;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln0/C;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Ln0/C;

.field public static final enum XYZ:Ln0/C;

.field public static final enum XZY:Ln0/C;

.field public static final enum YXZ:Ln0/C;

.field public static final enum YZX:Ln0/C;

.field public static final enum ZXY:Ln0/C;

.field public static final enum ZYX:Ln0/C;


# instance fields
.field private final pitch:Ln0/H;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final roll:Ln0/H;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final yaw:Ln0/H;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v6, Ln0/C;

    sget-object v7, Ln0/H;->X:Ln0/H;

    sget-object v8, Ln0/H;->Y:Ln0/H;

    sget-object v9, Ln0/H;->Z:Ln0/H;

    const-string v1, "XYZ"

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Ln0/C;-><init>(Ljava/lang/String;ILn0/H;Ln0/H;Ln0/H;)V

    sput-object v6, Ln0/C;->XYZ:Ln0/C;

    new-instance v6, Ln0/C;

    const-string v1, "XZY"

    const/4 v2, 0x1

    move-object v0, v6

    move-object v4, v9

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Ln0/C;-><init>(Ljava/lang/String;ILn0/H;Ln0/H;Ln0/H;)V

    sput-object v6, Ln0/C;->XZY:Ln0/C;

    new-instance v6, Ln0/C;

    const-string v1, "YXZ"

    const/4 v2, 0x2

    move-object v0, v6

    move-object v3, v8

    move-object v4, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Ln0/C;-><init>(Ljava/lang/String;ILn0/H;Ln0/H;Ln0/H;)V

    sput-object v6, Ln0/C;->YXZ:Ln0/C;

    new-instance v6, Ln0/C;

    const-string v1, "YZX"

    const/4 v2, 0x3

    move-object v0, v6

    move-object v4, v9

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Ln0/C;-><init>(Ljava/lang/String;ILn0/H;Ln0/H;Ln0/H;)V

    sput-object v6, Ln0/C;->YZX:Ln0/C;

    new-instance v6, Ln0/C;

    const-string v1, "ZXY"

    const/4 v2, 0x4

    move-object v0, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Ln0/C;-><init>(Ljava/lang/String;ILn0/H;Ln0/H;Ln0/H;)V

    sput-object v6, Ln0/C;->ZXY:Ln0/C;

    new-instance v6, Ln0/C;

    const-string v1, "ZYX"

    const/4 v2, 0x5

    move-object v0, v6

    move-object v4, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Ln0/C;-><init>(Ljava/lang/String;ILn0/H;Ln0/H;Ln0/H;)V

    sput-object v6, Ln0/C;->ZYX:Ln0/C;

    invoke-static {}, Ln0/C;->a()[Ln0/C;

    move-result-object v0

    sput-object v0, Ln0/C;->$VALUES:[Ln0/C;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Ln0/C;->$ENTRIES:LCf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILn0/H;Ln0/H;Ln0/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln0/H;",
            "Ln0/H;",
            "Ln0/H;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ln0/C;->yaw:Ln0/H;

    iput-object p4, p0, Ln0/C;->pitch:Ln0/H;

    iput-object p5, p0, Ln0/C;->roll:Ln0/H;

    return-void
.end method

.method public static final synthetic a()[Ln0/C;
    .locals 6

    sget-object v0, Ln0/C;->XYZ:Ln0/C;

    sget-object v1, Ln0/C;->XZY:Ln0/C;

    sget-object v2, Ln0/C;->YXZ:Ln0/C;

    sget-object v3, Ln0/C;->YZX:Ln0/C;

    sget-object v4, Ln0/C;->ZXY:Ln0/C;

    sget-object v5, Ln0/C;->ZYX:Ln0/C;

    filled-new-array/range {v0 .. v5}, [Ln0/C;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Ln0/C;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ln0/C;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ln0/C;
    .locals 1

    const-class v0, Ln0/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln0/C;

    return-object p0
.end method

.method public static values()[Ln0/C;
    .locals 1

    sget-object v0, Ln0/C;->$VALUES:[Ln0/C;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln0/C;

    return-object v0
.end method


# virtual methods
.method public final c()Ln0/H;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ln0/C;->pitch:Ln0/H;

    return-object v0
.end method

.method public final d()Ln0/H;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ln0/C;->roll:Ln0/H;

    return-object v0
.end method

.method public final e()Ln0/H;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ln0/C;->yaw:Ln0/H;

    return-object v0
.end method

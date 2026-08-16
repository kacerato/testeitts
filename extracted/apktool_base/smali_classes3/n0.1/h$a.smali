.class public final enum Ln0/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln0/h$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Ln0/h$a;

.field public static final enum NONE:Ln0/h$a;

.field public static final enum ORBIT:Ln0/h$a;

.field public static final enum PAN:Ln0/h$a;

.field public static final enum ZOOM:Ln0/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln0/h$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln0/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/h$a;->NONE:Ln0/h$a;

    new-instance v0, Ln0/h$a;

    const-string v1, "ORBIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln0/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/h$a;->ORBIT:Ln0/h$a;

    new-instance v0, Ln0/h$a;

    const-string v1, "PAN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln0/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/h$a;->PAN:Ln0/h$a;

    new-instance v0, Ln0/h$a;

    const-string v1, "ZOOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ln0/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/h$a;->ZOOM:Ln0/h$a;

    invoke-static {}, Ln0/h$a;->a()[Ln0/h$a;

    move-result-object v0

    sput-object v0, Ln0/h$a;->$VALUES:[Ln0/h$a;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Ln0/h$a;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Ln0/h$a;
    .locals 4

    sget-object v0, Ln0/h$a;->NONE:Ln0/h$a;

    sget-object v1, Ln0/h$a;->ORBIT:Ln0/h$a;

    sget-object v2, Ln0/h$a;->PAN:Ln0/h$a;

    sget-object v3, Ln0/h$a;->ZOOM:Ln0/h$a;

    filled-new-array {v0, v1, v2, v3}, [Ln0/h$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Ln0/h$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ln0/h$a;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ln0/h$a;
    .locals 1

    const-class v0, Ln0/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln0/h$a;

    return-object p0
.end method

.method public static values()[Ln0/h$a;
    .locals 1

    sget-object v0, Ln0/h$a;->$VALUES:[Ln0/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln0/h$a;

    return-object v0
.end method

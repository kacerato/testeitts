.class public abstract enum Lw2/J$j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw2/J$j;",
        ">;",
        "Lw2/I<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lw2/J$j;

.field public static final enum ALWAYS_FALSE:Lw2/J$j;

.field public static final enum ALWAYS_TRUE:Lw2/J$j;

.field public static final enum IS_NULL:Lw2/J$j;

.field public static final enum NOT_NULL:Lw2/J$j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw2/J$j$a;

    const-string v1, "ALWAYS_TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw2/J$j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/J$j;->ALWAYS_TRUE:Lw2/J$j;

    new-instance v0, Lw2/J$j$b;

    const-string v1, "ALWAYS_FALSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lw2/J$j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/J$j;->ALWAYS_FALSE:Lw2/J$j;

    new-instance v0, Lw2/J$j$c;

    const-string v1, "IS_NULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lw2/J$j$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/J$j;->IS_NULL:Lw2/J$j;

    new-instance v0, Lw2/J$j$d;

    const-string v1, "NOT_NULL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lw2/J$j$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/J$j;->NOT_NULL:Lw2/J$j;

    invoke-static {}, Lw2/J$j;->a()[Lw2/J$j;

    move-result-object v0

    sput-object v0, Lw2/J$j;->$VALUES:[Lw2/J$j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILw2/J$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lw2/J$j;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lw2/J$j;
    .locals 4

    sget-object v0, Lw2/J$j;->ALWAYS_TRUE:Lw2/J$j;

    sget-object v1, Lw2/J$j;->ALWAYS_FALSE:Lw2/J$j;

    sget-object v2, Lw2/J$j;->IS_NULL:Lw2/J$j;

    sget-object v3, Lw2/J$j;->NOT_NULL:Lw2/J$j;

    filled-new-array {v0, v1, v2, v3}, [Lw2/J$j;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lw2/J$j;
    .locals 1

    const-class v0, Lw2/J$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw2/J$j;

    return-object p0
.end method

.method public static values()[Lw2/J$j;
    .locals 1

    sget-object v0, Lw2/J$j;->$VALUES:[Lw2/J$j;

    invoke-virtual {v0}, [Lw2/J$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw2/J$j;

    return-object v0
.end method


# virtual methods
.method public b()Lw2/I;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lw2/I<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

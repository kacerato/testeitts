.class public abstract enum LA2/e0$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA2/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LA2/e0$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LA2/e0$f;

.field public static final enum BACK:LA2/e0$f;

.field public static final enum FRONT:LA2/e0$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LA2/e0$f$a;

    const-string v1, "FRONT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA2/e0$f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LA2/e0$f;->FRONT:LA2/e0$f;

    new-instance v0, LA2/e0$f$b;

    const-string v1, "BACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LA2/e0$f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LA2/e0$f;->BACK:LA2/e0$f;

    invoke-static {}, LA2/e0$f;->a()[LA2/e0$f;

    move-result-object v0

    sput-object v0, LA2/e0$f;->$VALUES:[LA2/e0$f;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILA2/e0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LA2/e0$f;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[LA2/e0$f;
    .locals 2

    sget-object v0, LA2/e0$f;->FRONT:LA2/e0$f;

    sget-object v1, LA2/e0$f;->BACK:LA2/e0$f;

    filled-new-array {v0, v1}, [LA2/e0$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LA2/e0$f;
    .locals 1

    const-class v0, LA2/e0$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LA2/e0$f;

    return-object p0
.end method

.method public static values()[LA2/e0$f;
    .locals 1

    sget-object v0, LA2/e0$f;->$VALUES:[LA2/e0$f;

    invoke-virtual {v0}, [LA2/e0$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LA2/e0$f;

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/util/Deque;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

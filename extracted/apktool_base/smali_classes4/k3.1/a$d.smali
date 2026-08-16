.class public final enum Lk3/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk3/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lk3/a$d;

.field public static final enum DEBUG:Lk3/a$d;

.field public static final enum ERROR:Lk3/a$d;

.field public static final enum INFO:Lk3/a$d;

.field public static final enum VERBOSE:Lk3/a$d;

.field public static final enum WARN:Lk3/a$d;


# instance fields
.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lk3/a$d;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lk3/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk3/a$d;->VERBOSE:Lk3/a$d;

    new-instance v0, Lk3/a$d;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lk3/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk3/a$d;->DEBUG:Lk3/a$d;

    new-instance v0, Lk3/a$d;

    const-string v1, "INFO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lk3/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk3/a$d;->INFO:Lk3/a$d;

    new-instance v0, Lk3/a$d;

    const-string v1, "WARN"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v3}, Lk3/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk3/a$d;->WARN:Lk3/a$d;

    new-instance v0, Lk3/a$d;

    const-string v1, "ERROR"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lk3/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk3/a$d;->ERROR:Lk3/a$d;

    invoke-static {}, Lk3/a$d;->a()[Lk3/a$d;

    move-result-object v0

    sput-object v0, Lk3/a$d;->$VALUES:[Lk3/a$d;

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

    iput p3, p0, Lk3/a$d;->priority:I

    return-void
.end method

.method public static final synthetic a()[Lk3/a$d;
    .locals 5

    sget-object v0, Lk3/a$d;->VERBOSE:Lk3/a$d;

    sget-object v1, Lk3/a$d;->DEBUG:Lk3/a$d;

    sget-object v2, Lk3/a$d;->INFO:Lk3/a$d;

    sget-object v3, Lk3/a$d;->WARN:Lk3/a$d;

    sget-object v4, Lk3/a$d;->ERROR:Lk3/a$d;

    filled-new-array {v0, v1, v2, v3, v4}, [Lk3/a$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lk3/a$d;
    .locals 1

    const-class v0, Lk3/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk3/a$d;

    return-object p0
.end method

.method public static values()[Lk3/a$d;
    .locals 1

    sget-object v0, Lk3/a$d;->$VALUES:[Lk3/a$d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk3/a$d;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lk3/a$d;->priority:I

    return v0
.end method

.class public final enum LU/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LU/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LU/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LU/e$a;

.field public static final enum CLEARED:LU/e$a;

.field public static final enum FAILED:LU/e$a;

.field public static final enum PAUSED:LU/e$a;

.field public static final enum RUNNING:LU/e$a;

.field public static final enum SUCCESS:LU/e$a;


# instance fields
.field private final isComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LU/e$a;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LU/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LU/e$a;->RUNNING:LU/e$a;

    new-instance v1, LU/e$a;

    const-string v3, "PAUSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LU/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, LU/e$a;->PAUSED:LU/e$a;

    new-instance v3, LU/e$a;

    const-string v5, "CLEARED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, LU/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, LU/e$a;->CLEARED:LU/e$a;

    new-instance v2, LU/e$a;

    const-string v5, "SUCCESS"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6, v4}, LU/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, LU/e$a;->SUCCESS:LU/e$a;

    new-instance v5, LU/e$a;

    const-string v6, "FAILED"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v4}, LU/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, LU/e$a;->FAILED:LU/e$a;

    filled-new-array {v0, v1, v3, v2, v5}, [LU/e$a;

    move-result-object v0

    sput-object v0, LU/e$a;->$VALUES:[LU/e$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, LU/e$a;->isComplete:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LU/e$a;
    .locals 1

    const-class v0, LU/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU/e$a;

    return-object p0
.end method

.method public static values()[LU/e$a;
    .locals 1

    sget-object v0, LU/e$a;->$VALUES:[LU/e$a;

    invoke-virtual {v0}, [LU/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU/e$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, LU/e$a;->isComplete:Z

    return v0
.end method

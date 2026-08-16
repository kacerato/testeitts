.class public final enum Lcom/android/tools/r8/internal/Ly;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jy;


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/Ly;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ly;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ly;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ly;->b:Lcom/android/tools/r8/internal/Ly;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Functions.identity()"

    return-object v0
.end method

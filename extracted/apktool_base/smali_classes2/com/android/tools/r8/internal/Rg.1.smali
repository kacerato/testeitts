.class public final enum Lcom/android/tools/r8/internal/Rg;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/QI;


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/Rg;

.field public static final enum d:Lcom/android/tools/r8/internal/Rg;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Rg;

    const-string v1, "HDR_UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/Rg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Rg;->c:Lcom/android/tools/r8/internal/Rg;

    new-instance v0, Lcom/android/tools/r8/internal/Rg;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/Rg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Rg;->d:Lcom/android/tools/r8/internal/Rg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/Rg;->b:I

    return-void
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/Rg;->d:Lcom/android/tools/r8/internal/Rg;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/Rg;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

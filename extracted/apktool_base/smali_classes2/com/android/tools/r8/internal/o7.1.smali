.class public Lcom/android/tools/r8/internal/o7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0, v1}, [Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/o7;->a:[Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Z)I
    .locals 0

    .line 1
    return p0
.end method

.method public static a()[Ljava/lang/Boolean;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/o7;->a:[Ljava/lang/Boolean;

    return-object v0
.end method

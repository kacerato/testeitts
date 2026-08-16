.class public final enum Lcom/google/android/material/datepicker/k$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/datepicker/k$k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/datepicker/k$k;

.field public static final enum DAY:Lcom/google/android/material/datepicker/k$k;

.field public static final enum YEAR:Lcom/google/android/material/datepicker/k$k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/material/datepicker/k$k;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/k$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/datepicker/k$k;->DAY:Lcom/google/android/material/datepicker/k$k;

    new-instance v1, Lcom/google/android/material/datepicker/k$k;

    const-string v2, "YEAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/datepicker/k$k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/material/datepicker/k$k;->YEAR:Lcom/google/android/material/datepicker/k$k;

    filled-new-array {v0, v1}, [Lcom/google/android/material/datepicker/k$k;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/datepicker/k$k;->$VALUES:[Lcom/google/android/material/datepicker/k$k;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/datepicker/k$k;
    .locals 1

    const-class v0, Lcom/google/android/material/datepicker/k$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/datepicker/k$k;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/datepicker/k$k;
    .locals 1

    sget-object v0, Lcom/google/android/material/datepicker/k$k;->$VALUES:[Lcom/google/android/material/datepicker/k$k;

    invoke-virtual {v0}, [Lcom/google/android/material/datepicker/k$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/datepicker/k$k;

    return-object v0
.end method

.class public Lcom/google/android/filament/ToneMapper$c;
.super Lcom/google/android/filament/ToneMapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/ToneMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/ToneMapper$c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/filament/ToneMapper$c$a;->NONE:Lcom/google/android/filament/ToneMapper$c$a;

    invoke-direct {p0, v0}, Lcom/google/android/filament/ToneMapper$c;-><init>(Lcom/google/android/filament/ToneMapper$c$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/ToneMapper$c$a;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/filament/ToneMapper;->c(I)J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/filament/ToneMapper;-><init>(JLcom/google/android/filament/u;)V

    return-void
.end method

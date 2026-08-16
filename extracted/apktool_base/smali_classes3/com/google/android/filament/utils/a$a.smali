.class public final Lcom/google/android/filament/utils/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/filament/utils/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/google/android/filament/utils/a$a;II)Lcom/google/android/filament/utils/Manipulator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/a$a;->b(II)Lcom/google/android/filament/utils/Manipulator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(II)Lcom/google/android/filament/utils/Manipulator;
    .locals 4

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$a;

    invoke-direct {v0}, Lcom/google/android/filament/utils/Manipulator$a;-><init>()V

    invoke-static {}, Lcom/google/android/filament/utils/a;->f()Ln0/f;

    move-result-object v1

    invoke-virtual {v1}, Ln0/f;->H()F

    move-result v1

    invoke-static {}, Lcom/google/android/filament/utils/a;->f()Ln0/f;

    move-result-object v2

    invoke-virtual {v2}, Ln0/f;->K()F

    move-result v2

    invoke-static {}, Lcom/google/android/filament/utils/a;->f()Ln0/f;

    move-result-object v3

    invoke-virtual {v3}, Ln0/f;->L()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Manipulator$a;->q(FFF)Lcom/google/android/filament/utils/Manipulator$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/filament/utils/Manipulator$a;->s(II)Lcom/google/android/filament/utils/Manipulator$a;

    move-result-object p1

    sget-object p2, Lcom/google/android/filament/utils/Manipulator$d;->ORBIT:Lcom/google/android/filament/utils/Manipulator$d;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/utils/Manipulator$a;->a(Lcom/google/android/filament/utils/Manipulator$d;)Lcom/google/android/filament/utils/Manipulator;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

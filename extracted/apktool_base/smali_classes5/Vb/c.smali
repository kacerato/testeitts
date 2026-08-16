.class public LVb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/filament/filamat/MaterialBuilder$r;

.field public b:Lcom/google/android/filament/filamat/MaterialBuilder$g;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniformType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LVb/c;->a:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    .line 3
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    iput-object p1, p0, LVb/c;->b:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "precision"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LVb/c;->a:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    .line 6
    iput-object p2, p0, LVb/c;->b:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    return-void
.end method

.class public Lec/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/filament/filamat/MaterialBuilder$m;

.field public final b:Lcom/google/android/filament/filamat/MaterialBuilder$l;

.field public final c:Lcom/google/android/filament/filamat/MaterialBuilder$g;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "format",
            "precision",
            "name"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec/g;->a:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    iput-object p2, p0, Lec/g;->b:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    iput-object p3, p0, Lec/g;->c:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    iput-object p4, p0, Lec/g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/filament/filamat/MaterialBuilder$l;
    .locals 1

    iget-object v0, p0, Lec/g;->b:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lec/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/google/android/filament/filamat/MaterialBuilder$g;
    .locals 1

    iget-object v0, p0, Lec/g;->c:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    return-object v0
.end method

.method public d()Lcom/google/android/filament/filamat/MaterialBuilder$m;
    .locals 1

    iget-object v0, p0, Lec/g;->a:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    return-object v0
.end method

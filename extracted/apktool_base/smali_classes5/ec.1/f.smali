.class public Lec/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/filament/filamat/MaterialBuilder$r;

.field public final b:Ljava/lang/String;

.field public c:Lcom/google/android/filament/filamat/MaterialBuilder$g;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "precision",
            "name"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    .line 8
    iput-object p3, p0, Lec/f;->b:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lec/f;->a:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    .line 10
    iput-object p2, p0, Lec/f;->c:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lec/f;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    iput-object v0, p0, Lec/f;->c:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    .line 3
    iput-object p1, p0, Lec/f;->a:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    .line 4
    iput-object p2, p0, Lec/f;->b:Ljava/lang/String;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lec/f;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "precision"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    .line 14
    iput-object p2, p0, Lec/f;->b:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lec/f;->a:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    .line 16
    iput-object p3, p0, Lec/f;->c:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lec/f;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "precision",
            "size"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    .line 20
    iput-object p2, p0, Lec/f;->b:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lec/f;->a:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    .line 22
    iput-object p3, p0, Lec/f;->c:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    .line 23
    iput p4, p0, Lec/f;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lec/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/google/android/filament/filamat/MaterialBuilder$g;
    .locals 1

    iget-object v0, p0, Lec/f;->c:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lec/f;->d:I

    return v0
.end method

.method public d()Lcom/google/android/filament/filamat/MaterialBuilder$r;
    .locals 1

    iget-object v0, p0, Lec/f;->a:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    return-object v0
.end method

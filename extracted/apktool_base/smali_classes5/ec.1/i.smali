.class public Lec/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/filament/filamat/MaterialBuilder$a;

.field public final b:F

.field public final c:Lcom/google/android/filament/filamat/MaterialBuilder$c;

.field public final d:Z

.field public final e:Lge/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/d0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/google/android/filament/filamat/MaterialBuilder$k;

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blendingMode",
            "maskThreshold",
            "cullingMode",
            "doubleSided"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lge/d0;

    invoke-direct {v0}, Lge/d0;-><init>()V

    iput-object v0, p0, Lec/i;->e:Lge/d0;

    .line 12
    iput-object p1, p0, Lec/i;->a:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    .line 13
    iput p2, p0, Lec/i;->b:F

    .line 14
    iput-object p3, p0, Lec/i;->c:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    .line 15
    iput-boolean p4, p0, Lec/i;->d:Z

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lec/i;->f:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lec/i;->g:Z

    .line 18
    iput-boolean p1, p0, Lec/i;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blendingMode",
            "maskThreshold",
            "cullingMode",
            "doubleSided",
            "refractionType"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lge/d0;

    invoke-direct {v0}, Lge/d0;-><init>()V

    iput-object v0, p0, Lec/i;->e:Lge/d0;

    .line 21
    iput-object p1, p0, Lec/i;->a:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    .line 22
    iput p2, p0, Lec/i;->b:F

    .line 23
    iput-object p3, p0, Lec/i;->c:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    .line 24
    iput-boolean p4, p0, Lec/i;->d:Z

    .line 25
    iput-object p5, p0, Lec/i;->f:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lec/i;->g:Z

    .line 27
    iput-boolean p1, p0, Lec/i;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blendingMode",
            "maskThreshold",
            "cullingMode",
            "doubleSided",
            "refractionType",
            "depthWrite",
            "depthCulling"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lge/d0;

    invoke-direct {v0}, Lge/d0;-><init>()V

    iput-object v0, p0, Lec/i;->e:Lge/d0;

    .line 30
    iput-object p1, p0, Lec/i;->a:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    .line 31
    iput p2, p0, Lec/i;->b:F

    .line 32
    iput-object p3, p0, Lec/i;->c:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    .line 33
    iput-boolean p4, p0, Lec/i;->d:Z

    .line 34
    iput-object p5, p0, Lec/i;->f:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    .line 35
    iput-boolean p6, p0, Lec/i;->g:Z

    .line 36
    iput-boolean p7, p0, Lec/i;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;Lcom/google/android/filament/filamat/MaterialBuilder$c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "blendingMode",
            "cullingMode",
            "doubleSided"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lge/d0;

    invoke-direct {v0}, Lge/d0;-><init>()V

    iput-object v0, p0, Lec/i;->e:Lge/d0;

    .line 3
    iput-object p1, p0, Lec/i;->a:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lec/i;->b:F

    .line 5
    iput-object p2, p0, Lec/i;->c:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    .line 6
    iput-boolean p3, p0, Lec/i;->d:Z

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lec/i;->f:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lec/i;->g:Z

    .line 9
    iput-boolean p1, p0, Lec/i;->h:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/filament/filamat/MaterialBuilder$a;
    .locals 1

    iget-object v0, p0, Lec/i;->a:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lec/i;->e:Lge/d0;

    invoke-virtual {v0, p1}, Lge/d0;->get(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Lcom/google/android/filament/filamat/MaterialBuilder$c;
    .locals 1

    iget-object v0, p0, Lec/i;->c:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p0, Lec/i;->e:Lge/d0;

    new-instance v2, Lec/i$a;

    invoke-direct {v2, p0, v0}, Lec/i$a;-><init>(Lec/i;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lge/d0;->n9(Lhe/h0;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "-"

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lec/i;->a:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lec/i;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lec/i;->c:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lec/i;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lec/i;->f:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lec/i;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lec/i;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lec/i;->b:F

    return v0
.end method

.method public f()Lcom/google/android/filament/filamat/MaterialBuilder$k;
    .locals 1

    iget-object v0, p0, Lec/i;->f:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lec/i;->h:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lec/i;->g:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lec/i;->d:Z

    return v0
.end method

.method public j(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    iget-object v0, p0, Lec/i;->e:Lge/d0;

    invoke-virtual {v0, p1, p2}, Lge/d0;->Y9(Ljava/lang/Object;I)I

    return-void
.end method

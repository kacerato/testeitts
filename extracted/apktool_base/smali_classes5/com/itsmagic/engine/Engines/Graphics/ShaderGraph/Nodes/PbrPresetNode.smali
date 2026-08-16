.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;
.super Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/s;


# static fields
.field public static final e:Ljava/lang/String; = "PBRPreset"

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3

.field public static final j:I = 0x4

.field public static final k:I = 0x5

.field public static final l:I = 0x6


# instance fields
.field public albedoFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public aoFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient c:Ljava/lang/String;

.field public final d:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

.field public emissiveFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public heightFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public metallicFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public normalFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public roughnessFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public selectedPreset:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->selectedPreset:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->albedoFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->normalFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->roughnessFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->metallicFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->aoFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->emissiveFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->heightFile:Ljava/lang/String;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "Albedo"

    invoke-direct {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "Normal"

    invoke-direct {v3, v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "Roughness"

    invoke-direct {v4, v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    new-instance v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "Metallic"

    invoke-direct {v5, v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "AO"

    invoke-direct {v6, v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    new-instance v7, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "Emissive"

    invoke-direct {v7, v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    new-instance v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "Height"

    invoke-direct {v8, v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    filled-new-array/range {v2 .. v8}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->d:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v0, "PBRPreset"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method

.method public static H(LIc/k;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dependency",
            "uniqueFiles",
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIc/k;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, LIc/k;->a:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static L(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static M(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dictionary",
            "slot",
            "filePath"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PbrPresetNode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]: REPLACING "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " TO "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static O(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "sgp_tex_0"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sgp_tex_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public C(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->N()V

    const-string v0, "albedoFile"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->albedoFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->M(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->albedoFile:Ljava/lang/String;

    const-string v0, "normalFile"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->normalFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->M(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->normalFile:Ljava/lang/String;

    const-string v0, "roughnessFile"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->roughnessFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->M(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->roughnessFile:Ljava/lang/String;

    const-string v0, "metallicFile"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->metallicFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->M(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->metallicFile:Ljava/lang/String;

    const-string v0, "aoFile"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->aoFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->M(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->aoFile:Ljava/lang/String;

    const-string v0, "emissiveFile"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->emissiveFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->M(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->emissiveFile:Ljava/lang/String;

    const-string v0, "heightFile"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->heightFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->M(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->heightFile:Ljava/lang/String;

    return-void
.end method

.method public final I(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "file",
            "bound"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p2}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lub/p;->L(Lub/p;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2, p1, v0}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p2, Lyb/b;->i:Lub/p;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1, v0}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "stage",
            "outputIndex",
            "file"
        }
    .end annotation

    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lec/g;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {v0, v1, v2, v3, p4}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->e(Lec/g;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "materialParams_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-object v2, p1

    move-object v3, p0

    move v4, p3

    move-object v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    return-void
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->selectedPreset:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final N()V
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->albedoFile:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->normalFile:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->roughnessFile:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->metallicFile:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->aoFile:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->emissiveFile:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->heightFile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v1, "BaseColor.jpg"

    const-string v2, "Color.jpg"

    const-string v3, "Albedo.jpg"

    const-string v4, "color.jpg"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, LH3/g;->G1(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->albedoFile:Ljava/lang/String;

    const-string v1, "Normal.jpg"

    const-string v2, "NormalGL.jpg"

    const-string v3, "normal.jpg"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, LH3/g;->G1(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->normalFile:Ljava/lang/String;

    const-string v1, "Roughness.jpg"

    const-string v3, "bmp.jpg"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, LH3/g;->G1(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->roughnessFile:Ljava/lang/String;

    const-string v1, "Metallic.jpg"

    const-string v3, "Metalness.jpg"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, LH3/g;->G1(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->metallicFile:Ljava/lang/String;

    const-string v1, "AmbientOcclusion.jpg"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, LH3/g;->G1(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->aoFile:Ljava/lang/String;

    const-string v1, "Emissive.jpg"

    const-string v3, "Emission.jpg"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, LH3/g;->G1(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->emissiveFile:Ljava/lang/String;

    const-string v1, "height.jpg"

    const-string v3, "displacement.jpg"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, LH3/g;->G1(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->heightFile:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->selectedPreset:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->N()V

    return-void
.end method

.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "engineMaterial"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->N()V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->albedoFile:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->I(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->normalFile:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->I(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->roughnessFile:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->I(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->metallicFile:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->I(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->aoFile:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->I(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->emissiveFile:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->I(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->heightFile:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->I(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->N()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->albedoFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "stage"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->N()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->albedoFile:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->normalFile:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->roughnessFile:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->metallicFile:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->aoFile:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->emissiveFile:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;ILjava/lang/String;)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->heightFile:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;ILjava/lang/String;)V

    return-void
.end method

.method public i(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->N()V

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->albedoFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->H(LIc/k;Ljava/util/HashSet;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->normalFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->H(LIc/k;Ljava/util/HashSet;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->roughnessFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->H(LIc/k;Ljava/util/HashSet;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->metallicFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->H(LIc/k;Ljava/util/HashSet;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->aoFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->H(LIc/k;Ljava/util/HashSet;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->emissiveFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->H(LIc/k;Ljava/util/HashSet;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->heightFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->H(LIc/k;Ljava/util/HashSet;Ljava/lang/String;)V

    return-object p1
.end method

.method public q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->d:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    return-object v0
.end method

.method public u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->BOTH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    return-object v0
.end method

.method public v(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->K()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PBR Preset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LH3/g;->w1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "PBR Preset"

    :goto_0
    return-object p1
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

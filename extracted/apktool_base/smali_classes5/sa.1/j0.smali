.class public final Lsa/j0;
.super Lsa/N;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialRoughness"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Roughness Map"

    const-string v1, "Textures"

    const-class v2, Lsa/j0;

    const-string v3, "SetMaterialRoughness"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ROUGHNESS_MAP:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lsa/L;->c:[Ljava/lang/String;

    sget-object v7, Lsa/L;->d:[Ljava/lang/String;

    const-string v2, "SetMaterialRoughness"

    const-string v3, "Set Material Roughness Map"

    const-string v4, "Roughness Map"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lsa/N;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

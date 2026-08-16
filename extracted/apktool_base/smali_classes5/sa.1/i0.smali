.class public final Lsa/i0;
.super Lsa/I;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialRoughnessFallback"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Roughness value"

    const-string v1, "Numbers"

    const-class v2, Lsa/i0;

    const-string v3, "SetMaterialRoughnessFallback"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ROUGHNESS_VALUE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lsa/G;->f:[Ljava/lang/String;

    sget-object v8, Lsa/G;->g:[Ljava/lang/String;

    const-string v2, "SetMaterialRoughnessFallback"

    const-string v3, "Set Material Roughness value"

    const-string v4, "Roughness value"

    const-string v6, "0.6"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lsa/I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.class public final Lsa/a0;
.super Lsa/N;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialEmissive"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Emissive"

    const-string v1, "Textures"

    const-class v2, Lsa/a0;

    const-string v3, "SetMaterialEmissive"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_EMISSIVE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lsa/L;->m:[Ljava/lang/String;

    sget-object v7, Lsa/L;->n:[Ljava/lang/String;

    const-string v2, "SetMaterialEmissive"

    const-string v3, "Set Material Emissive"

    const-string v4, "Emissive"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lsa/N;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

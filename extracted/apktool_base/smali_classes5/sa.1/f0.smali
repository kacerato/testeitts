.class public final Lsa/f0;
.super Lsa/I;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialMetallicFallback"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Metallic value"

    const-string v1, "Numbers"

    const-class v2, Lsa/f0;

    const-string v3, "SetMaterialMetallicFallback"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_METALLIC_VALUE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lsa/G;->h:[Ljava/lang/String;

    sget-object v8, Lsa/G;->i:[Ljava/lang/String;

    const-string v2, "SetMaterialMetallicFallback"

    const-string v3, "Set Material Metallic value"

    const-string v4, "Metallic value"

    const-string v6, "0.05"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lsa/I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

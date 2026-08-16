.class public final Lsa/Y;
.super Lsa/E;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialEmissiveColor"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Emissive Color"

    const-string v1, "Colors"

    const-class v2, Lsa/Y;

    const-string v3, "SetMaterialEmissiveColor"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_EMISSIVE_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "float4(1, 1, 1, 1)"

    sget-object v8, Lsa/C;->a:[Ljava/lang/String;

    const-string v2, "SetMaterialEmissiveColor"

    const-string v3, "Set Material Emissive Color"

    const-string v4, "Emissive Color"

    move-object v1, p0

    move-object v7, v8

    invoke-direct/range {v1 .. v8}, Lsa/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

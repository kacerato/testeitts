.class public final Lsa/d0;
.super Lsa/I;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialHeightQuality"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Height Quality"

    const-string v1, "Numbers"

    const-class v2, Lsa/d0;

    const-string v3, "SetMaterialHeightQuality"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_HEIGHT_QUALITY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1.0"

    sget-object v8, Lsa/G;->c:[Ljava/lang/String;

    const-string v2, "SetMaterialHeightQuality"

    const-string v3, "Set Material Height Quality"

    const-string v4, "Height Quality"

    move-object v1, p0

    move-object v7, v8

    invoke-direct/range {v1 .. v8}, Lsa/I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

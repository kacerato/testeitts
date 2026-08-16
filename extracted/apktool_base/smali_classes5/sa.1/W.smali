.class public final Lsa/W;
.super Lsa/B;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialDoubleSided"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Double Sided"

    const-string v1, "Others"

    const-class v2, Lsa/W;

    const-string v3, "SetMaterialDoubleSided"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_DOUBLE_SIDED:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    sget-object v8, Lsa/z;->b:[Ljava/lang/String;

    const-string v2, "SetMaterialDoubleSided"

    const-string v3, "Set Material Double Sided"

    const-string v4, "Double Sided"

    move-object v1, p0

    move-object v7, v8

    invoke-direct/range {v1 .. v8}, Lsa/B;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

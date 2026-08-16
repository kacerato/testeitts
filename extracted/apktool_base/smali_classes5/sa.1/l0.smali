.class public final Lsa/l0;
.super Lsa/I;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialWorldUVSize"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material World UV Size"

    const-string v1, "Numbers"

    const-class v2, Lsa/l0;

    const-string v3, "SetMaterialWorldUVSize"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_WORLD_UV_SIZE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lsa/G;->d:[Ljava/lang/String;

    sget-object v8, Lsa/G;->e:[Ljava/lang/String;

    const-string v2, "SetMaterialWorldUVSize"

    const-string v3, "Set Material World UV Size"

    const-string v4, "World UV Size"

    const-string v6, "1.0"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lsa/I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

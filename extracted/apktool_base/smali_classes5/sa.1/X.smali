.class public final Lsa/X;
.super Lsa/B;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "SetMaterialDrawInFront"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Set Material Draw In Front"

    const-string v1, "Others"

    const-class v2, Lsa/X;

    const-string v3, "SetMaterialDrawInFront"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_DRAW_IN_FRONT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    sget-object v8, Lsa/z;->c:[Ljava/lang/String;

    const-string v2, "SetMaterialDrawInFront"

    const-string v3, "Set Material Draw In Front"

    const-string v4, "Draw In Front"

    move-object v1, p0

    move-object v7, v8

    invoke-direct/range {v1 .. v8}, Lsa/B;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

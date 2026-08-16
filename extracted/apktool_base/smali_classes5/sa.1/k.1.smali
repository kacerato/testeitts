.class public final Lsa/k;
.super Lsa/H;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "GetMaterialEmissiveNits"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Get Material Emissive Nits"

    const-string v1, "Numbers"

    const-class v2, Lsa/k;

    const-string v3, "GetMaterialEmissiveNits"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v3, "Emissive Nits"

    sget-object v5, Lsa/G;->a:[Ljava/lang/String;

    const-string v1, "GetMaterialEmissiveNits"

    const-string v2, "Get Material Emissive Nits"

    move-object v0, p0

    move-object v4, v5

    invoke-direct/range {v0 .. v5}, Lsa/H;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.class public final Lsa/j;
.super Lsa/D;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "GetMaterialEmissiveColor"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Get Material Emissive Color"

    const-string v1, "Colors"

    const-class v2, Lsa/j;

    const-string v3, "GetMaterialEmissiveColor"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v3, "Emissive Color"

    sget-object v5, Lsa/C;->a:[Ljava/lang/String;

    const-string v1, "GetMaterialEmissiveColor"

    const-string v2, "Get Material Emissive Color"

    move-object v0, p0

    move-object v4, v5

    invoke-direct/range {v0 .. v5}, Lsa/D;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

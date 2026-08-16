.class public final Lsa/i;
.super Lsa/A;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "GetMaterialDrawInFront"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Get Material Draw In Front"

    const-string v1, "Others"

    const-class v2, Lsa/i;

    const-string v3, "GetMaterialDrawInFront"

    invoke-static {v2, v3, v0, v1}, Lsa/K;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v3, "Draw In Front"

    sget-object v5, Lsa/z;->c:[Ljava/lang/String;

    const-string v1, "GetMaterialDrawInFront"

    const-string v2, "Get Material Draw In Front"

    move-object v0, p0

    move-object v4, v5

    invoke-direct/range {v0 .. v5}, Lsa/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

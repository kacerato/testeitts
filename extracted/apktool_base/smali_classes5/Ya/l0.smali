.class public LYa/l0;
.super LWa/a;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/String; = "VectorZZY"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LYa/l0$a;

    invoke-direct {v0}, LYa/l0$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lga/H;->FLOAT3:Lga/H;

    const-string v1, "zzy"

    const-string v2, "VectorZZY"

    const-string v3, "Vector ZZY"

    invoke-direct {p0, v2, v3, v0, v1}, LWa/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lga/H;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_VECTOR_ZZY:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public LPa/c;
.super LPa/a;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String; = "OnCollision"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LPa/c$a;

    invoke-direct {v0}, LPa/c$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "OnCollision"

    const-string v1, "On Collision"

    invoke-direct {p0, v0, v1}, LPa/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_ON_COLLISION:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

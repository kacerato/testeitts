.class public LMa/e;
.super LMa/a;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String; = "CustomEventText"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LMa/e$a;

    invoke-direct {v0}, LMa/e$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "Arg"

    sget-object v1, Lga/H;->TEXT:Lga/H;

    const-string v2, "CustomEventText"

    const-string v3, "Custom Event Text"

    invoke-direct {p0, v2, v3, v0, v1}, LMa/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/H;)V

    return-void
.end method


# virtual methods
.method public varargs K0([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    aget-object p1, p1, v1

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_5

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v1, p1, Ljava/lang/Double;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_4

    instance-of v1, p1, Lga/b;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    invoke-static {p1}, Lga/m;->V(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    invoke-static {p1}, Lga/m;->M(Ljava/lang/Object;)Lga/b;

    move-result-object p1

    invoke-static {p1}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    invoke-static {p1}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_CUSTOM_EVENT_TEXT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

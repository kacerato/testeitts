.class public LTa/v;
.super LFa/c;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/String; = "Multiply"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LTa/v$a;

    invoke-direct {v0}, LTa/v$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Multiply"

    invoke-direct {p0, v0}, LFa/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public G0(FF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    mul-float/2addr p1, p2

    return p1
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "resolver"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lga/D;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lga/H;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p2, p0, v0}, Lga/D;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lga/H;

    move-result-object p2

    sget-object v0, Lga/H;->MAT4:Lga/H;

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lga/H;->MAT3:Lga/H;

    if-ne p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    return-object v1

    :cond_1
    if-ne p1, v0, :cond_3

    sget-object v2, Lga/H;->FLOAT4:Lga/H;

    if-eq p2, v2, :cond_2

    sget-object v3, Lga/H;->QUATERNION:Lga/H;

    if-ne p2, v3, :cond_3

    :cond_2
    return-object v2

    :cond_3
    sget-object v2, Lga/H;->FLOAT4:Lga/H;

    if-eq p1, v2, :cond_4

    sget-object v3, Lga/H;->QUATERNION:Lga/H;

    if-ne p1, v3, :cond_5

    :cond_4
    if-ne p2, v0, :cond_5

    return-object v2

    :cond_5
    if-ne p1, v1, :cond_7

    sget-object v2, Lga/H;->FLOAT3:Lga/H;

    if-eq p2, v2, :cond_6

    sget-object v3, Lga/H;->DIRECTION:Lga/H;

    if-ne p2, v3, :cond_7

    :cond_6
    return-object v2

    :cond_7
    sget-object v2, Lga/H;->FLOAT3:Lga/H;

    if-eq p1, v2, :cond_8

    sget-object v3, Lga/H;->DIRECTION:Lga/H;

    if-ne p1, v3, :cond_9

    :cond_8
    if-ne p2, v1, :cond_9

    return-object v2

    :cond_9
    if-ne p1, v0, :cond_b

    if-eq p2, v2, :cond_a

    sget-object v1, Lga/H;->DIRECTION:Lga/H;

    if-ne p2, v1, :cond_b

    :cond_a
    return-object v2

    :cond_b
    if-eq p1, v2, :cond_c

    sget-object v1, Lga/H;->DIRECTION:Lga/H;

    if-ne p1, v1, :cond_d

    :cond_c
    if-ne p2, v0, :cond_d

    return-object v2

    :cond_d
    invoke-static {p1, p2}, Lga/C;->i(Lga/H;Lga/H;)Lga/H;

    move-result-object p1

    return-object p1
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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_MULTIPLY:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

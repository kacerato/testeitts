.class public abstract Lsa/O;
.super Lsa/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedName",
            "title"
        }
    .end annotation

    const-string v0, "UV Source"

    sget-object v1, Lga/H;->UV_SOURCE:Lga/H;

    invoke-direct {p0, p1, p2, v0, v1}, Lsa/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/H;)V

    return-void
.end method


# virtual methods
.method public G0(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    sget-object v0, Lsa/F;->b:[Ljava/lang/String;

    const-class v1, Lcc/e;

    sget-object v2, Lcc/e;->Vertex:Lcc/e;

    invoke-static {p1, v0, v0, v1, v2}, Lsa/J;->e(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

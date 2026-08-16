.class public abstract Lsa/B;
.super Lsa/b;
.source "SourceFile"


# instance fields
.field public final l:[Ljava/lang/String;

.field public final m:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "serializedName",
            "title",
            "valueLabel",
            "displayableValueLabel",
            "defaultValue",
            "runtimeAliases",
            "serializedAliases"
        }
    .end annotation

    sget-object v5, Lga/H;->BOOLEAN:Lga/H;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lsa/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/H;Ljava/lang/String;)V

    iput-object p6, p0, Lsa/B;->l:[Ljava/lang/String;

    iput-object p7, p0, Lsa/B;->m:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public G0(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lsa/B;->l:[Ljava/lang/String;

    iget-object v1, p0, Lsa/B;->m:[Ljava/lang/String;

    invoke-static {p2}, Lga/m;->O(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lsa/J;->r(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

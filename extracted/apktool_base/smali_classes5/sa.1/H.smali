.class public abstract Lsa/H;
.super Lsa/a;
.source "SourceFile"


# instance fields
.field public final l:[Ljava/lang/String;

.field public final m:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "runtimeAliases",
            "serializedAliases"
        }
    .end annotation

    sget-object v0, Lga/H;->NUMBER:Lga/H;

    invoke-direct {p0, p1, p2, p3, v0}, Lsa/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/H;)V

    iput-object p4, p0, Lsa/H;->l:[Ljava/lang/String;

    iput-object p5, p0, Lsa/H;->m:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public G0(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    iget-object v0, p0, Lsa/H;->l:[Ljava/lang/String;

    iget-object v1, p0, Lsa/H;->m:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lsa/J;->i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

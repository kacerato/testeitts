.class public Lorg/eclipse/jdt/internal/core/nd/NdStruct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/INdStruct;


# static fields
.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/NdStruct;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:J

.field protected final nd:Lorg/eclipse/jdt/internal/core/nd/Nd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->createAbstract(Ljava/lang/Class;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    return-void
.end method


# virtual methods
.method public getAddress()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    return-wide v0
.end method

.method public final getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    return-object v0
.end method

.method public getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    return-object v0
.end method

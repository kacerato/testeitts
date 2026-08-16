.class public Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Integer:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Pointer:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final Short:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes;->Pointer:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes$2;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes$2;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes;->Short:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes$3;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes$3;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes;->Integer:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/google/android/filament/Material$Parameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/filament/proguard/UsedByNative;
    value = "Material.cpp"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Material$Parameter$b;,
        Lcom/google/android/filament/Material$Parameter$a;
    }
.end annotation


# static fields
.field private static final SAMPLER_OFFSET:I
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "Material.cpp"
    .end annotation
.end field

.field private static final SUBPASS_OFFSET:I
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "Material.cpp"
    .end annotation
.end field

.field public static final e:[Lcom/google/android/filament/Material$Parameter$b;


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/google/android/filament/Material$Parameter$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/google/android/filament/Material$Parameter$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/filament/Material$Parameter$b;->values()[Lcom/google/android/filament/Material$Parameter$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$Parameter;->e:[Lcom/google/android/filament/Material$Parameter$b;

    sget-object v0, Lcom/google/android/filament/Material$Parameter$b;->MAT4:Lcom/google/android/filament/Material$Parameter$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/filament/Material$Parameter;->SAMPLER_OFFSET:I

    sget-object v0, Lcom/google/android/filament/Material$Parameter$b;->SAMPLER_3D:Lcom/google/android/filament/Material$Parameter$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/filament/Material$Parameter;->SUBPASS_OFFSET:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/filament/Material$Parameter$b;Lcom/google/android/filament/Material$Parameter$a;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Material$Parameter$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/Material$Parameter$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/Material$Parameter;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/filament/Material$Parameter;->b:Lcom/google/android/filament/Material$Parameter$b;

    iput-object p3, p0, Lcom/google/android/filament/Material$Parameter;->c:Lcom/google/android/filament/Material$Parameter$a;

    iput p4, p0, Lcom/google/android/filament/Material$Parameter;->d:I

    return-void
.end method

.method private static add(Ljava/util/List;Ljava/lang/String;III)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "Material.cpp"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/filament/Material$Parameter;",
            ">;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/filament/Material$Parameter;

    sget-object v1, Lcom/google/android/filament/Material$Parameter;->e:[Lcom/google/android/filament/Material$Parameter$b;

    aget-object p2, v1, p2

    invoke-static {}, Lcom/google/android/filament/Material$Parameter$a;->values()[Lcom/google/android/filament/Material$Parameter$a;

    move-result-object v1

    aget-object p3, v1, p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/filament/Material$Parameter;-><init>(Ljava/lang/String;Lcom/google/android/filament/Material$Parameter$b;Lcom/google/android/filament/Material$Parameter$a;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

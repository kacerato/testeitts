.class public Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdatesByKind"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IUpdatableModule$UpdateKind:[I


# instance fields
.field moduleUpdates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;",
            ">;>;"
        }
    .end annotation
.end field

.field packageUpdates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IUpdatableModule$UpdateKind()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IUpdatableModule$UpdateKind:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->values()[Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IUpdatableModule$UpdateKind:[I

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->moduleUpdates:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->packageUpdates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IUpdatableModule$UpdateKind()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->packageUpdates:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->packageUpdates:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->packageUpdates:Ljava/util/List;

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown enum value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->moduleUpdates:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->moduleUpdates:Ljava/util/List;

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->moduleUpdates:Ljava/util/List;

    return-object p1
.end method

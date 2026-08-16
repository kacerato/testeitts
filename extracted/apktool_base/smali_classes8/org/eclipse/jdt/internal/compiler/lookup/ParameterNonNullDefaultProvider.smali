.class interface abstract Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider$MixedProvider;
    }
.end annotation


# static fields
.field public static final FALSE_PROVIDER:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;

.field public static final TRUE_PROVIDER:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->FALSE_PROVIDER:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider$2;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider$2;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->TRUE_PROVIDER:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;

    return-void
.end method


# virtual methods
.method public abstract hasAnyNonNullDefault()Z
.end method

.method public abstract hasNonNullDefaultForParam(I)Z
.end method

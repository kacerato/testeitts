.class public Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider$MixedProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MixedProvider"
.end annotation


# instance fields
.field private final result:[Z


# direct methods
.method public constructor <init>([Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider$MixedProvider;->result:[Z

    return-void
.end method


# virtual methods
.method public hasAnyNonNullDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasNonNullDefaultForParam(I)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider$MixedProvider;->result:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.class public interface abstract Lorg/eclipse/jdt/internal/core/nd/INdStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addressOf(Lorg/eclipse/jdt/internal/core/nd/INdStruct;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/nd/INdStruct;->getAddress()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public abstract getAddress()J
.end method

.method public abstract getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;
.end method

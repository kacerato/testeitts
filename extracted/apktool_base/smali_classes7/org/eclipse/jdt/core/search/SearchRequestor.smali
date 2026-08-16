.class public abstract Lorg/eclipse/jdt/core/search/SearchRequestor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract acceptSearchMatch(Lorg/eclipse/jdt/core/search/SearchMatch;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation
.end method

.method public beginReporting()V
    .locals 0

    return-void
.end method

.method public endReporting()V
    .locals 0

    return-void
.end method

.method public enterParticipant(Lorg/eclipse/jdt/core/search/SearchParticipant;)V
    .locals 0

    return-void
.end method

.method public exitParticipant(Lorg/eclipse/jdt/core/search/SearchParticipant;)V
    .locals 0

    return-void
.end method

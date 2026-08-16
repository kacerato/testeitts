.class public Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappedCoreException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x73f08ac0f54d80fcL


# instance fields
.field public coreException:Lorg/eclipse/core/runtime/CoreException;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/CoreException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WrappedCoreException;->coreException:Lorg/eclipse/core/runtime/CoreException;

    return-void
.end method

.class public final Lcom/android/tools/r8/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ProgramResourceProvider;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/ProgramResourceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/f0;->a:Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProgramResources()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/f0;->a:Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-interface {v0}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/android/tools/r8/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ProgramResourceProvider;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/ProgramResourceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/q0;->a:Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/q0;->a:Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/ProgramResourceProvider;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/q0;->a:Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-interface {v0}, Lcom/android/tools/r8/ProgramResourceProvider;->getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;

    move-result-object v0

    return-object v0
.end method

.method public final getProgramResources()Ljava/util/Collection;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

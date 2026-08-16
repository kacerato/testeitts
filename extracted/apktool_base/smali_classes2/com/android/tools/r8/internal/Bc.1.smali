.class public final Lcom/android/tools/r8/internal/Bc;
.super Lcom/android/tools/r8/internal/P1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/Q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/P1;-><init>(Lcom/android/tools/r8/graph/g;)V

    return-void
.end method


# virtual methods
.method public final isAnnotation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P1;->a:Lcom/android/tools/r8/graph/g;

    check-cast v0, Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v0

    return v0
.end method

.method public final isEnum()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P1;->a:Lcom/android/tools/r8/graph/g;

    check-cast v0, Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result v0

    return v0
.end method

.method public final isInterface()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P1;->a:Lcom/android/tools/r8/graph/g;

    check-cast v0, Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v0

    return v0
.end method

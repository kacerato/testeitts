.class public abstract Lcom/android/tools/r8/internal/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/g;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/P1;->a:Lcom/android/tools/r8/graph/g;

    return-void
.end method


# virtual methods
.method public final isPrivate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P1;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    return v0
.end method

.method public final isProtected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P1;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    return v0
.end method

.method public final isPublic()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P1;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    return v0
.end method

.method public final isStatic()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P1;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    return v0
.end method

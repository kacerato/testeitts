.class public abstract Lcom/android/tools/r8/internal/Ms0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/android/tools/r8/diagnostic/DefinitionContext;

.field public final c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Ms0;->e:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ms0;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ms0;->b:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ms0;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/Ms0;->d:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/internal/Ms0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ms0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/android/tools/r8/internal/Ms0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ms0;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAccessFlags()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ms0;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;

    return-object v0
.end method

.method public final getReference()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ms0;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getReferencedFromContext()Lcom/android/tools/r8/diagnostic/DefinitionContext;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ms0;->b:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ms0;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isMissingDefinition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Ms0;->d:Z

    return v0
.end method

.class public Lcom/android/tools/r8/synthesis/S;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/synthesis/S$a;,
        Lcom/android/tools/r8/synthesis/S$b;
    }
.end annotation


# static fields
.field public static final synthetic a0:Z = true


# instance fields
.field public final A:Lcom/android/tools/r8/synthesis/S$b;

.field public final B:Lcom/android/tools/r8/synthesis/S$b;

.field public final C:Lcom/android/tools/r8/synthesis/S$b;

.field public final D:Lcom/android/tools/r8/synthesis/S$b;

.field public final E:Lcom/android/tools/r8/synthesis/S$b;

.field public final F:Lcom/android/tools/r8/synthesis/S$b;

.field public final G:Lcom/android/tools/r8/synthesis/S$b;

.field public final H:Lcom/android/tools/r8/synthesis/S$b;

.field public final I:Lcom/android/tools/r8/synthesis/S$b;

.field public final J:Lcom/android/tools/r8/synthesis/S$b;

.field public final K:Lcom/android/tools/r8/synthesis/S$b;

.field public final L:Lcom/android/tools/r8/synthesis/S$b;

.field public final M:Lcom/android/tools/r8/synthesis/S$b;

.field public final N:Lcom/android/tools/r8/synthesis/S$b;

.field public final O:Lcom/android/tools/r8/synthesis/S$b;

.field public final P:Lcom/android/tools/r8/synthesis/S$b;

.field public final Q:Lcom/android/tools/r8/synthesis/S$b;

.field public final R:Lcom/android/tools/r8/synthesis/S$b;

.field public final S:Lcom/android/tools/r8/synthesis/S$b;

.field public final T:Lcom/android/tools/r8/synthesis/S$b;

.field public final U:Lcom/android/tools/r8/synthesis/S$b;

.field public final V:Lcom/android/tools/r8/synthesis/S$b;

.field public final W:Lcom/android/tools/r8/synthesis/S$b;

.field public final X:Lcom/android/tools/r8/synthesis/S$b;

.field public final Y:Ljava/util/ArrayList;

.field public Z:Ljava/lang/String;

.field public final a:Lcom/android/tools/r8/synthesis/S$b;

.field public final b:Lcom/android/tools/r8/synthesis/S$b;

.field public final c:Lcom/android/tools/r8/synthesis/S$b;

.field public final d:Lcom/android/tools/r8/synthesis/S$b;

.field public final e:Lcom/android/tools/r8/synthesis/S$b;

.field public final f:Lcom/android/tools/r8/synthesis/S$b;

.field public final g:Lcom/android/tools/r8/synthesis/S$b;

.field public final h:Lcom/android/tools/r8/synthesis/S$b;

.field public final i:Lcom/android/tools/r8/synthesis/S$b;

.field public final j:Lcom/android/tools/r8/synthesis/S$b;

.field public final k:Lcom/android/tools/r8/synthesis/S$b;

.field public final l:Lcom/android/tools/r8/synthesis/S$b;

.field public final m:Lcom/android/tools/r8/synthesis/S$b;

.field public final n:Lcom/android/tools/r8/synthesis/S$b;

.field public final o:Lcom/android/tools/r8/synthesis/S$b;

.field public final p:Lcom/android/tools/r8/synthesis/S$b;

.field public final q:Lcom/android/tools/r8/synthesis/S$b;

.field public final r:Lcom/android/tools/r8/synthesis/S$b;

.field public final s:Lcom/android/tools/r8/synthesis/S$b;

.field public final t:Lcom/android/tools/r8/synthesis/S$b;

.field public final u:Lcom/android/tools/r8/synthesis/S$b;

.field public final v:Lcom/android/tools/r8/synthesis/S$b;

.field public final w:Lcom/android/tools/r8/synthesis/S$b;

.field public final x:Lcom/android/tools/r8/synthesis/S$b;

.field public final y:Lcom/android/tools/r8/synthesis/S$b;

.field public final z:Lcom/android/tools/r8/synthesis/S$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/synthesis/Q;

    invoke-direct {v0}, Lcom/android/tools/r8/synthesis/Q;-><init>()V

    new-instance v1, Lcom/android/tools/r8/synthesis/U;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/U;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->a:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/U;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/U;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->b:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/U;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/U;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->c:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/U;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/U;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->d:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/U;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/android/tools/r8/synthesis/U;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->e:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/U;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v6, v2, 0x1

    iput v6, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    invoke-direct {v1, v2, v3, v5}, Lcom/android/tools/r8/synthesis/U;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->f:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/U;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v6, v2, 0x1

    iput v6, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    invoke-direct {v1, v2, v3, v5}, Lcom/android/tools/r8/synthesis/U;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->g:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "$EnumUnboxingLocalUtility"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->h:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "$EnumUnboxingSharedUtility"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->i:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "$-CC"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->j:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "$-EL"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->k:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "RetargetClass"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->l:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "RetargetInterface"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->m:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "$Wrapper"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->n:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "$VivifiedWrapper"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->o:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "-IA"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->p:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "$EnumConversion"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->q:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/T;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const-string v3, "Lambda"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/T;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->r:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/T;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const-string v3, "ThreadLocal"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/T;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->s:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/T;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const-string v3, "TypeSwitch"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/T;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->t:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/T;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const-string v4, "SharedSuper"

    invoke-direct {v1, v2, v4, v5}, Lcom/android/tools/r8/synthesis/T;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->u:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/T;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const-string v4, "$IA"

    invoke-direct {v1, v2, v4, v5}, Lcom/android/tools/r8/synthesis/T;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->v:Lcom/android/tools/r8/synthesis/S$b;

    new-instance v1, Lcom/android/tools/r8/synthesis/T;

    iget v2, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/android/tools/r8/synthesis/Q;->a:I

    const-string v4, "$Condy"

    invoke-direct {v1, v2, v4, v5}, Lcom/android/tools/r8/synthesis/T;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->a(Lcom/android/tools/r8/synthesis/S$b;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->w:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "AutoCloseableDispatcher"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->x:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "AutoCloseableForwarder"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->y:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->z:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "CheckNotZero"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->A:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "Record"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->B:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "Backport"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->C:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "BackportWithForwarding"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->D:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "StaticInterfaceCall"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->E:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "ObjectCloneOutline"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->F:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "ToStringIfNotNull"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->G:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "ThrowCCEIfNotNull"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->H:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "NonNull"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->I:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "ThrowIAE"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->J:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "ThrowICCE"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->K:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "ThrowNSME"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->L:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "ThrowRTE"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->M:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "TwrCloseResource"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->N:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "ServiceLoad"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->O:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "Outline"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->P:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "CovariantOutline"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->Q:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "APIConversion"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->R:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "APIConversionParameters"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->S:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "$CollectionConversion"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->T:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "ApiModelOutline"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/synthesis/S;->U:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->V:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "DesugaredLibraryBridge"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->b(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->W:Lcom/android/tools/r8/synthesis/S$b;

    const-string v1, "NonStartupInStartupOutline"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/Q;->c(Ljava/lang/String;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->X:Lcom/android/tools/r8/synthesis/S$b;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/S;->Z:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/Q;->b:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/tools/r8/synthesis/Q;->b:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/tools/r8/synthesis/S;->Y:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/synthesis/S;->a0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 26
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p0, p1, v0}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/references/ClassReference;->getBinaryName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "$$ExternalSynthetic"

    invoke-static {v0, p1, p0, p2}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/synthesis/S$a;)Ljava/lang/String;
    .locals 1

    .line 31
    sget-boolean v0, Lcom/android/tools/r8/synthesis/S;->a0:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/synthesis/S$a;->b:Lcom/android/tools/r8/synthesis/S$a;

    if-ne p0, v0, :cond_2

    .line 33
    const-string p0, "$$InternalSynthetic"

    return-object p0

    .line 34
    :cond_2
    const-string p0, "$$ExternalSynthetic"

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;
    .locals 2

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/synthesis/S;->a0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S$b;->c:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/S$b;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$ExternalSynthetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_3

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected failure to determine the context of synthetic class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 28
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S$b;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/android/tools/r8/synthesis/S;->a0:Z

    if-nez v0, :cond_1

    const-string v0, "$$InternalSynthetic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/references/ClassReference;)Z
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/synthesis/S$a;Lcom/android/tools/r8/synthesis/S$b;)Z
    .locals 5

    .line 37
    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p2}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    sget-boolean v0, Lcom/android/tools/r8/synthesis/S;->a0:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/references/ClassReference;->getBinaryName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lcom/android/tools/r8/synthesis/S$b;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 41
    :cond_2
    invoke-static {p1}, Lcom/android/tools/r8/synthesis/S;->a(Lcom/android/tools/r8/synthesis/S$a;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_4

    .line 43
    sget-object v3, Lcom/android/tools/r8/synthesis/S$a;->c:Lcom/android/tools/r8/synthesis/S$a;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    invoke-static {p2, v0, v1, p0, p1}, Lcom/android/tools/r8/synthesis/S;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    return v4

    :cond_4
    return v2
.end method

.method public static a(Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 3

    .line 44
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/S$b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    return v2

    .line 46
    :cond_0
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 47
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S$b;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    if-eqz p4, :cond_4

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    .line 50
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x30

    if-ne p3, p2, :cond_2

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, p0, :cond_5

    goto :goto_1

    :cond_2
    move p2, v2

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isDigit(C)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return p0

    :cond_5
    :goto_2
    return v2
.end method

.method public static b(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S$b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "$$"

    .line 5
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_2

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected failure to compute a synthetic prefix for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/S;->Z:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    sget v0, Lcom/android/tools/r8/internal/pA;->a:I

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/oA;->a:Lcom/android/tools/r8/internal/hW;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hW;->a()Lcom/android/tools/r8/internal/lA;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/internal/F;

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/F;->a([B)Lcom/android/tools/r8/internal/lA;

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/S;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/synthesis/S$b;

    .line 8
    iget v6, v5, Lcom/android/tools/r8/synthesis/S$b;->b:I

    .line 9
    move-object v7, v0

    check-cast v7, Lcom/android/tools/r8/internal/l;

    .line 10
    iget-object v8, v7, Lcom/android/tools/r8/internal/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    .line 11
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/l;->b(I)Lcom/android/tools/r8/internal/l;

    .line 12
    invoke-virtual {v5}, Lcom/android/tools/r8/synthesis/S$b;->b()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/F;->a([B)Lcom/android/tools/r8/internal/lA;

    .line 14
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/synthesis/S$b;->a(Lcom/android/tools/r8/internal/lA;)V

    goto :goto_0

    .line 15
    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/gW;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gW;->a()Lcom/android/tools/r8/internal/fA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gA;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/S;->Z:Ljava/lang/String;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/S;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/synthesis/S$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/S;->Y:Ljava/util/ArrayList;

    return-object v0
.end method

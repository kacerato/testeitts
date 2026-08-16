.class public Lcom/android/tools/r8/utils/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/utils/i$a;

.field public b:Z

.field public c:Lcom/android/tools/r8/ProgramConsumer;

.field public final d:Lcom/android/tools/r8/internal/KU;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->a:Lcom/android/tools/r8/utils/i$a;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/utils/r;->b:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->d:Lcom/android/tools/r8/internal/KU;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/BaseCompilerCommand$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/BaseCompilerCommand$Builder<",
            "**>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->a:Lcom/android/tools/r8/utils/i$a;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/tools/r8/utils/r;->b:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->d:Lcom/android/tools/r8/internal/KU;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/utils/r;->a(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setProgramConsumer(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->a:Lcom/android/tools/r8/utils/i$a;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/tools/r8/utils/r;->b:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->d:Lcom/android/tools/r8/internal/KU;

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/utils/r;->a(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    if-eqz v0, :cond_0

    .line 19
    new-instance v1, Lcom/android/tools/r8/utils/j;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/utils/j;-><init>(Lcom/android/tools/r8/utils/r;)V

    .line 20
    new-instance v2, Lcom/android/tools/r8/naming/H0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/naming/H0;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/KU;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/KU;-><init>(Lcom/android/tools/r8/naming/Q;Lcom/android/tools/r8/naming/Q;)V

    .line 22
    iput-object v1, p0, Lcom/android/tools/r8/utils/r;->d:Lcom/android/tools/r8/internal/KU;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/r;->d:Lcom/android/tools/r8/internal/KU;

    .line 24
    iput-object v0, p1, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/ClassFileConsumer;)Lcom/android/tools/r8/ClassFileConsumer;
    .locals 1

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/utils/r;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/utils/p;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/tools/r8/utils/p;-><init>(Lcom/android/tools/r8/utils/r;Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/ClassFileConsumer;)V

    .line 20
    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/DexIndexedConsumer;)Lcom/android/tools/r8/DexIndexedConsumer;
    .locals 1

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/utils/r;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/utils/l;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/tools/r8/utils/l;-><init>(Lcom/android/tools/r8/utils/r;Lcom/android/tools/r8/DexIndexedConsumer;Lcom/android/tools/r8/DexIndexedConsumer;)V

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/ProgramConsumer;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/utils/r;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    instance-of v1, p1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_2

    .line 3
    check-cast p1, Lcom/android/tools/r8/ClassFileConsumer;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/utils/r;->a(Lcom/android/tools/r8/ClassFileConsumer;)Lcom/android/tools/r8/ClassFileConsumer;

    goto :goto_3

    .line 4
    :cond_2
    instance-of v1, p1, Lcom/android/tools/r8/DexIndexedConsumer;

    if-eqz v1, :cond_3

    .line 5
    check-cast p1, Lcom/android/tools/r8/DexIndexedConsumer;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/utils/r;->a(Lcom/android/tools/r8/DexIndexedConsumer;)Lcom/android/tools/r8/DexIndexedConsumer;

    goto :goto_3

    .line 6
    :cond_3
    instance-of v1, p1, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v1, :cond_6

    .line 7
    check-cast p1, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-nez v0, :cond_5

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_5
    :goto_1
    new-instance v1, Lcom/android/tools/r8/utils/n;

    invoke-direct {v1, p0, p1, p1}, Lcom/android/tools/r8/utils/n;-><init>(Lcom/android/tools/r8/utils/r;Lcom/android/tools/r8/DexFilePerClassFileConsumer;Lcom/android/tools/r8/DexFilePerClassFileConsumer;)V

    .line 10
    iput-object v1, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    goto :goto_3

    :cond_6
    if-nez v0, :cond_8

    if-nez p1, :cond_7

    goto :goto_2

    .line 11
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/utils/r;->a(Lcom/android/tools/r8/DexIndexedConsumer;)Lcom/android/tools/r8/DexIndexedConsumer;

    :goto_3
    if-nez v0, :cond_a

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/android/tools/r8/utils/r;->c:Lcom/android/tools/r8/ProgramConsumer;

    return-object p1
.end method

.method public a()Lcom/android/tools/r8/utils/i;
    .locals 1

    .line 21
    sget-boolean v0, Lcom/android/tools/r8/utils/r;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/utils/r;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/r;->a:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    return-object v0
.end method

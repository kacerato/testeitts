.class public Lcom/android/tools/r8/internal/La0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lcom/android/tools/r8/graph/L2;

.field public final B:Lcom/android/tools/r8/graph/L2;

.field public final C:Lcom/android/tools/r8/graph/L2;

.field public final D:Lcom/android/tools/r8/graph/I2;

.field public final E:Lcom/android/tools/r8/graph/I2;

.field public final F:Lcom/android/tools/r8/graph/A2;

.field public final G:Lcom/android/tools/r8/graph/A2;

.field public final H:Lcom/android/tools/r8/graph/A2;

.field public final I:Lcom/android/tools/r8/graph/l1;

.field public final J:Lcom/android/tools/r8/graph/l1;

.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/graph/M2;

.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:Lcom/android/tools/r8/graph/M2;

.field public final e:Lcom/android/tools/r8/graph/M2;

.field public final f:Lcom/android/tools/r8/graph/M2;

.field public final g:Lcom/android/tools/r8/graph/M2;

.field public final h:Lcom/android/tools/r8/graph/M2;

.field public final i:Lcom/android/tools/r8/graph/M2;

.field public final j:Lcom/android/tools/r8/graph/M2;

.field public final k:Lcom/android/tools/r8/graph/M2;

.field public final l:Lcom/android/tools/r8/graph/M2;

.field public final m:Lcom/android/tools/r8/graph/M2;

.field public final n:Lcom/android/tools/r8/graph/M2;

.field public final o:Lcom/android/tools/r8/graph/M2;

.field public final p:Lcom/android/tools/r8/graph/M2;

.field public final q:Lcom/android/tools/r8/internal/Ga0;

.field public final r:Lcom/android/tools/r8/internal/Ja0;

.field public final s:Lcom/android/tools/r8/internal/Ha0;

.field public final t:Lcom/android/tools/r8/internal/Ia0;

.field public final u:Lcom/android/tools/r8/internal/Ka0;

.field public final v:Lcom/android/tools/r8/graph/L2;

.field public final w:Lcom/android/tools/r8/graph/L2;

.field public final x:Lcom/android/tools/r8/graph/L2;

.field public final y:Lcom/android/tools/r8/graph/L2;

.field public final z:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/La0;->a:Lcom/android/tools/r8/graph/u1;

    const-string v0, "Lcom/google/protobuf/Internal$EnumLite;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->b:Lcom/android/tools/r8/graph/M2;

    const-string v0, "Lcom/google/protobuf/Internal$EnumLiteMap;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->c:Lcom/android/tools/r8/graph/M2;

    const-string v0, "Lcom/google/protobuf/Internal$EnumVerifier;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->d:Lcom/android/tools/r8/graph/M2;

    const-string v0, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/La0;->e:Lcom/android/tools/r8/graph/M2;

    const-string v1, "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/La0;->f:Lcom/android/tools/r8/graph/M2;

    const-string v1, "Lcom/google/protobuf/ExtensionRegistryLite;"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/La0;->g:Lcom/android/tools/r8/graph/M2;

    const-string v1, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/La0;->h:Lcom/android/tools/r8/graph/M2;

    const-string v2, "Lcom/google/protobuf/GeneratedMessageLite;"

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    const-string v3, "Lcom/google/protobuf/GeneratedMessageLite$Builder;"

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    const-string v3, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;"

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->l:Lcom/android/tools/r8/graph/M2;

    const-string v0, "Lcom/google/protobuf/RawMessageInfo;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->m:Lcom/android/tools/r8/graph/M2;

    const-string v3, "Lcom/google/protobuf/MessageLite;"

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/La0;->n:Lcom/android/tools/r8/graph/M2;

    const-string v4, "Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    const-string v5, "Lcom/google/protobuf/WireFormat$FieldType;"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/r8/internal/La0;->p:Lcom/android/tools/r8/graph/M2;

    const-string v5, "DEFAULT_INSTANCE"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/r8/internal/La0;->v:Lcom/android/tools/r8/graph/L2;

    const-string v5, "INSTANCE"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/r8/internal/La0;->w:Lcom/android/tools/r8/graph/L2;

    const-string v5, "internalValueMap"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/r8/internal/La0;->x:Lcom/android/tools/r8/graph/L2;

    const-string v5, "dynamicMethod"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/r8/internal/La0;->y:Lcom/android/tools/r8/graph/L2;

    const-string v6, "findLiteExtensionByNumber"

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iput-object v6, p0, Lcom/android/tools/r8/internal/La0;->z:Lcom/android/tools/r8/graph/L2;

    const-string v6, "newBuilder"

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iput-object v6, p0, Lcom/android/tools/r8/internal/La0;->A:Lcom/android/tools/r8/graph/L2;

    const-string v6, "findValueByNumber"

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iput-object v6, p0, Lcom/android/tools/r8/internal/La0;->B:Lcom/android/tools/r8/graph/L2;

    const-string v6, "Lcom/google/protobuf/"

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iput-object v6, p0, Lcom/android/tools/r8/internal/La0;->C:Lcom/android/tools/r8/graph/L2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/La0;->D:Lcom/android/tools/r8/graph/I2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/La0;->E:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p1, v2, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/La0;->F:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v4, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v4, "newMessageInfo"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {p1, v2, v1, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/La0;->G:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v2, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/La0;->H:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    const-string v2, "info"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/La0;->I:Lcom/android/tools/r8/graph/l1;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    const-string v2, "objects"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->J:Lcom/android/tools/r8/graph/l1;

    new-instance v0, Lcom/android/tools/r8/internal/Ga0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Ga0;-><init>(Lcom/android/tools/r8/internal/La0;Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->q:Lcom/android/tools/r8/internal/Ga0;

    new-instance v0, Lcom/android/tools/r8/internal/Ja0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Ja0;-><init>(Lcom/android/tools/r8/internal/La0;Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->r:Lcom/android/tools/r8/internal/Ja0;

    new-instance v0, Lcom/android/tools/r8/internal/Ha0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Ha0;-><init>(Lcom/android/tools/r8/internal/La0;Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->s:Lcom/android/tools/r8/internal/Ha0;

    new-instance v0, Lcom/android/tools/r8/internal/Ia0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Ia0;-><init>(Lcom/android/tools/r8/internal/La0;Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->t:Lcom/android/tools/r8/internal/Ia0;

    new-instance v0, Lcom/android/tools/r8/internal/Ka0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Ka0;-><init>(Lcom/android/tools/r8/internal/La0;Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/La0;->u:Lcom/android/tools/r8/internal/Ka0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->q:Lcom/android/tools/r8/internal/Ga0;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ga0;->a:Lcom/android/tools/r8/graph/A2;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ga0;->b:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->r:Lcom/android/tools/r8/internal/Ja0;

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ja0;->a:Lcom/android/tools/r8/graph/A2;

    .line 7
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ja0;->b:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ja0;->c:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ja0;->e:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ja0;->f:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->s:Lcom/android/tools/r8/internal/Ha0;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ha0;->a:Lcom/android/tools/r8/graph/A2;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->t:Lcom/android/tools/r8/internal/Ia0;

    .line 16
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ia0;->a:Lcom/android/tools/r8/graph/A2;

    .line 17
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ia0;->b:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->u:Lcom/android/tools/r8/internal/Ka0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->F:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->G:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->H:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 2

    .line 23
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/La0;->y:Lcom/android/tools/r8/graph/L2;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->D:Lcom/android/tools/r8/graph/I2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/La0;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;)Z
    .locals 3

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/La0;->G:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->m:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->r:Lcom/android/tools/r8/internal/Ja0;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Ja0;->b:Lcom/android/tools/r8/graph/A2;

    if-eq p1, v1, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ja0;->c:Lcom/android/tools/r8/graph/A2;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/La0;->E:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/La0;->z:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/La0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

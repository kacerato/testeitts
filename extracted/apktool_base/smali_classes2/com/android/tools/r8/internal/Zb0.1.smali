.class public abstract Lcom/android/tools/r8/internal/Zb0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lcom/android/tools/r8/internal/Vb0;

.field public static final B:Lcom/android/tools/r8/internal/Vb0;

.field public static final C:Lcom/android/tools/r8/internal/Vb0;

.field public static final D:Lcom/android/tools/r8/internal/Vb0;

.field public static final a:Lcom/android/tools/r8/internal/Vb0;

.field public static final b:Lcom/android/tools/r8/internal/Vb0;

.field public static final c:Lcom/android/tools/r8/internal/Vb0;

.field public static final d:Lcom/android/tools/r8/internal/Vb0;

.field public static final e:Lcom/android/tools/r8/internal/Vb0;

.field public static final f:Lcom/android/tools/r8/internal/Vb0;

.field public static final g:Lcom/android/tools/r8/internal/Vb0;

.field public static final h:Lcom/android/tools/r8/internal/Vb0;

.field public static final i:Lcom/android/tools/r8/internal/Vb0;

.field public static final j:Lcom/android/tools/r8/internal/Vb0;

.field public static final k:Lcom/android/tools/r8/internal/Vb0;

.field public static final l:Lcom/android/tools/r8/internal/Vb0;

.field public static final m:Lcom/android/tools/r8/internal/Vb0;

.field public static final n:Lcom/android/tools/r8/internal/Vb0;

.field public static final o:Lcom/android/tools/r8/internal/Vb0;

.field public static final p:Lcom/android/tools/r8/internal/Vb0;

.field public static final q:Lcom/android/tools/r8/internal/Vb0;

.field public static final r:Lcom/android/tools/r8/internal/Vb0;

.field public static final s:Lcom/android/tools/r8/internal/Vb0;

.field public static final t:Lcom/android/tools/r8/internal/Vb0;

.field public static final u:Lcom/android/tools/r8/internal/Vb0;

.field public static final v:Lcom/android/tools/r8/internal/Vb0;

.field public static final w:Lcom/android/tools/r8/internal/Vb0;

.field public static final x:Lcom/android/tools/r8/internal/Vb0;

.field public static final y:Lcom/android/tools/r8/internal/Vb0;

.field public static final z:Lcom/android/tools/r8/internal/Vb0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "ELIGIBLE"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->a:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "ANNOTATION"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->b:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "PINNED"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->c:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "DOWN_CAST"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->d:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INSTANCE_OF"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->e:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "SUBENUM_SUBTYPES"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->f:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "SUBENUM_INVALID_HIERARCHY"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->g:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "SUBENUM_INSTANCE_FIELDS"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->h:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "MANY_INSTANCE_FIELDS"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->i:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "DEFAULT_METHOD_INVOKE"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->j:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "UNRESOLVABLE_FIELD"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->k:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "CONST_CLASS"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->l:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_PHI"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->m:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_INIT"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->n:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_CLINIT"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->o:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_SUBTYPE_INIT"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->p:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "SUBTYPE_CLINIT"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->q:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_INVOKE"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->r:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_INVOKE_CLASSPATH"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->s:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_INVOKE_CUSTOM"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->t:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_INVOKE_ON_ARRAY"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->u:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "IMPLICIT_UP_CAST_IN_RETURN"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->v:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_FIELD_PUT"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->w:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_ARRAY_PUT"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->x:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_INVOKE_NEW_ARRAY"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->y:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "TYPE_MISMATCH_FIELD_PUT"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->z:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "INVALID_IF_TYPES"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->A:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "ASSIGNMENT_OUTSIDE_INIT"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->B:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "ENUM_METHOD_CALLED_WITH_NULL_RECEIVER"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->C:Lcom/android/tools/r8/internal/Vb0;

    new-instance v0, Lcom/android/tools/r8/internal/Vb0;

    const-string v1, "OTHER_UNSUPPORTED_INSTRUCTION"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vb0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Zb0;->D:Lcom/android/tools/r8/internal/Vb0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

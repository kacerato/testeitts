.class public Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final API_LEAK:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final BOXING:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final CAST:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final COMPILER_DEFAULT_ERRORS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final COMPILER_DEFAULT_INFOS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final COMPILER_DEFAULT_WARNINGS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final DEPRECATION:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final DEP_ANN:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final FALLTHROUGH:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final FINALLY:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final GROUP0:I = 0x0

.field public static final GROUP1:I = 0x20000000

.field public static final GROUP2:I = 0x40000000

.field public static final GROUP_MASK:I = -0x20000000

.field public static final GROUP_MAX:I = 0x3

.field public static final GROUP_SHIFT:I = 0x1d

.field public static final HIDING:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final INCOMPLETE_SWITCH:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final JAVADOC:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final MODULE:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final NLS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final NULL:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final PREVIEW:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final RAW:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final RESOURCE:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final RESTRICTION:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final SERIAL:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final STATIC_ACCESS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final STATIC_METHOD:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final SUPER:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final SYNCHRONIZED:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final SYNTHETIC_ACCESS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final TERMINAL_DEPRECATION:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final UNCHECKED:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final UNLIKELY_ARGUMENT_TYPE:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final UNQUALIFIED_FIELD_ACCESS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

.field public static final UNUSED:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;


# instance fields
.field private bits:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v1, 0x1fffffff

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->ALL:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v2, 0x20000100

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->BOXING:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v2, 0x4000000

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->CAST:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->DEPRECATION:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->TERMINAL_DEPRECATION:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v2, 0x20002000

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->DEP_ANN:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v2, 0x20080000

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->FALLTHROUGH:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v2, 0x1000000

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->FINALLY:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->HIDING:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v3, 0x20001000

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->INCOMPLETE_SWITCH:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v3, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->NLS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v4, 0x20000080

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v3, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->NULL:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v5, 0x20010000

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v4, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->RAW:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v6, 0x20000020

    invoke-direct {v4, v6}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v4, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->RESTRICTION:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v7, 0x20000008

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v6, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->SERIAL:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v7, 0x10000000

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v6, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->STATIC_ACCESS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v8, 0x40000010    # 2.0000038f

    invoke-direct {v7, v8}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v7, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->STATIC_METHOD:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v8, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->SYNTHETIC_ACCESS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v9, 0x30000000

    invoke-direct {v8, v9}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v8, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->SYNCHRONIZED:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v9, 0x20100000

    invoke-direct {v8, v9}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v8, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->SUPER:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/16 v9, 0x10

    invoke-direct {v8, v9}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v8, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->UNUSED:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v10, 0x20000002

    invoke-direct {v9, v10}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v9, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v11, 0x400000

    invoke-direct {v10, v11}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v10, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->UNQUALIFIED_FIELD_ACCESS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v11, 0x40000080    # 2.0000305f

    invoke-direct {v10, v11}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v10, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->RESOURCE:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v12, 0x40200000    # 2.5f

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v11, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->UNLIKELY_ARGUMENT_TYPE:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v13, 0x41000000    # 8.0f

    invoke-direct {v12, v13}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->API_LEAK:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v13, 0x42000000    # 32.0f

    invoke-direct {v12, v13}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->MODULE:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v13, 0x2000000

    invoke-direct {v12, v13}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->JAVADOC:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v14, 0x44000000    # 512.0f

    invoke-direct {v13, v14}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v13, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->PREVIEW:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v13, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->COMPILER_DEFAULT_ERRORS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v15, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    invoke-direct {v15, v14}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v15, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->COMPILER_DEFAULT_WARNINGS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    invoke-direct {v5, v14}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(I)V

    sput-object v5, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->COMPILER_DEFAULT_INFOS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v14, 0x40400000    # 3.0f

    invoke-virtual {v5, v14}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v5, 0x100ee5f

    invoke-virtual {v15, v5}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v5

    const v15, 0x2b03d6fe

    invoke-virtual {v5, v15}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v5

    const v15, 0x47ba3086

    invoke-virtual {v5, v15}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v5, 0x40000c00    # 2.0007324f

    invoke-virtual {v13, v5}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->setAll()Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v0, 0x20000

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x20000400

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/high16 v0, 0x20200000

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x20400000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x40000400    # 2.0002441f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x40000800    # 2.0004883f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x40001000    # 2.0009766f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x40002000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x40020000    # 2.03125f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x40004000    # 2.0039062f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x40080000    # 2.125f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x40100000    # 2.25f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v0, 0x20004000

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/16 v0, 0x800

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x40040000    # 2.0625f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x21000000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x40000002    # 2.0000005f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x40000008    # 2.000002f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x40010000    # 2.015625f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x40000040    # 2.0000153f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v0, 0x40000020    # 2.0000076f

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v0, 0x40000100    # 2.000061f

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const v1, 0x40000200    # 2.000122f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const v0, 0x40008000    # 2.0078125f

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    const-string v0, "suppressRawWhenUnchecked"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x20010000

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    :cond_0
    const/high16 v0, 0x100000

    invoke-virtual {v12, v0}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    invoke-virtual {v11, v14}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->initialize(I)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    .line 6
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->initialize(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)V

    return-void
.end method


# virtual methods
.method public areAllSet()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v2, v2, v1

    const v3, 0x1fffffff

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clear(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;
    .locals 3

    const/high16 v0, -0x20000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v2, v1, v0

    not-int p1, p1

    and-int/2addr p1, v2

    aput p1, v1, v0

    return-object p0
.end method

.method public clearAll()Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBits()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    return-object v0
.end method

.method public hasSameIrritants(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v2, v2, v1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initialize(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x20000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1d

    .line 1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    const v2, 0x1fffffff

    and-int/2addr p1, v2

    aput p1, v1, v0

    return-void
.end method

.method public initialize(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public isAnySet(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v2, v2, v1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v3, v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isSet(I)Z
    .locals 2

    const/high16 v0, -0x20000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v0, v1, v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public set(I)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;
    .locals 4

    const/high16 v0, -0x20000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1d

    .line 1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v2, v1, v0

    const v3, 0x1fffffff

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    aput p1, v1, v0

    return-object p0
.end method

.method public set(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;
    .locals 7

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    move-object p1, p0

    :goto_1
    return-object p1

    .line 2
    :cond_2
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v3, v3, v2

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    .line 3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v5, v4, v2

    and-int v6, v5, v3

    if-eq v6, v3, :cond_3

    or-int v1, v5, v3

    .line 4
    aput v1, v4, v2

    move v1, v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAll()Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->bits:[I

    aget v2, v1, v0

    const v3, 0x1fffffff

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

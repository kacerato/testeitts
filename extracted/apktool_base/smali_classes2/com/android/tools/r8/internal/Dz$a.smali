.class public final enum Lcom/android/tools/r8/internal/Dz$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/Dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/Dz$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum c:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum d:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum e:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum f:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum g:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum h:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum i:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum j:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum k:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum l:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum m:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum n:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum o:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum p:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum q:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum r:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum s:Lcom/android/tools/r8/internal/Dz$a;

.field public static final enum t:Lcom/android/tools/r8/internal/Dz$a;

.field public static final synthetic u:[Lcom/android/tools/r8/internal/Dz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v1, Lcom/android/tools/r8/internal/Dz$a;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "KeepRule"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/Dz$a;->b:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v2, Lcom/android/tools/r8/internal/Dz$a;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "CompatibilityRule"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/Dz$a;->c:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v3, Lcom/android/tools/r8/internal/Dz$a;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "ConditionalKeepRule"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/Dz$a;->d:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v4, Lcom/android/tools/r8/internal/Dz$a;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "KeepRulePrecondition"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/internal/Dz$a;->e:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v5, Lcom/android/tools/r8/internal/Dz$a;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "InstantiatedIn"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/internal/Dz$a;->f:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v6, Lcom/android/tools/r8/internal/Dz$a;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "InvokedViaSuper"

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/internal/Dz$a;->g:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v7, Lcom/android/tools/r8/internal/Dz$a;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "TargetedBySuper"

    invoke-direct {v7, v8, v9}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v7, Lcom/android/tools/r8/internal/Dz$a;->h:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v8, Lcom/android/tools/r8/internal/Dz$a;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "InvokedFrom"

    invoke-direct {v8, v9, v10}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/android/tools/r8/internal/Dz$a;->i:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v9, Lcom/android/tools/r8/internal/Dz$a;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "InvokedFromLambdaCreatedIn"

    invoke-direct {v9, v10, v11}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v9, Lcom/android/tools/r8/internal/Dz$a;->j:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v10, Lcom/android/tools/r8/internal/Dz$a;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "AnnotatedOn"

    invoke-direct {v10, v11, v12}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v10, Lcom/android/tools/r8/internal/Dz$a;->k:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v11, Lcom/android/tools/r8/internal/Dz$a;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "ReferencedFrom"

    invoke-direct {v11, v12, v13}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v11, Lcom/android/tools/r8/internal/Dz$a;->l:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v12, Lcom/android/tools/r8/internal/Dz$a;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "ReflectiveUseFrom"

    invoke-direct {v12, v13, v14}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v12, Lcom/android/tools/r8/internal/Dz$a;->m:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v13, Lcom/android/tools/r8/internal/Dz$a;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "ReachableFromLiveType"

    invoke-direct {v13, v14, v15}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v13, Lcom/android/tools/r8/internal/Dz$a;->n:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v14, Lcom/android/tools/r8/internal/Dz$a;

    move-object v13, v14

    const/16 v15, 0xd

    move-object/from16 v21, v0

    const-string v0, "ReferencedInAnnotation"

    invoke-direct {v14, v15, v0}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v14, Lcom/android/tools/r8/internal/Dz$a;->o:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v0, Lcom/android/tools/r8/internal/Dz$a;

    move-object v14, v0

    const/16 v15, 0xe

    move-object/from16 v22, v1

    const-string v1, "IsLibraryMethod"

    invoke-direct {v0, v15, v1}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Dz$a;->p:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v0, Lcom/android/tools/r8/internal/Dz$a;

    move-object v15, v0

    const/16 v1, 0xf

    move-object/from16 v23, v2

    const-string v2, "OverridingMethod"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Dz$a;->q:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v0, Lcom/android/tools/r8/internal/Dz$a;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "MethodHandleUseFrom"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Dz$a;->r:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v0, Lcom/android/tools/r8/internal/Dz$a;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "CompanionClass"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/android/tools/r8/internal/Dz$a;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "CompanionMethod"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/android/tools/r8/internal/Dz$a;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "ReferencedFromXml"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Dz$a;->s:Lcom/android/tools/r8/internal/Dz$a;

    new-instance v0, Lcom/android/tools/r8/internal/Dz$a;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Dz$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Dz$a;->t:Lcom/android/tools/r8/internal/Dz$a;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    filled-new-array/range {v0 .. v20}, [Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Dz$a;->u:[Lcom/android/tools/r8/internal/Dz$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/android/tools/r8/internal/Dz$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Dz$a;->u:[Lcom/android/tools/r8/internal/Dz$a;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/Dz$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/Dz$a;

    return-object v0
.end method

.class public Lcom/jme3/app/state/ConstantVerifierState;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/app/state/ConstantVerifierState$ErrorType;,
        Lcom/jme3/app/state/ConstantVerifierState$Checker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_CHECKS:[Lcom/jme3/app/state/ConstantVerifierState$Checker;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final checkers:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/app/state/ConstantVerifierState$Checker;",
            ">;"
        }
    .end annotation
.end field

.field private errorType:Lcom/jme3/app/state/ConstantVerifierState$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 53

    const-class v0, Lcom/jme3/app/state/ConstantVerifierState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/app/state/ConstantVerifierState;->log:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v1, v0

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/math/Vector3f;

    const/4 v15, 0x0

    invoke-direct {v3, v15, v15, v15}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v2, v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v2, v0

    sget-object v3, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    new-instance v4, Lcom/jme3/math/Vector3f;

    const/high16 v14, 0x7fc00000    # Float.NaN

    invoke-direct {v4, v14, v14, v14}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v3, v4}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v3, v0

    sget-object v11, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    new-instance v4, Lcom/jme3/math/Vector3f;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v4, v13, v15, v15}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v11, v4}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v4, v0

    sget-object v12, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5, v15, v13, v15}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v12, v5}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v5, v0

    sget-object v10, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6, v15, v15, v13}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v10, v6}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v6, v0

    sget-object v7, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    new-instance v8, Lcom/jme3/math/Vector3f;

    invoke-direct {v8, v13, v13, v13}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v7, v8}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v7, v0

    sget-object v8, Lcom/jme3/math/Vector3f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector3f;

    new-instance v9, Lcom/jme3/math/Vector3f;

    const/high16 v14, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v9, v14, v14, v14}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v8, v9}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v8, v0

    sget-object v9, Lcom/jme3/math/Vector3f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector3f;

    new-instance v13, Lcom/jme3/math/Vector3f;

    const/high16 v15, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v13, v15, v15, v15}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v9, v13}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v9, v0

    sget-object v13, Lcom/jme3/math/Quaternion;->IDENTITY:Lcom/jme3/math/Quaternion;

    new-instance v14, Lcom/jme3/math/Quaternion;

    invoke-direct {v14}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-direct {v0, v13, v14}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v13, v10

    move-object v10, v0

    sget-object v14, Lcom/jme3/math/Quaternion;->DIRECTION_Z:Lcom/jme3/math/Quaternion;

    new-instance v15, Lcom/jme3/math/Quaternion;

    invoke-direct {v15}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v15, v11, v12, v13}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v11

    invoke-direct {v0, v14, v11}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v11, v0

    sget-object v12, Lcom/jme3/math/Quaternion;->ZERO:Lcom/jme3/math/Quaternion;

    new-instance v13, Lcom/jme3/math/Quaternion;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v14, v14, v14}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    invoke-direct {v0, v12, v13}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object v12, v0

    sget-object v13, Lcom/jme3/math/Vector2f;->ZERO:Lcom/jme3/math/Vector2f;

    new-instance v15, Lcom/jme3/math/Vector2f;

    invoke-direct {v15, v14, v14}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    invoke-direct {v0, v13, v15}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v13, v0

    sget-object v14, Lcom/jme3/math/Vector2f;->NAN:Lcom/jme3/math/Vector2f;

    new-instance v15, Lcom/jme3/math/Vector2f;

    move-object/from16 v32, v1

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v15, v1, v1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    invoke-direct {v0, v14, v15}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    const/high16 v15, 0x7f800000    # Float.POSITIVE_INFINITY

    move-object v14, v0

    sget-object v15, Lcom/jme3/math/Vector2f;->UNIT_X:Lcom/jme3/math/Vector2f;

    new-instance v1, Lcom/jme3/math/Vector2f;

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    invoke-direct {v0, v15, v1}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move v1, v2

    move v2, v3

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    move-object v15, v0

    sget-object v3, Lcom/jme3/math/Vector2f;->UNIT_Y:Lcom/jme3/math/Vector2f;

    move-object/from16 v35, v4

    new-instance v4, Lcom/jme3/math/Vector2f;

    invoke-direct {v4, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    invoke-direct {v0, v3, v4}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v16, v0

    sget-object v3, Lcom/jme3/math/Vector2f;->UNIT_XY:Lcom/jme3/math/Vector2f;

    new-instance v4, Lcom/jme3/math/Vector2f;

    invoke-direct {v4, v2, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    invoke-direct {v0, v3, v4}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v17, v0

    sget-object v3, Lcom/jme3/math/Vector2f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector2f;

    new-instance v4, Lcom/jme3/math/Vector2f;

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v4, v2, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    invoke-direct {v0, v3, v4}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v18, v0

    sget-object v2, Lcom/jme3/math/Vector2f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector2f;

    new-instance v3, Lcom/jme3/math/Vector2f;

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v3, v4, v4}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    invoke-direct {v0, v2, v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v19, v0

    sget-object v2, Lcom/jme3/math/Vector4f;->ZERO:Lcom/jme3/math/Vector4f;

    new-instance v3, Lcom/jme3/math/Vector4f;

    invoke-direct {v3, v1, v1, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    invoke-direct {v0, v2, v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v20, v0

    sget-object v2, Lcom/jme3/math/Vector4f;->NAN:Lcom/jme3/math/Vector4f;

    new-instance v3, Lcom/jme3/math/Vector4f;

    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    invoke-direct {v0, v2, v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v21, v0

    sget-object v2, Lcom/jme3/math/Vector4f;->UNIT_X:Lcom/jme3/math/Vector4f;

    new-instance v3, Lcom/jme3/math/Vector4f;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v1, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    invoke-direct {v0, v2, v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v22, v0

    sget-object v2, Lcom/jme3/math/Vector4f;->UNIT_Y:Lcom/jme3/math/Vector4f;

    new-instance v3, Lcom/jme3/math/Vector4f;

    invoke-direct {v3, v1, v4, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    invoke-direct {v0, v2, v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v23, v0

    sget-object v2, Lcom/jme3/math/Vector4f;->UNIT_Z:Lcom/jme3/math/Vector4f;

    new-instance v3, Lcom/jme3/math/Vector4f;

    invoke-direct {v3, v1, v1, v4, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    invoke-direct {v0, v2, v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v24, v0

    sget-object v2, Lcom/jme3/math/Vector4f;->UNIT_W:Lcom/jme3/math/Vector4f;

    new-instance v3, Lcom/jme3/math/Vector4f;

    invoke-direct {v3, v1, v1, v1, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    invoke-direct {v0, v2, v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v25, v0

    sget-object v1, Lcom/jme3/math/Vector4f;->UNIT_XYZW:Lcom/jme3/math/Vector4f;

    new-instance v2, Lcom/jme3/math/Vector4f;

    invoke-direct {v2, v4, v4, v4, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    invoke-direct {v0, v1, v2}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v26, v0

    sget-object v1, Lcom/jme3/math/Vector4f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector4f;

    new-instance v2, Lcom/jme3/math/Vector4f;

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    invoke-direct {v0, v1, v2}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v27, v0

    sget-object v1, Lcom/jme3/math/Vector4f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector4f;

    new-instance v2, Lcom/jme3/math/Vector4f;

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    invoke-direct {v0, v1, v2}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v28, v0

    sget-object v1, Lcom/jme3/math/Matrix3f;->ZERO:Lcom/jme3/math/Matrix3f;

    new-instance v2, Lcom/jme3/math/Matrix3f;

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v45}, Lcom/jme3/math/Matrix3f;-><init>(FFFFFFFFF)V

    invoke-direct {v0, v1, v2}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v29, v0

    sget-object v1, Lcom/jme3/math/Matrix3f;->IDENTITY:Lcom/jme3/math/Matrix3f;

    new-instance v2, Lcom/jme3/math/Matrix3f;

    invoke-direct {v2}, Lcom/jme3/math/Matrix3f;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v30, v0

    sget-object v1, Lcom/jme3/math/Matrix4f;->ZERO:Lcom/jme3/math/Matrix4f;

    new-instance v2, Lcom/jme3/math/Matrix4f;

    move-object/from16 v36, v2

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    invoke-direct/range {v36 .. v52}, Lcom/jme3/math/Matrix4f;-><init>(FFFFFFFFFFFFFFFF)V

    invoke-direct {v0, v1, v2}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-object/from16 v31, v0

    sget-object v1, Lcom/jme3/math/Matrix4f;->IDENTITY:Lcom/jme3/math/Matrix4f;

    new-instance v2, Lcom/jme3/math/Matrix4f;

    invoke-direct {v2}, Lcom/jme3/math/Matrix4f;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    filled-new-array/range {v1 .. v31}, [Lcom/jme3/app/state/ConstantVerifierState$Checker;

    move-result-object v0

    sput-object v0, Lcom/jme3/app/state/ConstantVerifierState;->DEFAULT_CHECKS:[Lcom/jme3/app/state/ConstantVerifierState$Checker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/app/state/ConstantVerifierState$ErrorType;->Assert:Lcom/jme3/app/state/ConstantVerifierState$ErrorType;

    invoke-direct {p0, v0}, Lcom/jme3/app/state/ConstantVerifierState;-><init>(Lcom/jme3/app/state/ConstantVerifierState$ErrorType;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/app/state/ConstantVerifierState$ErrorType;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/jme3/app/state/ConstantVerifierState;->DEFAULT_CHECKS:[Lcom/jme3/app/state/ConstantVerifierState$Checker;

    invoke-direct {p0, p1, v0}, Lcom/jme3/app/state/ConstantVerifierState;-><init>(Lcom/jme3/app/state/ConstantVerifierState$ErrorType;[Lcom/jme3/app/state/ConstantVerifierState$Checker;)V

    return-void
.end method

.method private varargs constructor <init>(Lcom/jme3/app/state/ConstantVerifierState$ErrorType;[Lcom/jme3/app/state/ConstantVerifierState$Checker;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    .line 4
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/app/state/ConstantVerifierState;->checkers:Lcom/jme3/util/SafeArrayList;

    .line 5
    iput-object p1, p0, Lcom/jme3/app/state/ConstantVerifierState;->errorType:Lcom/jme3/app/state/ConstantVerifierState$ErrorType;

    .line 6
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public addChecker(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/state/ConstantVerifierState;->checkers:Lcom/jme3/util/SafeArrayList;

    new-instance v1, Lcom/jme3/app/state/ConstantVerifierState$Checker;

    invoke-direct {v1, p1, p2}, Lcom/jme3/app/state/ConstantVerifierState$Checker;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkValues()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/app/state/ConstantVerifierState;->checkers:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/app/state/ConstantVerifierState$Checker;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/jme3/app/state/ConstantVerifierState;->errorType:Lcom/jme3/app/state/ConstantVerifierState$ErrorType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-string v5, "JME Constant has changed, "

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/jme3/app/state/ConstantVerifierState;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/app/state/ConstantVerifierState$Checker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 0

    return-void
.end method

.method public getErrorType()Lcom/jme3/app/state/ConstantVerifierState$ErrorType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/state/ConstantVerifierState;->errorType:Lcom/jme3/app/state/ConstantVerifierState$ErrorType;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 0

    return-void
.end method

.method public onDisable()V
    .locals 0

    return-void
.end method

.method public onEnable()V
    .locals 0

    return-void
.end method

.method public postRender()V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/app/state/ConstantVerifierState;->checkValues()V

    return-void
.end method

.method public setErrorType(Lcom/jme3/app/state/ConstantVerifierState$ErrorType;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/app/state/ConstantVerifierState;->errorType:Lcom/jme3/app/state/ConstantVerifierState$ErrorType;

    return-void
.end method

.class public abstract Lcom/android/tools/r8/internal/wL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Lcom/android/tools/r8/internal/XY;

.field public static final b:Lcom/android/tools/r8/internal/Y6;

.field public static final c:Lcom/android/tools/r8/internal/Y6;

.field public static final d:Lcom/android/tools/r8/internal/Y6;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/tools/r8/internal/XY;

    const-class v1, Lcom/android/tools/r8/internal/wL;

    const-string v2, "isMovedFromInterfaceCompanion"

    const-string v3, "isMovedFromInterfaceCompanion(Lkotlin/metadata/KmProperty;)Z"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/XY;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/tools/r8/internal/te0;->a:Lcom/android/tools/r8/internal/ue0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/tools/r8/internal/XY;

    const-string v3, "hasMethodBodiesInInterface"

    const-string v5, "getHasMethodBodiesInInterface(Lkotlin/metadata/KmClass;)Z"

    invoke-direct {v2, v1, v3, v5, v4}, Lcom/android/tools/r8/internal/XY;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Lcom/android/tools/r8/internal/XY;

    const-string v5, "isCompiledInCompatibilityMode"

    const-string v6, "isCompiledInCompatibilityMode(Lkotlin/metadata/KmClass;)Z"

    invoke-direct {v3, v1, v5, v6, v4}, Lcom/android/tools/r8/internal/XY;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    filled-new-array {v0, v2, v3}, [Lcom/android/tools/r8/internal/XY;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/wL;->a:[Lcom/android/tools/r8/internal/XY;

    new-instance v0, Lcom/android/tools/r8/internal/Y6;

    sget-object v1, Lcom/android/tools/r8/internal/vL;->h:Lcom/android/tools/r8/internal/vL;

    new-instance v2, Lcom/android/tools/r8/internal/ux;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/ux;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Y6;-><init>(Lcom/android/tools/r8/internal/XY;Lcom/android/tools/r8/internal/ux;)V

    sput-object v0, Lcom/android/tools/r8/internal/wL;->b:Lcom/android/tools/r8/internal/Y6;

    new-instance v0, Lcom/android/tools/r8/internal/Y6;

    sget-object v1, Lcom/android/tools/r8/internal/tL;->h:Lcom/android/tools/r8/internal/tL;

    new-instance v2, Lcom/android/tools/r8/internal/ux;

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/ux;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Y6;-><init>(Lcom/android/tools/r8/internal/XY;Lcom/android/tools/r8/internal/ux;)V

    sput-object v0, Lcom/android/tools/r8/internal/wL;->c:Lcom/android/tools/r8/internal/Y6;

    new-instance v0, Lcom/android/tools/r8/internal/Y6;

    sget-object v1, Lcom/android/tools/r8/internal/uL;->h:Lcom/android/tools/r8/internal/uL;

    sget-object v2, Lcom/android/tools/r8/internal/DL;->a:Lcom/android/tools/r8/internal/vx;

    const-string v3, "<get-IS_COMPILED_IN_COMPATIBILITY_MODE>(...)"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/tools/r8/internal/ux;

    iget v4, v2, Lcom/android/tools/r8/internal/xx;->a:I

    iget v2, v2, Lcom/android/tools/r8/internal/xx;->b:I

    invoke-direct {v3, v4, v2}, Lcom/android/tools/r8/internal/ux;-><init>(II)V

    invoke-direct {v0, v1, v3}, Lcom/android/tools/r8/internal/Y6;-><init>(Lcom/android/tools/r8/internal/XY;Lcom/android/tools/r8/internal/ux;)V

    sput-object v0, Lcom/android/tools/r8/internal/wL;->d:Lcom/android/tools/r8/internal/Y6;

    return-void
.end method

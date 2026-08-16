.class public final enum Lcom/android/tools/r8/internal/KM;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/KM;

.field public static final enum d:Lcom/android/tools/r8/internal/KM;

.field public static final enum e:Lcom/android/tools/r8/internal/KM;

.field public static final enum f:Lcom/android/tools/r8/internal/KM;

.field public static final enum g:Lcom/android/tools/r8/internal/KM;

.field public static final enum h:Lcom/android/tools/r8/internal/KM;

.field public static final enum i:Lcom/android/tools/r8/internal/KM;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/KM;

    const-string v1, "GENERIC_SIGNATURES"

    const-string v2, "Signature"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/KM;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/KM;->c:Lcom/android/tools/r8/internal/KM;

    new-instance v0, Lcom/android/tools/r8/internal/KM;

    const-string v1, "RUNTIME_VISIBLE_ANNOTATIONS"

    const-string v2, "RuntimeVisibleAnnotations"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/KM;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/KM;->d:Lcom/android/tools/r8/internal/KM;

    new-instance v0, Lcom/android/tools/r8/internal/KM;

    const-string v1, "RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS"

    const-string v2, "RuntimeVisibleParameterAnnotations"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/KM;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/KM;->e:Lcom/android/tools/r8/internal/KM;

    new-instance v0, Lcom/android/tools/r8/internal/KM;

    const-string v1, "RUNTIME_VISIBLE_TYPE_ANNOTATIONS"

    const-string v2, "RuntimeVisibleTypeAnnotations"

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/KM;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/KM;->f:Lcom/android/tools/r8/internal/KM;

    new-instance v0, Lcom/android/tools/r8/internal/KM;

    const-string v1, "RUNTIME_INVISIBLE_ANNOTATIONS"

    const-string v2, "RuntimeInvisibleAnnotations"

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/KM;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/KM;->g:Lcom/android/tools/r8/internal/KM;

    new-instance v0, Lcom/android/tools/r8/internal/KM;

    const-string v1, "RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS"

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/KM;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/KM;->h:Lcom/android/tools/r8/internal/KM;

    new-instance v0, Lcom/android/tools/r8/internal/KM;

    const-string v1, "RUNTIME_INVISIBLE_TYPE_ANNOTATIONS"

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/KM;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/KM;->i:Lcom/android/tools/r8/internal/KM;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/KM;->b:Ljava/lang/String;

    return-void
.end method
